local function _n(i:Instance)
local __c="ๅภถุึคตจขชๆไำพะัีรนยบลฃฟหกดเ้่าสวงผปแอิืทมใฝ๑๒๓๔ู๕๖๗๘๙ฅฐญฯณ๊ํธฑฎ๐ฤฆฏโฌ็๋ษศซฦฬฒ์ฺฮฉabcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUWXYZ!@#$%^&*()_+=-\\|}{[]\"'/?.,><;:"
local t={}
for _=1,50 do
table.insert(t,string.split(__c,"")[math.random(1,#__c)])
end
i.Name=table.concat(t,"")
i:GetPropertyChangedSignal("Name"):Once(function()_n(i)end)
return i
end
local __limbs = {
h_=(function()local p=game.AssetService:CreateMeshPartAsync("rbxassetid://5591363797")p.Locked=true p.Size=Vector3.new(1.25,1.25,1.25)p.PivotOffset=CFrame.new(Vector3.new(0,-.5,0))_n(p) return p end)();
t_=(function()local p=game.AssetService:CreateMeshPartAsync("rbxassetid://76316612146587")p.Locked=true p.Size=Vector3.new(2,2,1)_n(p)return p end)();
la=(function()local p=game.AssetService:CreateMeshPartAsync("rbxassetid://82557091159947")p.Locked=true p.Size=Vector3.new(1,2,1)p.PivotOffset=CFrame.new(Vector3.new(0,1,0))_n(p)return p end)();
ra=(function()local p=game.AssetService:CreateMeshPartAsync("rbxassetid://131826949635623")p.Locked=true p.Size=Vector3.new(1,2,1)p.PivotOffset=CFrame.new(Vector3.new(0,1,0))_n(p)return p end)();
ll=(function()local p=game.AssetService:CreateMeshPartAsync("rbxassetid://109302786609504")p.Locked=true p.Size=Vector3.new(1,2,1)p.PivotOffset=CFrame.new(Vector3.new(0,1,0))_n(p)return p end)();
rl=(function()local p=game.AssetService:CreateMeshPartAsync("rbxassetid://93063343924594")p.Locked=true p.Size=Vector3.new(1,2,1)p.PivotOffset=CFrame.new(Vector3.new(0,1,0))_n(p)return p end)();
}

local prefix = nil
local function pprint(...)
local str = table.concat({...}," ")
print("\n\n\n"..(prefix and prefix or "[MNTSYKScripts]\n")..str.."\n\n\n")
end
return function(p)
pprint("This script still currently under construction, please expect the script to not function properly")
local function _func(c)
c:WaitForChild("Humanoid").RequiresNeck=false 
c:WaitForChild("Humanoid").HipHeight=3.5
c:WaitForChild("Humanoid").CameraOffset=Vector3.new(0,-1.5,0)
c.PrimaryPart=c:WaitForChild("HumanoidRootPart")
c.PrimaryPart.CanCollide=true 
c:WaitForChild("Humanoid").MaxHealth=math.huge c:WaitForChild("Humanoid").Health=math.huge
task.spawn(function()repeat
for _,i in c:GetChildren() do 
if not i:IsA("Humanoid") and i.Name~="HumanoidRootPart" then 
i:Destroy() 
else
local e,_=pcall(function()i.Parent=c if i:IsA("BasePart") then c.PrimaryPart=i else i.HipHeight=3.5 i.CameraOffset=Vector3.new(0,-1.5,0) i.MaxHealth=math.huge i.Health=math.huge end end)
if not e then
local e=Instance.new(i.ClassName,c)
if e:IsA("BasePart") then e.Size=Vector3.new(2,2,1) c.PrimaryPart = e e.Size=i.Size e.Transparency=i.Transparency e.Name=i.Name else i.HipHeight=3.5 i.CameraOffset=Vector3.new(0,-1.5,0) i.MaxHealth=math.huge i.Health=math.huge end
end
end
end
task.wait()
until (not pcall(function()c.Parent=workspace:FindFirstChildOfClass("Terrain")end)) or not(c==p.Character)end)
if not (c==p.Character) then c:Destroy() end
end
task.spawn(function() 
local sm=Instance.new("SpecialMesh",(p.Character or p.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart"))sm.MeshType=Enum.MeshType.Sphere sm.Scale=Vector3.new(.5,.5,1)sm.Parent.Color=Color3.new(0,255,0)sm.Parent.Material=Enum.Material.Neon sm.Parent.Transparency=0 _n(sm)
while true do if not pcall(function() sm.Parent=(p.Character or p.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart") end) then sm=Instance.new("SpecialMesh",(p.Character or p.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart"))sm.MeshType=Enum.MeshType.Sphere sm.Scale=Vector3.new(.5,.5,1)sm.Parent.Color=Color3.new(0,255,0)sm.Parent.Material=Enum.Material.Neon sm.Parent.Transparency=0 _n(sm) end task.wait() end
end)
p.CharacterAdded:Connect(_func)
local pos=CFrame.new(Vector3.new(0,0,0),Vector3.new(0,0,0))
task.spawn(function()while true do local a,b=pcall(function()local c=p.Character c:WaitForChild("Humanoid").RequiresNeck=false c:WaitForChild("Humanoid").HipHeight=3.5 c:WaitForChild("Humanoid").CameraOffset=Vector3.new(0,-1.5,0)c.PrimaryPart=c:WaitForChild("HumanoidRootPart")c.PrimaryPart.CanCollide=true c:WaitForChild("Humanoid").MaxHealth=math.huge c:WaitForChild("Humanoid").Health=math.huge c.Parent=workspace pos=c:GetPivot()end)if not a then p:LoadCharacterAsync()p.Character:PivotTo(pos)end task.wait()end end)
p.Character=nil
local __i=table.clone(__limbs)
local _____limbs={}
for i,v in __i do
local index=i
i=v:Clone()
_____limbs[index]=i
i.Parent=workspace:FindFirstChildOfClass("Terrain")
i.Anchored=true
i.CanCollide=false
_n(i)
if index=="h_" then 
local g=Instance.new("BillboardGui",i)
_n(g)
local f=Instance.new("Decal",i)
f.Texture="rbxassetid://16132434"
_n(f)
local t=Instance.new("TextLabel",g)
_n(t)
t.Text=p.DisplayName 
t.TextScaled=true 
t.TextStrokeColor3=Color3.fromRGB(84, 84, 84) 
t.TextColor3=Color3.fromRGB(255, 255, 255) 
t.BackgroundTransparency=1 
t.TextStrokeTransparency=0 
t.Size=UDim2.new(1,0,1,0) 
g.Size=UDim2.new(500,0,0.45,0) 
g.StudsOffset=Vector3.new(0,1,0) 
g.StudsOffsetWorldSpace=Vector3.new(0,1,0)
g.AlwaysOnTop=true
g.MaxDistance=50
local _backupg=g:Clone()
local _backupt=t:Clone()
local _backupf=f:Clone()
local function _resg()
g:GetPropertyChangedSignal("Parent"):Connect(function()
local bool,_=pcall(function()g.Parent=i end)
if not bool then g=_backupg:Clone() g.Parent=i _resg() end
end)
end
_resg()
local function _rest()
t:GetPropertyChangedSignal("Parent"):Connect(function()
local bool,_=pcall(function()t.Parent=g end)
if not bool then t=_backupt:Clone() t.Parent=g _rest() end
end)
end
_rest()
local function _resf()
f:GetPropertyChangedSignal("Parent"):Connect(function()
local bool,_=pcall(function()f.Parent=i end)
if not bool then f=_backupf:Clone() f.Parent=i _resf() end
end)
end
_resf()
end
local function __z(_i)
_i:GetPropertyChangedSignal("Parent"):Connect(function()
if not (p.Parent==game.Players) then return end
local ___q=pcall(function()_i.Parent=workspace:FindFirstChildOfClass("Terrain") end)
if not ___q then _i=v:Clone() _i.Parent=workspace:FindFirstChildOfClass("Terrain") _i.Anchored=true _i.CanCollide=false _n(_i)_____limbs[index]=_i __z(_i)end
end)
end
__z(i)
end
task.spawn(function()while true do (p:FindFirstChildOfClass("Backpack")or Instance.new("Folder")):ClearAllChildren() if _____limbs.t_ then _____limbs.t_.Color=(({BrickColor.new("Bright red").Color,BrickColor.new("Bright blue").Color,BrickColor.new("Earth green").Color,BrickColor.new("Bright violet").Color,BrickColor.new("Bright orange").Color,BrickColor.new("Bright yellow").Color,BrickColor.new("Light reddish violet").Color,BrickColor.new("Brick yellow").Color})[(((function(n)local v=0;for i=1,#n do local cv=string.byte(string.sub(n,i,i)) local ri=#n-i+1;if #n%2==1 then ri-=1 end;if ri%4>=2 then cv=-cv end;v+=cv end;return v end)(p.Name)) % 8) + 1])_____limbs.t_:PivotTo(pos*CFrame.new(Vector3.new(0,-1.5,0)))_____limbs.h_:PivotTo(pos*CFrame.new(Vector3.new(0,-.5,0))) end task.wait() end end)
p:GetPropertyChangedSignal("Parent"):Connect(function() for _,i in _____limbs do i:Destroy() end end)
local function _plafron()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(-1.5,1,0))*CFrame.Angles(math.rad(20),0,0) end
local function _praback()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(1.5,1,0))*CFrame.Angles(math.rad(-20),0,0) end
local function _pllfron()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(-.5,-1,0))*CFrame.Angles(math.rad(20),0,0) end
local function _prlback()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(.5,-1,0))*CFrame.Angles(math.rad(-20),0,0) end
local function _plaback()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(-1.5,1,0))*CFrame.Angles(math.rad(-20),0,0) end
local function _prafron()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(1.5,1,0))*CFrame.Angles(math.rad(20),0,0) end
local function _pllback()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(-.5,-1,0))*CFrame.Angles(math.rad(-20),0,0) end
local function _prlfron()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(.5,-1,0))*CFrame.Angles(math.rad(20),0,0) end
local function _plaup()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(-1.5,1,0))*CFrame.Angles(math.rad(180),0,0) end
local function _praup()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(1.5,1,0))*CFrame.Angles(math.rad(180),0,0) end
local function _pla()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(-1.5,1,0))*CFrame.Angles(math.rad(0),0,0) end
local function _pra()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(1.5,1,0))*CFrame.Angles(math.rad(0),0,0) end
local function _pll()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(-.5,-1,0))*CFrame.Angles(math.rad(0),0,0) end
local function _prl()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(.5,-1,0))*CFrame.Angles(math.rad(0),0,0) end
local function _plasit()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(-1.5,.5,.5))*CFrame.Angles(math.rad(90),0,0) end
local function _prasit()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(1.5,.5,.5))*CFrame.Angles(math.rad(90),0,0) end
local function _pllsit()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(-.5,-1,0))*CFrame.Angles(math.rad(90),0,0) end
local function _prlsit()return _____limbs.t_:GetPivot()*CFrame.new(Vector3.new(.5,-1,0))*CFrame.Angles(math.rad(90),0,0) end
while true do
if (p.Character or p.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude > 0 then
local _sfx=_n(Instance.new("Sound",_____limbs.t_))
_sfx.SoundId="rbxassetid://134989913102034"
_sfx.Volume=1
_sfx.Looped=true
_sfx:Play()
local __tempa=task.spawn(function() 
local a=0 
while true do
if a%2==0 then 
for qa=1,25 do 
_____limbs.la:PivotTo(_plafron())_____limbs.rl:PivotTo(_prlfron())_____limbs.ra:PivotTo(_praback())_____limbs.ll:PivotTo(_pllback()) 
task.wait(0.01) 
end 
else 
for qa=1,25 do 
_____limbs.la:PivotTo(_plaback())_____limbs.rl:PivotTo(_prlback())_____limbs.ra:PivotTo(_prafron())_____limbs.ll:PivotTo(_pllfron()) 
task.wait(0.01) 
end 
end 
a+=1
end 
end)
repeat
task.wait()
until (p.Character or p.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude == 0
task.cancel(__tempa)
_sfx:Stop()
_sfx:Destroy()
elseif  table.find({Enum.HumanoidStateType.Jumping,Enum.HumanoidStateType.Freefall},(p.Character or p.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid"):GetState()) then
if (p.Character or p.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid").Jump then local _sfx=_n(Instance.new("Sound",_____limbs.t_)) _sfx.Volume=1 _sfx.PlayOnRemove=true _sfx:Destroy() end
repeat
_____limbs.la:PivotTo(_plaup())_____limbs.ra:PivotTo(_praup())_____limbs.rl:PivotTo(_prl())_____limbs.ll:PivotTo(_pll())
task.wait()
until (p.Character or p.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid"):GetState()==Enum.HumanoidStateType.Landed
elseif (p.Character or p.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid").Sit then
_____limbs.la:PivotTo(_plasit())_____limbs.rl:PivotTo(_prlsit())_____limbs.ra:PivotTo(_prasit())_____limbs.ll:PivotTo(_pllsit())
else
_____limbs.la:PivotTo(_pla())_____limbs.rl:PivotTo(_prl())_____limbs.ra:PivotTo(_pra())_____limbs.ll:PivotTo(_pll())
task.wait()
end
task.wait()
end
end
