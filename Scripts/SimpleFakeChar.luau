local function _n(i:Instance)
local __c="abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUWXYZ!@#$%^&*()_+=-\\|}{[]\"'/?.,><;:"
local t={}
for _=1,20 do
table.insert(t,__c[math.random(1,#__c)])
end
i.Name=table.concat(t,"")
end
local __recyclebin=Instance.new("Folder")
local __limbs = {
h_=(function()local p=Instance.new("Part",__recyclebin)p.Size=Vector3.new(2,1,1)_n(p)return p end);
t_=(function()local p=Instance.new("Part",__recyclebin)p.Size=Vector3.new(2,2,1)_n(p)return p end);
la=(function()local p=Instance.new("Part",__recyclebin)p.Size=Vector3.new(1,2,1)p.PivotOffset=CFrame.new(Vector3.new(0,-1,0))_n(p)return p end);
ra=(function()local p=Instance.new("Part",__recyclebin)p.Size=Vector3.new(1,2,1)p.PivotOffset=CFrame.new(Vector3.new(0,-1,0))_n(p)return p end);
ll=(function()local p=Instance.new("Part",__recyclebin)p.Size=Vector3.new(1,2,1)p.PivotOffset=CFrame.new(Vector3.new(0,-1,0))_n(p)return p end);
rl=(function()local p=Instance.new("Part",__recyclebin)p.Size=Vector3.new(1,2,1)p.PivotOffset=CFrame.new(Vector3.new(0,-1,0))_n(p)return p end);
}

local prefix = game.HttpService:GetAsync("https://raw.githubusercontent.com/MaybeNotTheSomeoneYK/ScriptForRblxDevelopers/refs/heads/main/UniversalAsset/Prefix.txt",true)
local function pprint(...)
  local str = table.concat({...}," ")
  print("\n\n\n"..(prefix and prefix or "[MNTSYKScripts]\n")..str.."\n\n\n")
end
return function(p)
  pprint("This script still currently under construction, please expect the script to not function properly")
  p.CharacterAdded:Connect(function(c)c.Parent=nil end)
  __i=table.clone(__limbs)
  local _____limbs={}
  for i,v in __i do
    local index=i
    i=v:Clone()
    _____limbs[index]=i
    i.Parent=workspace
    i.Anchored=false
    _n(i)
    i:SetNetworkOwner(p)
    function __z()
    i:GetPropertyChangedSignal("Parent"):Connect(function()
    local ___q=pcall(function()i.Parent=workspace end)
    if not ___q then i=v:Clone() i.Parent=workspace i.Anchored=false _n(i)i:SetNetworkOwner(p)_____limbs[index]=i __z()end)
    end
  end
  local ____ls = 
  while true do
    ls:SetAttribute("__h_",_____limbs.h_)
    ls:SetAttribute("__t_",_____limbs.t_)
    ls:SetAttribute("__la",_____limbs.la)
    ls:SetAttribute("__ra",_____limbs.ra)
    ls:SetAttribute("__ll",_____limbs.ll)
    ls:SetAttribute("__rl",_____limbs.rl)
    task.wait()
  end
end
