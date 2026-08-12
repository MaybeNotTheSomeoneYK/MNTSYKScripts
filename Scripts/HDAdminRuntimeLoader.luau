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
      \t- hd.cf:GetRankName()
      \t- hd.cf:GetRankId()
      \t- hd.cf:CheckRankExists()
      \t- hd.cmds
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
    repeat task.wait() until _G.HDAdminMain.commands
    _G.HDAdminMain.commands.bcmd = 	{
	Name = "bcmd";
	Aliases	= {"disable"};
	Prefixes = {_G.HDAdminMain.settings.Prefix};
	Rank = math.huge;
	RankLock = false;
	Loopable = false;
	Tags = {};
	Description = "";
	Contributors = {"qa"};
	Args = {"text"};
	Function = function(speaker, args)
		if args[1]=="bcmd" then return end
    	if not _G.HDAdminMain.commands[args[1]] then return end
    	_G.HDAdminMain.commands[args[1]].DisabledByOwner=true
		_G.HDAdminMain.signals.Notice:FireClient(speaker, {"HD Ruler","\""..args[1].."\" command is now disabled."})
	end;
  	UnFunction = function(speaker, args)
    	if not _G.HDAdminMain.commands[args[1]] then return end
    	_G.HDAdminMain.commands[args[1]].DisabledByOwner=false
		_G.HDAdminMain.signals.Notice:FireClient(speaker, {"HD Ruler","\""..args[1].."\" command is now enabled."})
	end;
	};
    pprint("Proceeding to give the runner top rank...")
  else
    pwarn("HD Admin already exists!, proceeding to give the runner top rank anyways...")
  end
  _G.HDAdminMain:GetModule("cf"):SetRank(p, 6, math.huge, "Perm")
end
