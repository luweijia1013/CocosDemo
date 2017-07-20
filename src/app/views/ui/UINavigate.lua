
local UINavigate = class("UINavigate", cc.load("mvc").ViewBase)

UINavigate.RESOURCE_FILENAME = "UINavigate.csb"--Frank
UINavigate.RESOURCE_BINGDING = 
{
    "button1" = {["varname"] = "login" , ["events"] = { {["event"] = "touch" , ["method"] = "onLogin"}} }
}


function UINavigate:onCreate()
    printf("resource UINavigate node = %s", tostring(self:getResourceNode()))
    
    --[[ you can create scene with following comment code instead of using csb file.
    -- add background image
    display.newSprite("HelloWorld.png")
        :move(display.center)
        :addTo(self)

    -- add HelloWorld label
    cc.Label:createWithSystemFont("Hello World", "Arial", 40)
        :move(display.cx, display.cy + 200)
        :addTo(self)
    ]]
    self.login
end

function UINavigate:onLogin(event)
    if event.name = "ended" then
        print("UINavigate:onLogin")
    end
end

return UINavigate
