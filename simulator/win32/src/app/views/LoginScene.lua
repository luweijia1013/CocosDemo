
local LoginScene = class("LoginScene", cc.load("mvc").ViewBase)

LoginScene.RESOURCE_FILENAME = "Login.csb"--Frank
LoginScene.RESOURCE_BINGDING = 
{
    "button1" = {["varname"] = "login" , ["events"] = { {["event"] = "touch" , ["method"] = "onLogin"}} }
}


function LoginScene:onCreate()
    printf("resource node = %s", tostring(self:getResourceNode()))
    
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

function LoginScene:onLogin(event)
    if event.name = "ended" then
        print("LoginScene:onLogin")
    end
end

return LoginScene
