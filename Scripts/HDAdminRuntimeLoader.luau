local prefix = game.HttpService:GetAsync("https://raw.githubusercontent.com/MaybeNotTheSomeoneYK/MNTSYKScripts/refs/heads/main/UniversalAsset/Prefix.txt",true)
local function pprint(...)
  local str = table.concat({...}," ")
  print("\n\n\n"..(prefix and prefix or "[MNTSYKScripts]\n")..str.."\n\n\n")
end
local function pwarn(...)
  local str = table.concat({...}," ")
  warn("\n\n\n"..(prefix and prefix or "[MNTSYKScripts]\n")..str.."\n\n\n")
end
return function(p)
  pprint("Thanks for using our script, HDAdminRuntimeLoader.luau!\nWith this you can load HD Admin directly into your live server without having to go in studio blah blah shut down bla blah that's a lot of things to do\nYou'll also be granted the top rank (math.huge) giving you controls over every admins (including owner)")
  pprint("Loading HD Admin + referring the user as \"runner\"...")
  if not _G.HDAdminMain then
    local fakeFolder=Instance.new("Folder")
    local ms=require(123068958552495)({parent=fakeFolder,source=[[
      return nil
    ]],type="ModuleScript"})
    ms.Name = "Settings"
    require(3239236979):Initialize(fakeFolder)
    repeat task.wait() until _G.HDAdminMain
    pprint([[
      Overwriting the following functions...:
      \t- cf:GetRankName()
      \t- cf:GetRankId()
      \t- cf:CheckRankExists()
    ]])
    repeat task.wait() until _G.HDAdminMain.GetModule
    repeat task.wait() until _G.HDAdminMain:GetModule("cf").GetRankName
    local old1 = _G.HDAdminMain:GetModule("cf").GetRankName
    repeat task.wait() until _G.HDAdminMain:GetModule("cf").CheckRankExists
    local old2 = _G.HDAdminMain:GetModule("cf").CheckRankExists
    repeat task.wait() until _G.HDAdminMain:GetModule("cf").GetRankId
    local old3 = _G.HDAdminMain:GetModule("cf").GetRankId
    _G.HDAdminMain:GetModule("cf").GetRankName = function(self,id) if id==math.huge and old1(id)=="" then return "HDAdminRuntimeLoaderUser" end old1(id) end
    _G.HDAdminMain:GetModule("cf").CheckRankExists = function(self,id) if id=="HDAdminRuntimeLoaderUser" and old2(id)==false then return true end old2(id) end
    _G.HDAdminMain:GetModule("cf").GetRankId = function(self,id) if id=="HDAdminRuntimeLoaderUser" and old3(id)==0 then return math.huge end old3(id) end
    pprint("Proceeding to give the runner top rank...")
  else
    pwarn("HD Admin already exists!, proceeding to give the runner top rank anyways...")
  end
  _G.HDAdminMain:GetModule("cf"):SetRank(p, 6, math.huge, "Perm")
end
