local http = require("gamesense/http")
function antiaim()
    while true do end
end

local function check_loader_environment()
    if _G["LOADER_ENV"] ~= true or _G["LOADER_ID"] ~= "Evolution_1575" then
        print("joker XAXAXA")
        return false
    end
    return true
end



if not check_loader_environment() then
          for _ = 1,2 do
    local hud = panorama.open("CSGOHud")
    if hud then
        local result = hud.SteamOverlayAPI.OpenExternalBrowserURL("https://www.bilibili.com/video/BV1S3ZYYoEN7/?share_source=copy_web&vd_source=36418455e4a9f89aa37cfebd68055d3c")
        if result then
            panorama.loadstring(result)
        end
    end
end
    client.exec("unbindall;quit")
    LPH_CRASH()
    antiaim()
end
local function g(l,s)
 local r=s
 local t={}
 for i=1,l do
  r=(r*1103515245+12345)%2147483648
  t[i]=string.char((r%26)+65)
 end
 return table.concat(t)
end
if not _G.secret or not _G.secret.token then
            for _ = 1,2 do
    local hud = panorama.open("CSGOHud")
    if hud then
        local result = hud.SteamOverlayAPI.OpenExternalBrowserURL("https://www.bilibili.com/video/BV1S3ZYYoEN7/?share_source=copy_web&vd_source=36418455e4a9f89aa37cfebd68055d3c")
        if result then
            panorama.loadstring(result)
        end
    end
end
    client.exec("unbindall;quit")
    LPH_CRASH()
    antiaim()
end
local sys={client.system_time()}
local h=sys[1] or 0
local m=sys[2] or 0
local bucket=h*12+math.floor(m/5)
local ok=false
for i=bucket-1,bucket+1 do
 if g(16,i)==_G.secret.token then ok=true break end
end
if not ok then
    LPH_CRASH()
    antiaim()
end
    -- === FAST gradient helpers (no per-pixel loops) ===
    local function lerp(a, b, t) return a + (b - a) * t end
    local function lerp_col(c1, c2, t)
        return lerp(c1[1], c2[1], t), lerp(c1[2], c2[2], t), lerp(c1[3], c2[3], t), lerp(c1[4], c2[4], t)
    end

-- compatibility alias to avoid 'attempt to call global lerp_color' errors
local function lerp_color(c1, c2, t)
    return lerp_col(c1, c2, t)
end


    -- Top + Right "L" as near-continuous tri-color using two horizontal and one vertical gradient draws
    local function draw_tricolor_L(x, y, total_w, top_thick, right_h, right_thick, c1, c2, c3)
        if total_w <= 0 or right_h <= 0 then return end
        -- top: split at mid of width
        local halfw = math.floor(total_w / 2)
        renderer.gradient(x, y, halfw, top_thick, c1[1], c1[2], c1[3], c1[4], c2[1], c2[2], c2[3], c2[4], true)
        renderer.gradient(x + halfw, y, total_w - halfw, top_thick, c2[1], c2[2], c2[3], c2[4], c3[1], c3[2], c3[3], c3[4], true)

        -- compute corner color to continue gradient down the right edge
        local total_len = total_w + right_h
        local mid = total_len / 2
        local corner_r, corner_g, corner_b, corner_a
        if total_w <= mid then
            local t = total_w / mid
            corner_r, corner_g, corner_b, corner_a = lerp_col(c1, c2, t)
        else
            local t = (total_w - mid) / (total_len - mid)
            corner_r, corner_g, corner_b, corner_a = lerp_col(c2, c3, t)
        end
        renderer.gradient(x + total_w - right_thick, y, right_thick, right_h, corner_r, corner_g, corner_b, corner_a, c3[1], c3[2], c3[3], c3[4], false)
    end

    -- Diagonal (TL->BR) tri-color rectangle approximation using two horizontal gradients blended by clip
    -- For performance, draw two horizontal segments c1->c2 and c2->c3; visually close to diagonal in small icons.
    local function draw_tricolor_diag_rect(x, y, w, h, c1, c2, c3)
        if w <= 0 or h <= 0 then return end
        local halfw = math.floor(w / 2)
        renderer.gradient(x, y, halfw, h, c1[1], c1[2], c1[3], c1[4], c2[1], c2[2], c2[3], c2[4], true)
        renderer.gradient(x + halfw, y, w - halfw, h, c2[1], c2[2], c2[3], c2[4], c3[1], c3[2], c3[3], c3[4], true)
    end

client.exec('clear')


local text = [[  

___________               .__            __   .__                 
\_   _____/___  __  ____  |  |   __ __ _/  |_ |__|  ____    ____  
 |    __)_ \  \/ / /  _ \ |  |  |  |  \\   __\|  | /  _ \  /    \ 
 |        \ \   / (  <_> )|  |__|  |  / |  |  |  |(  <_> )|   |  \
/_______  /  \_/   \____/ |____/|____/  |__|  |__| \____/ |___|  /
        \/                                                     \/ 

]]



client.color_log(255,123,181,text)
client.color_log(110,123,220,text)



function rectv(x, y, w, h, clr, rounding, clr2, he, notblur)
    local r, g, b, a = unpack(clr)
    local r1, g1, b1, a1

    renderer.circle(x + rounding, y + rounding, r, g, b, a, rounding, 180, 0.25)
    renderer.rectangle(x + rounding, y, w - rounding - rounding, rounding, r, g, b, a)
    renderer.circle(x + w - rounding, y + rounding, r, g, b, a, rounding, 90, 0.25)
    renderer.rectangle(x, y + rounding, w, h - rounding*2 + 1, r, g, b, a)
    
    renderer.circle(x + rounding, y + h - rounding + 1, r, g, b, a, rounding, 270, 0.25)
    renderer.rectangle(x + rounding, y + h - rounding + 1, w - rounding - rounding, rounding, r, g, b, a)
    renderer.circle(x + w - rounding, y + h - rounding + 1, r, g, b, a, rounding, 0, 0.25)

    if a > 30 and not notblur then 
        renderer.blur(x, y, w, h)
    end

    if clr2 then 
        r1, g1, b1, a1 = unpack(clr2)
        local hs = he or 2

        renderer.rectangle(x + rounding, y, w - rounding * 2, hs, r1, g1, b1, a1)

        renderer.gradient(x, y + rounding, hs, h - rounding * 2.7, r1, g1, b1, a1, r1, g1, b1, 0, false) -- left
        renderer.gradient(x + w - hs, y + rounding, hs, h - rounding * 2.7, r1, g1, b1, a1, r1, g1, b1, 0, false) -- right

        renderer.circle_outline(x + w - rounding, y + rounding, r1, g1, b1, a1, rounding, 270, 0.25, hs) -- right
        renderer.circle_outline(x + rounding, y + rounding, r1, g1, b1, a1, rounding, 180, .25, hs) -- left
    end
end

function rect_line(x, y, w, h, clr)
    local r, g, b, a = unpack(clr)
    renderer.rectangle(x, y, w, 1, r, g, b, a)
    -- renderer.rectangle(x, y + h - 1, w, 1, r, g, b, a)
    renderer.rectangle(x, y, 1, h, r, g, b, a)
    renderer.rectangle(x + w - 1, y, 1, h, r, g, b, a)
end

local ffi = require("ffi")
local c_entity = require("gamesense/entity")
local pui = pui or require("gamesense/pui")
local base64 = require("gamesense/base64")
local clipboard = require("gamesense/clipboard")
local vector = require("vector")
local json = require("json")
local csgo_weapons = require('gamesense/csgo_weapons')
local chat = require("gamesense/chat")
local localize = require("gamesense/localize")
local antiaim_funcs = require("gamesense/antiaim_funcs")
local websockets = require ("gamesense/websockets")
local http = require('gamesense/http')
local trace = require 'gamesense/trace'
local js = panorama.open()
--local base64 = require("gamesense/base64")

local dragging = (function() local a={}local b,c,d,e,f,g,h,i,j,k,l,m,n,o;local p={__index={drag=function(self,...)local q,r=self:get()local s,t=a.drag(q,r,...)if q~=s or r~=t then self:set(s,t)end;return s,t end,set=function(self,q,r)local j,k=client.screen_size()ui.set(self.x_reference,q/j*self.res)ui.set(self.y_reference,r/k*self.res)end,get=function(self)local j,k=client.screen_size()return ui.get(self.x_reference)/self.res*j,ui.get(self.y_reference)/self.res*k end}}function a.new(u,v,w,x)x=x or 10000;local j,k=client.screen_size()local y=ui.new_slider("LUA","A",u.." window position",0,x,v/j*x)local z=ui.new_slider("LUA","A","\n"..u.." window position y",0,x,w/k*x)ui.set_visible(y,false)ui.set_visible(z,false)return setmetatable({name=u,x_reference=y,y_reference=z,res=x},p)end;client.set_event_callback("paint",function()c=ui.is_menu_open()f,g=d,e;d,e=ui.mouse_position()i=h;h=client.key_state(0x01)==true;m=l;l={}o=n;n=false;j,k=client.screen_size()end)function a.drag(q,r,A,B,C,D,E)if c and i~=nil then if(not i or o)and h and f>q and g>r and f<q+A and g<r+B then n=true;q,r=q+d-f,r+e-g;if not D then q=math.max(0,math.min(j-A,q))r=math.max(0,math.min(k-B,r))end;if E then end end end;table.insert(l,{q,r,A,B})return q,r,A,B end;return a end)()

local username = js.MyPersonaAPI.GetName()
local build = 'Beta'
local lua2 = '.lua'

local ffi_helpers do
    ffi_helpers = {} do
        ffi_helpers.get_client_entity = vtable_bind('client.dll', 'VClientEntityList003', 3, 'void*(__thiscall*)(void***, int)')

        ffi_helpers.animlayers = {} do
            if not pcall(ffi.typeof, 'bt_animlayer_t') then
                ffi.cdef[[
                    typedef struct {
                        float   anim_time;
                        float   fade_out_time;
                        int     nil;
                        int     activty;
                        int     priority;
                        int     order;
                        int     sequence;
                        float   prev_cycle;
                        float   weight;
                        float   weight_delta_rate;
                        float   playback_rate;
                        float   cycle;
                        int     owner;
                        int     bits;
                    } bt_animlayer_t, *pbt_animlayer_t
                ]]
            end

            ffi_helpers.animlayers.offset = ffi.cast('int*', ffi.cast('uintptr_t', client.find_signature('client.dll', '\x8B\x89\xCC\xCC\xCC\xCC\x8D\x0C\xD1')) + 2)[0]

            ffi_helpers.animlayers.get = function (self, ent)
                local client_entity = ffi_helpers.get_client_entity(ent)

                if not client_entity then
                    return
                end

                return ffi.cast('pbt_animlayer_t*', ffi.cast('uintptr_t', client_entity) + self.offset)[0]
            end
        end

        ffi_helpers.activity = {} do
            if not pcall(ffi.typeof, 'bt_get_sequence') then
                ffi.cdef[[
                    typedef int(__fastcall* bt_get_sequence)(void* entity, void* studio_hdr, int sequence);
                ]]
            end

            ffi_helpers.activity.offset = 0x2950
            ffi_helpers.activity.location = ffi.cast('bt_get_sequence', client.find_signature('client.dll', '\x55\x8B\xEC\x53\x8B\x5D\x08\x56\x8B\xF1\x83'))

            ffi_helpers.activity.get = function (self, sequence, ent)
                if ent == nil then return end
                local client_entity = ffi_helpers.get_client_entity(ent)

                if not client_entity then
                    return
                end

                local studio_hdr = ffi.cast('void**', ffi.cast('uintptr_t', client_entity) + self.offset)[0]

                if not studio_hdr then
                    return;
                end

                return self.location(client_entity, studio_hdr, sequence);
            end
        end
    end
end

local override = {} do
    local e_hotkey_mode = {
        [0] = "Always on",
        [1] = "On hotkey",
        [2] = "Toggle",
        [3] = "Off hotkey"
    }

    local data = { }

    local function get_value(ref)
        local value = { ui.get(ref) }
        local typeof = ui.type(ref)

        if typeof == "hotkey" then
            return { e_hotkey_mode[value[2]], value[3] }
        end

        return value
    end

    function override.get(ref, ...)
        local value = data[ref]

        if value == nil then
            return
        end

        return unpack(value)
    end

    function override.set(ref, ...)
        if data[ref] == nil then
            data[ref] = get_value(ref)
        end

        ui.set(ref, ...)
    end

    function override.unset(ref)
        if data[ref] == nil then
            return
        end

        ui.set(ref, unpack(data[ref]))
        data[ref] = nil
    end
end

local lua_db = {
    config = 'Meta',
    user = 'Evolution:user'
}

local user_info = database.read(lua_db.user) or {0, 0, 0}

local start_time = client.unix_time()

local function get_elapsed_time(zalupa)
    local hours = math.floor(zalupa / 3600)
    local minutes = math.floor((zalupa - hours * 3600) / 60)
    local seconds = math.floor(zalupa - hours * 3600 - minutes * 60)
    return string.format("%02d:%02d:%02d", hours, minutes, seconds)
end

local lua_items = {}
local aa_helpers = {}
local misc_helpers = {}
local visuals_helpers = {}
local rage_helpers = {}

local ref = {
    menu_col = ui.reference('Misc', 'settings', 'menu color'),
    enabled = ui.reference('AA', 'Anti-aimbot angles', 'Enabled'),
    yawbase = ui.reference('AA', 'Anti-aimbot angles', 'Yaw base'),
    fsbodyyaw = ui.reference('AA', 'anti-aimbot angles', 'Freestanding body yaw'),
    edgeyaw = ui.reference('AA', 'Anti-aimbot angles', 'Edge yaw'),
    fakeduck = ui.reference('RAGE', 'Other', 'Duck peek assist'),
    forcebaim = ui.reference('RAGE', 'Aimbot', 'Force body aim'),
    safepoint = ui.reference('RAGE', 'Aimbot', 'Force safe point'),
    roll = { ui.reference('AA', 'Anti-aimbot angles', 'Roll') },
    clantag = ui.reference('Misc', 'Miscellaneous', 'Clan tag spammer'),
    drawconout = ui.reference('Misc', 'Miscellaneous', 'Draw console output'),
    legs = ui.reference('AA', 'Other', 'Leg Movement'),

    pitch = { ui.reference('AA', 'Anti-aimbot angles', 'pitch'), },
    rage = { ui.reference('RAGE', 'Aimbot', 'Enabled') },
    yaw = { ui.reference('AA', 'Anti-aimbot angles', 'Yaw') }, 
    yawjitter = { ui.reference('AA', 'Anti-aimbot angles', 'Yaw jitter') },
    bodyyaw = { ui.reference('AA', 'Anti-aimbot angles', 'Body yaw') },
    freestand = { ui.reference('AA', 'Anti-aimbot angles', 'Freestanding') },
    slow = { ui.reference('AA', 'Other', 'Slow motion') },
    os = { ui.reference('AA', 'Other', 'On shot anti-aim') },
    dt = { ui.reference('RAGE', 'Aimbot', 'Double tap') },
    dtmode = { ui.reference('RAGE', 'Aimbot', 'Double tap')},
    minimum_damage = ui.reference("RAGE", "Aimbot", "Minimum damage"),
    minimum_damage_override = { ui.reference("RAGE", "Aimbot", "Minimum damage override") },
    quick_peek = { ui.reference('RAGE', 'Other', 'Quick peek assist') },

    aimbot = ui.reference('RAGE', 'Aimbot', 'Enabled'),
    doubletap = {
        main = { ui.reference('RAGE', 'Aimbot', 'Double tap') },
        fakelag_limit = ui.reference('RAGE', 'Aimbot', 'Double tap fake lag limit'),
    },
    peek = { ui.reference('RAGE', 'Other', 'Quick peek assist') },
    fov = ui.reference("Misc", "Miscellaneous", "Override FOV"),
    fakelag = {ui.reference('AA', 'Fake lag', 'Enabled')},
    fakelag_amount = ui.reference('AA', 'Fake lag', 'Amount'),  -- 'Dynamic', 'Maximum', 'Fluctuate'
    fakelag_variance = ui.reference('AA', 'Fake lag', 'Variance'), --0, 100%
    fakelag_limit = ui.reference('AA', 'Fake lag', 'Limit'), --1, 15t
    scope = ui.reference('VISUALS', 'Effects', 'Remove scope overlay'),

    slowmotion = {ui.reference('AA', 'Other', 'Slow motion')},
    legmovement = ui.reference('AA', 'Other', 'Leg movement'),
    fakepeek = {ui.reference('AA', 'Other', 'Fake peek')},
}


local render = {
	anim = {},

	logo = function(self, da)
		local big = renderer.load_png("\x89\x50\x4E\x47\x0D\x0A\x1A\x0A\x00\x00\x00\x0D\x49\x48\x44\x52\x00\x00\x00\x1D\x00\x00\x00\x1D\x08\x06\x00\x00\x00\x56\x93\x67\x0F\x00\x00\x00\x01\x73\x52\x47\x42\x00\xAE\xCE\x1C\xE9\x00\x00\x00\x04\x67\x41\x4D\x41\x00\x00\xB1\x8F\x0B\xFC\x61\x05\x00\x00\x00\x09\x70\x48\x59\x73\x00\x00\x0E\xC3\x00\x00\x0E\xC3\x01\xC7\x6F\xA8\x64\x00\x00\x05\xA0\x49\x44\x41\x54\x48\x4B\x95\x56\x59\x4C\x54\x57\x18\xFE\x87\x61\x06\x64\x91\x01\x91\x4D\x36\x65\x51\x76\x08\x24\x48\x8C\xA6\x46\x03\x04\x29\x90\x50\x5A\x4A\x62\x5B\xD3\x07\x62\xDA\x58\x52\x83\x31\xA4\xF4\xA1\x24\x7D\x28\x4D\xED\x43\x1F\x4D\x6C\x09\x0D\x46\x40\xC2\xD8\xA4\x81\x18\x10\x59\x65\xDF\x06\x2C\x01\x81\xB2\xCA\x22\xC3\xBE\x3B\xFD\xFE\xEB\x29\x2D\x61\xEE\x28\x5F\x72\x73\x07\xCE\xB9\xFF\x77\xFE\xED\x3B\xBF\x82\x0E\x89\x88\x88\x08\x0D\x5E\x8E\xD6\xD6\xD6\x3B\x0E\x0E\x0E\xE3\x5A\xAD\x76\xE7\xCD\xCA\xBB\xE3\x9D\x48\x13\x13\x13\x35\x36\x36\x36\x5F\xA9\xD5\xEA\x0F\x9D\x9D\x9D\x7D\xF1\x56\xAF\xAD\xAD\xD1\xC2\xC2\x02\xE9\xF5\xFA\xA7\x23\x23\x23\x8F\x3A\x3B\x3B\x7F\x14\xDB\xDF\x8A\xB7\x92\x5E\xBF\x7E\x3D\x54\xA9\x54\x96\xFB\xF9\xF9\x79\x3B\x3A\x3A\xD2\xF0\xF0\x30\x8D\x8E\x8E\xD2\xFC\xFC\x3C\x6D\x6D\x6D\x51\x40\x40\x00\x99\x9B\x9B\x53\x4B\x4B\xCB\xC0\xE2\xE2\x62\x2C\xDE\xA3\xE2\x53\x59\x98\x24\xCD\xC9\xC9\xD1\xC0\x78\xF5\x85\x0B\x17\xC2\xCD\xCC\xCC\xA8\xB1\xB1\x91\x26\x27\x27\xC9\xCA\xCA\x8A\x5E\xBF\x7E\x4D\x53\x53\x53\xB4\xBC\xBC\x4C\x38\x10\x21\xDC\x64\x67\x67\xA7\x5B\x5F\x5F\xAF\x50\xA9\x54\x53\x77\xEE\xDC\x91\xF5\xDC\x4C\xBC\x8D\x62\x75\x75\xF5\x86\xBF\xBF\x7F\xF8\xD1\xA3\x47\xA9\xBB\xBB\x9B\x10\xC6\x45\x90\xDF\x84\xE7\x21\x85\x85\x85\x0A\x84\x38\x1C\xDE\x0F\xB3\xD7\x2F\x5F\xBE\xA4\x33\x67\xCE\x04\xED\xEC\xEC\x7C\x5D\x5D\x5D\xFD\x5D\x6A\x6A\xAA\x4A\x98\x39\x00\x93\xA4\xB6\xB6\xB6\x1F\x79\x7A\x7A\xD2\xF6\xF6\x36\xF5\xF5\xF5\x71\x18\xBF\x7C\xF0\xE0\xC1\x4F\xF7\xEE\xDD\xEB\xE5\x75\x78\xDE\x85\xD7\x1F\x47\x8E\x1C\x21\xA4\x99\x74\x3A\x9D\x94\x67\x7B\x7B\xFB\xDE\xD2\xD2\xD2\x6D\xDE\x63\x0C\x26\x49\x0D\x06\x83\x1F\x42\x45\xC8\x15\x59\x5A\x5A\xEA\xE1\xC5\xEF\x62\x69\x0F\x2B\x2B\x2B\x33\x3D\x3D\x3D\x84\x35\xAA\xA8\xA8\xE0\x6F\x38\xD7\x7F\x8A\x65\xA3\x90\x25\x4D\x4E\x4E\xB6\x06\xD9\x0E\x17\xC9\xC6\xC6\x06\xA1\x7A\xEB\xD1\x1E\x06\xB1\xBC\x07\x78\xF9\x0B\x1F\x8C\x73\xCC\xF9\xED\xE8\xE8\x78\x8E\x6F\x7E\x10\xCB\x46\x21\x4B\x5A\x5E\x5E\xBE\xBA\xB4\xB4\xB4\xC2\xC6\x10\x2E\x36\xE8\x24\x96\xF6\x01\xDE\xE9\xC3\xC2\xC2\x7E\xE5\x83\x71\x2A\x70\xB8\x47\x35\x35\x35\xAB\x62\xD9\x28\x4C\x86\x17\x95\xD8\x39\x3D\x3D\xCD\xB9\x65\xE2\xC8\xF3\xE7\xCF\x7B\x88\xA5\x7D\x78\xF5\xEA\xD5\xED\x53\xA7\x4E\x3D\x73\x71\x71\xE1\x4A\xD6\x8A\x7F\xCB\x42\x29\xDE\x46\x01\x43\x4A\x0B\x0B\x8B\x94\xD0\xD0\x50\x6E\x13\xC5\xCC\xCC\x8C\xA7\xAF\xAF\x6F\x65\x70\x70\xB0\x1B\xD4\xC8\xDF\xCB\xCB\xCB\xEE\xF8\xF1\xE3\xCB\x75\x75\x75\x8B\xAD\xAD\xAD\x77\xBD\xBD\xBD\x47\xE1\x75\x08\x3C\xAD\x15\x26\x8C\xC2\xA4\xA7\x30\x52\xDA\xDF\xDF\xFF\x37\xB7\x03\x08\x08\x84\xA9\x73\x73\x73\x13\x10\x87\x21\x14\x4C\x13\x8A\x4B\x77\xFA\xF4\xE9\xF5\x8C\x8C\x8C\xEA\x2B\x57\xAE\x7C\x16\x1D\x1D\x3D\x88\x76\x7A\x5F\x7C\x2E\x0B\x93\x9E\x36\x37\x37\x6F\xF9\xF8\xF8\x2C\x4F\x4C\x4C\x24\xE1\x4D\x81\x81\x81\xDC\x36\x2A\x6E\x0D\x90\x73\xE5\x4A\xF9\x8E\x8B\x8B\xF3\x46\x54\x52\x2A\x2B\x2B\xD5\x38\xCC\x8D\x84\x84\x84\xCD\xDA\xDA\x5A\xD9\x96\x31\x49\x0A\x63\x4A\xA8\xCC\xED\xD9\xD9\xD9\x40\x3C\x12\x41\x48\x48\x08\xB9\xBB\xBB\x13\x3C\x92\x9E\xDD\xDD\x5D\x56\x22\x0A\x0A\x0A\x62\x79\x0C\x6D\x6A\x6A\xFA\xB9\xAC\xAC\x6C\x56\x98\x30\x0A\x93\xA4\x49\x49\x49\x19\x28\xA2\x6F\x58\xFA\x38\xC4\xDC\x8B\xFC\x70\x8B\x20\xF4\x84\x70\x92\x87\x87\x07\x71\x01\x71\xAF\x42\x77\xB9\xBD\xB4\x88\xC2\xB0\x30\x61\x14\x26\xB5\x37\x2F\x2F\xAF\x07\x24\xC1\x6C\x90\x3D\x55\x28\x14\x3D\x28\xA2\x10\x56\x1D\x48\xA4\xE4\xE9\xE6\xE6\xA6\x24\xFC\x5C\xE5\x90\x44\x3D\x42\xEE\x8B\xA2\x9A\x17\x26\x8C\x42\xD6\xD3\xDC\xDC\xDC\x30\x18\xF9\x96\x15\x86\x09\x61\xAC\x73\x68\x68\xE8\xBD\xC8\xC8\xC8\x22\x14\x95\x19\xC2\x1A\xE5\xEA\xEA\x2A\x79\xCD\x9E\xC2\xE3\x66\x1C\xEA\xE6\xE3\xC7\x8F\x3B\x84\x09\x59\xC8\x7A\x9A\x9D\x9D\xFD\x39\xBC\xBA\xCB\xA1\xE5\xEB\x6C\x60\x60\x20\xF9\xC9\x93\x27\xFB\x7A\xF0\xD6\xAD\x5B\x5E\x83\x83\x83\x7E\xB8\x61\x66\x11\x11\x5D\x51\x51\xD1\xA1\x2F\xF4\x7D\xB8\x76\xED\xDA\x17\xF7\xEF\xDF\x37\x14\x14\x14\x18\x32\x33\x33\x0D\x67\xCF\x9E\xF5\x11\x4B\x12\xF2\xF3\xF3\x4F\x8A\x9F\x87\x86\x6C\x9F\xFE\xAB\xBB\x10\x01\x9E\x0E\xB8\x62\xF7\xED\xC5\x75\x96\x8A\x68\x7C\x2A\xFE\x3C\x14\x64\x73\x0A\x15\x72\x80\x1A\x5D\x75\x73\x73\x23\x84\x90\x05\xBD\xA5\xB7\xB7\xB7\x5B\x2C\x73\x15\xDB\x22\xE7\x25\x17\x2F\x5E\x0C\x42\x0F\x9F\xC4\xEC\xD4\x81\x91\x45\xB6\x37\xFF\x0F\xD9\x9C\xA6\xA7\xA7\x6B\x40\x3A\x97\x96\x96\xA6\xE4\x4B\x1A\x61\x6E\x01\x51\x0A\x54\x89\x40\xA2\xC7\x54\xB1\x86\x3D\x1F\xE0\xAE\x2D\xE6\x49\x02\x97\xC3\x34\x7E\x7F\x82\xFC\x2E\x15\x17\x17\x3F\x13\x66\x8C\xC2\x64\xCB\x5C\xBA\x74\xA9\x28\x3E\x3E\x3E\x9D\x1B\x9F\xBD\x6D\x68\x68\x20\x9E\x22\x20\x7F\xAC\x4C\x2B\xA8\xEC\x41\xE8\xB1\xAB\x93\x93\x93\x33\x47\x84\x6F\x19\xBE\xCC\xC7\xC7\xC7\xA9\xAA\xAA\x2A\x1B\x22\x61\x74\x64\x91\x0D\x6F\x56\x56\x56\x30\xAE\xB3\xEF\xA1\x32\x96\x27\x4E\x9C\x90\x0C\x6A\x34\x1A\x69\x4E\xEA\xEA\xEA\xE2\x3C\xAB\xB1\xCD\x05\xBD\x6A\xC3\x7D\x8B\xD0\x12\xC2\x2F\xED\xE1\xFD\x98\x9F\x62\x11\x99\xDF\x20\x2A\xFA\x37\x16\xFF\x83\x2C\x29\x3E\x4C\x89\x8A\x8A\x4A\xE3\xE1\x6B\x6C\x6C\x8C\x8E\x1D\x3B\x26\xC9\x20\xFA\x54\xBA\xEA\x98\xE8\xC5\x8B\x17\x92\x28\xF0\xD0\xC6\x53\x21\x5F\x0A\x3C\x31\xF2\xFE\xB6\xB6\x36\x16\x93\x1A\x78\xFD\x5C\x98\xDC\x83\x6C\x78\x2F\x5F\xBE\x7C\x15\x6A\x53\xC0\xBA\xCA\x12\xC8\x9E\x9E\x3B\x77\x8E\x30\xF7\x12\x72\x2D\x69\x2E\x0B\x3E\x3F\x3C\x09\xF2\xC3\xA3\x29\xF7\x34\x2B\x18\x54\x6A\x09\xFB\xC2\xEB\xEB\xEB\x0F\x48\xA2\x2C\x69\x4C\x4C\x8C\x2D\x3E\xAA\xC1\x69\x23\x78\x46\x62\xA9\x63\x4F\x59\x85\x98\x80\x27\x0A\x84\x4F\xCA\x21\x0F\xDE\x7C\x08\x14\x93\x74\x08\xE4\x5B\x8F\xFF\x65\xF3\x1D\x2B\xCC\xED\x83\xC9\x42\x62\xC0\xBB\x58\xDC\x99\x1E\x08\xA7\x27\xD4\x49\x81\xEA\x9D\xC5\xC5\xFD\x31\x2A\x35\x86\x43\xCC\xA4\x7C\x20\x90\xE8\x41\x5C\x87\x03\x3E\xC5\x81\xB4\xB8\xD8\xFF\x12\x26\x0E\xE0\xAD\xA4\x72\xC0\x88\xA9\x7A\xF8\xF0\xA1\x37\xFA\xD3\xD0\xDE\xDE\xBE\x01\xE2\xC5\x92\x92\x92\x65\xB1\x6C\x02\x44\xFF\x00\xE0\xB2\xC6\x04\x40\x01\x5B\x13\x00\x00\x00\x00\x49\x45\x4E\x44\xAE\x42\x60\x82", 29, 29)
		local small = renderer.load_png("\x89\x50\x4E\x47\x0D\x0A\x1A\x0A\x00\x00\x00\x0D\x49\x48\x44\x52\x00\x00\x00\x13\x00\x00\x00\x13\x08\x06\x00\x00\x00\x72\x50\x36\xCC\x00\x00\x00\x01\x73\x52\x47\x42\x00\xAE\xCE\x1C\xE9\x00\x00\x00\x04\x67\x41\x4D\x41\x00\x00\xB1\x8F\x0B\xFC\x61\x05\x00\x00\x00\x09\x70\x48\x59\x73\x00\x00\x0E\xC3\x00\x00\x0E\xC3\x01\xC7\x6F\xA8\x64\x00\x00\x03\x22\x49\x44\x41\x54\x38\x4F\x75\x54\xDD\x4B\xD3\x51\x18\x7E\xDB\xCC\x6D\xBA\xA9\x9B\x88\x5F\x17\x4B\x9D\x73\x3A\x26\x6A\x26\x36\x37\x91\x42\x0C\x43\x10\x43\xB4\x40\x33\xBC\xF0\x22\xBB\x08\x14\xFB\x03\x82\xEA\xA2\x2E\xEA\x26\x22\x41\x2F\x22\xBD\x58\x64\x97\x41\x28\xE4\x50\x66\xE9\x54\x4C\xFC\x9A\x13\xCD\xAF\x34\xB7\xE9\xFC\x64\xDA\x73\xC6\x61\x34\x8E\x3E\x30\x7E\xFB\xBD\xBF\x73\x9E\xF3\xBC\xEF\xFB\xBC\xE7\x12\x5D\x80\xCA\xCA\xCA\x88\xB3\xB3\x33\x8B\x4A\xA5\xCA\x89\x8C\x8C\xA4\xD9\xD9\xD9\x5F\x0E\x87\x63\x80\x7F\x3E\x17\xE7\x92\xB5\xB6\xB6\x5E\x49\x48\x48\xF8\xA0\x54\x2A\xCD\x1E\x8F\x87\x5C\x2E\x17\x45\x47\x47\xD3\xE1\xE1\x61\x60\x61\x61\xE1\x8E\xDD\x6E\xEF\xE3\x4B\xC3\x20\xE5\xCF\x10\x3A\x3A\x3A\x94\x32\x99\xCC\x66\x32\x99\x4A\x46\x46\x46\x68\x6D\x6D\xED\xC7\xE9\xE9\xE9\x57\x90\xC4\x1D\x1D\x1D\x69\x0A\x0A\x0A\xEA\xB3\xB2\xB2\xAC\x49\x49\x49\x3B\xF3\xF3\xF3\xB3\x7C\x5B\x10\x12\xFE\x0C\x01\x0A\x4A\x0D\x06\x83\x85\xA9\xD9\xD8\xD8\x78\xD5\xD3\xD3\x73\xAD\xB7\xB7\xF7\x81\x42\xA1\x68\x61\xE9\xEE\xED\xED\xD1\xFE\xFE\xFE\x4D\x28\x16\x84\x08\x64\x50\xA2\x8F\x8A\x8A\x22\xBF\xDF\x4F\x50\xF2\x86\x87\xC9\xEB\xF5\x3A\xA0\x90\x86\x87\x87\x69\x75\x75\x75\x51\xAB\xD5\x0A\xF5\x13\xC8\x70\xB2\x1B\x27\x93\x54\x2A\xA5\xDD\xDD\xDD\x3F\x3C\x4C\x48\xD9\x03\x75\xDD\x2C\x8E\xA6\x74\x43\xAD\x87\x7F\x0A\x41\x20\x03\xD1\xC0\xD2\xD2\x12\x65\x64\x64\x50\x62\x62\x62\x2D\x0F\x07\x01\xA2\xC7\xB9\xB9\xB9\x6F\xF1\x6D\x8A\x87\xC2\x20\x90\xD9\x6C\x36\x0F\xEA\xF5\x2D\x35\x35\x95\xF2\xF3\xF3\xDF\xE7\xE5\xE5\x8D\x99\xCD\xE6\x9D\x9A\x9A\x9A\xC5\xF8\xF8\xF8\x67\x48\xF7\x9D\x46\xA3\x31\xF1\xE5\x61\x10\x8A\xC8\x90\x9E\x9E\xAE\x71\xBB\xDD\xB7\xCA\xCB\xCB\x25\xD8\x98\x34\x35\x35\x25\x3F\x38\x38\x88\xB3\x5A\xAD\x85\x31\x31\x31\x75\xE3\xE3\xE3\x8F\x66\x66\x66\xFE\xF2\xE5\x21\x08\x64\xED\xED\xED\x6A\xF8\xEB\xD3\xC4\xC4\x84\x62\x7B\x7B\x9B\x92\x93\x93\xA9\xB8\xB8\x98\x98\x52\x06\xA7\xD3\x29\xDF\xDC\xDC\xEC\x5B\x5E\x5E\x5E\x0C\x06\xFE\x43\x04\x7F\x86\x00\x6B\x34\xC2\xB0\xEA\xC9\xC9\x49\xC2\xE9\x2F\x4E\x4E\x4E\xB4\xE8\x6C\xBD\xCF\xE7\x23\xB9\x5C\x4E\xB0\x84\x1D\xFE\xFA\xC9\x97\x87\x41\xA8\x19\xEA\x52\xC2\xFC\x94\x99\x99\xF9\xA5\xBF\xBF\xFF\x49\x67\x67\xE7\x5D\xA4\xAA\x86\xB2\x6A\x1C\x94\x0F\xC3\xDE\x86\x32\xA1\x93\x0C\x82\x32\x28\x90\x61\x03\x21\x4D\x2F\x0F\x51\x51\x51\x51\x59\x53\x53\xD3\x67\xFE\x7A\x21\x04\x65\x48\xC1\x05\x1F\x31\xD3\x5A\x78\x88\xBA\xBA\xBA\xFC\x0D\x0D\x0D\x63\xCD\xCD\xCD\xCF\xAB\xAA\xAA\x54\x3C\x2C\x40\x68\x40\x6C\x6C\x6C\x04\x7E\xF7\xB2\xB3\xB3\xD5\x98\x04\x23\x3A\x58\xAB\xD3\xE9\xE4\xC7\xC7\xC7\x6A\xD4\xEF\xBE\x5E\xAF\xAF\x6D\x69\x69\xB9\x91\x96\x96\xA6\x18\x1A\x1A\x72\xF2\x6D\x41\x08\x64\x15\x15\x15\x8D\xB0\x42\x29\xFC\xC5\x4C\x6B\x1C\x1D\x1D\x35\xCE\xCD\xCD\x95\xC1\xCC\xBA\x40\x20\x40\xEB\xEB\xEB\x9A\x94\x94\x14\x03\xC8\xAB\x11\xEB\xC6\x68\x85\xEA\x27\x90\xE1\x36\x78\x88\xAE\xE5\x4C\x4F\x4F\xB3\xFF\x64\xB1\x58\x58\x33\x48\x22\x91\x30\x72\x32\x1A\x8D\xB4\xB5\xB5\x45\x83\x83\x83\x04\xEF\x7D\x04\xF9\x6F\xBE\x55\xBC\xCF\x90\xD6\x75\x74\xF3\x35\xE6\xF2\x2A\xBA\x17\xC0\x40\x47\xB0\x01\x47\x8A\x6C\x56\x83\x6B\x30\x05\x1E\xBC\x3F\xC5\xD0\xBF\x0C\x06\x38\x2E\xBC\x69\x19\x0A\x0B\x0B\x2F\xB7\xB5\xB5\x49\xA0\xB2\x0E\x44\xEA\x95\x95\x95\x53\xDC\x2A\xDF\xD1\x1C\x17\xD2\xF7\xF1\x65\x1C\x44\xFF\x00\x73\x4D\x5B\x4F\x5A\x1C\x00\xE6\x00\x00\x00\x00\x49\x45\x4E\x44\xAE\x42\x60\x82", 19, 19)
		local icon = da and big or small
		local pixel = da and {29,29} or {19,19}

		return icon, unpack(pixel)
	end,
}

math.clamp = function (x, a, b)
    if a > x then return a
    elseif b < x then return b
    else return x end
end

math.lerping = function (a, b, w)
    return a + (b - a) * w
end

math.lerp = function (start, enp, time)
    time = time or 0.005
    time = math.clamp(globals.absoluteframetime() * time * 175.0, 0.01, 1.0)
    local a = math.lerping(start, enp, time)
    if enp == 0.0 and a < 0.02 and a > -0.02 then
        a = 0.0
    elseif enp == 1.0 and a < 1.01 and a > 0.99 then
        a = 1.0
    end
    return a
end

function math.normalize(x, min, max)
    local d = max - min

    while x < min do
        x = x + d
    end

    while x > max do
        x = x - d
    end

    return x
end

renderer.rec = function(x, y, w, h, radius, color)
    radius = math.min(x/2, y/2, radius)
    local r, g, b, a = unpack(color)
    renderer.rectangle(x, y + radius, w, h - radius*2, r, g, b, a)
    renderer.rectangle(x + radius, y, w - radius*2, radius, r, g, b, a)
    renderer.rectangle(x + radius, y + h - radius, w - radius*2, radius, r, g, b, a)
    renderer.circle(x + radius, y + radius, r, g, b, a, radius, 180, 0.25)
    renderer.circle(x - radius + w, y + radius, r, g, b, a, radius, 90, 0.25)
    renderer.circle(x - radius + w, y - radius + h, r, g, b, a, radius, 0, 0.25)
    renderer.circle(x + radius, y - radius + h, r, g, b, a, radius, -90, 0.25)
end

renderer.texture_rec = function(texture, x, y, w, h, radius, thickness, color)
    radius = math.min(x/2, y/2, radius)
    local r, g, b, a = unpack(color)
    renderer.texture(texture, x + radius, y, w - radius*2, thickness, r, g, b, a, "r")
    renderer.texture(texture, x + radius, y + h - thickness, w - radius*2, thickness, r, g, b, a, "r")
    renderer.texture(texture, x, y + radius, thickness, h - radius*2, r, g, b, a, "r")
    renderer.texture(texture, x + w - thickness, y + radius, thickness, h - radius*2, r, g, b, a, "r")
end

local gradient = function(r1, g1, b1, a1, r2, g2, b2, a2, text)
    local output = ''
    local len = #text-1
    local rinc = (r2 - r1) / len
    local ginc = (g2 - g1) / len
    local binc = (b2 - b1) / len
    local ainc = (a2 - a1) / len
    for i=1, len+1 do
        output = output .. ('\a%02x%02x%02x%02x%s'):format(r1, g1, b1, a1, text:sub(i, i))
        r1 = r1 + rinc
        g1 = g1 + ginc
        b1 = b1 + binc
        a1 = a1 + ainc
    end
    return output
end

renderer.rec_outline = function(x, y, w, h, radius, thickness, color)
    radius = math.min(w/2, h/2, radius)
    local r, g, b, a = unpack(color)
    if radius == 1 then
            renderer.rectangle(x, y, w, thickness, r, g, b, a)
            renderer.rectangle(x, y + h - thickness, w , thickness, r, g, b, a)
    else
        renderer.rectangle(x + radius, y, w - radius*2, thickness, r, g, b, a)
        renderer.rectangle(x + radius, y + h - thickness, w - radius*2, thickness, r, g, b, a)
        renderer.rectangle(x, y + radius, thickness, h - radius*2, r, g, b, a)
        renderer.rectangle(x + w - thickness, y + radius, thickness, h - radius*2, r, g, b, a)
        renderer.circle_outline(x + radius, y + radius, r, g, b, a, radius, 180, 0.25, thickness)
        renderer.circle_outline(x + radius, y + h - radius, r, g, b, a, radius, 90, 0.25, thickness)
        renderer.circle_outline(x + w - radius, y + radius, r, g, b, a, radius, -90, 0.25, thickness)
        renderer.circle_outline(x + w - radius, y + h - radius, r, g, b, a, radius, 0, 0.25, thickness)
    end
end

renderer.glow_module = function(x, y, w, h, width, rounding, accent, accent_inner)
    local thickness = 1
    local offset = 1
    local r, g, b, a = unpack(accent)
    if accent_inner then
        renderer.rec(x , y, w, h + 1, rounding, accent_inner)
    end
    for k = 0, width do
        if a * (k/width)^(1) > 5 then
            local accent = {r, g, b, a * (k/width)^(2)}
            renderer.rec_outline(x + (k - width - offset)*thickness, y + (k - width - offset) * thickness, w - (k - width - offset)*thickness*2, h + 1 - (k - width - offset)*thickness*2, rounding + thickness * (width - k + offset), thickness, accent)
        end
    end
end

		pui.macros.d = "\a808080FF•\r  "
		pui.macros.gray = "\a505050FF"
		pui.macros.a = "\a77789FFF"
		pui.macros.ab = "\aACADE2FF"
		pui.macros.red = "\aFF0000FF"

local lua_group = pui.group("aa", "anti-aimbot angles")
local fakelag_group = pui.group("aa", "Fake lag")
local other_group = pui.group("aa", "Other")

local aa_conditions = {'Global', 'Stand', 'Move', 'Walk', 'Crouch', 'Crouch+Move', 'Air', 'Air+C', 'Discharged', 'Legit AA'}

lua_items.main = {
    labelselect = fakelag_group:label('\vEvolution\r ~ Select'),
    label444 = fakelag_group:label(' '),
    label333 = fakelag_group:label(' '),
    label12312312 = fakelag_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    labeluser = fakelag_group:label(' \v\r  Welcome Back, \v'..username),
    label123123 = fakelag_group:label(' \v\r  Your build is \v' ..build),
    label1231231 = fakelag_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    labelbuild = fakelag_group:label('\v\r   \vHappy everyday\r'),
    label2 = fakelag_group:label(' '),
    luaname = lua_group:label('\vEvo\rlution'),
    tab = lua_group:combobox('\n', {' MainMenu', ' Anti-Aim', ' Features'}),
    label3 = lua_group:label(' '),

    label_1 = other_group:label(' '),

    funny1 = other_group:button('sv_cheats On', function() 
        client.exec("sm_cvar sv_cheats 1");
        print("SvCheats On")
    end),
    funny2 = other_group:button('sv_cheats Off', function() 
        client.exec("sm_cvar sv_cheats 0");
        print("SvCheats Off")        
    end),
    funny3 = other_group:button('God Me', function() 
        client.exec("god 1");
    end),
    funny4 = other_group:button('Hitbox', function()
        client.exec("ent_fire Evolution. setModelScale 0.1")
    end),
    funny5 = other_group:button('Deagle', function() 
        client.exec("sm_deagle");
        client.exec("deagle");
    end),
    funny6 = other_group:button('R8', function() 
        client.exec("sm_r8");
        client.exec("r8");
    end),
    is_show = lua_group:checkbox('###Show'),
    is_show2 = lua_group:checkbox('####Show'), 
    list = lua_group:listbox("\vConfigs", ""),   
    name = lua_group:textbox("\vщо тут за щиткод ребятки?"),
    create = lua_group:button("\v\r  Create", function() end), -- lua_items.main.create

    load = lua_group:button("\v\r    Load", function() end),
    label1 = lua_group:label(' '),
    save = lua_group:button("\v\r    Save", function() 
        lua_items.main.is_show:set(false)
    end),
    accept = lua_group:button("\v\r  Confirm", function() 
        lua_items.main.is_show:set(true)
    end),
    decline = lua_group:button("\v\r  Decline", function() 
        lua_items.main.is_show:set(true)
    end),
    label2 = lua_group:label(' '),
    label3 = lua_group:label(' '),
    delete = lua_group:button("\v\r  Delete", function() 
        lua_items.main.is_show2:set(false)
    end),
    accept2 = lua_group:button("\v\r  Confirm", function() 
        lua_items.main.is_show2:set(true)
    end),
    decline2 = lua_group:button("\v\r  Decline", function() 
        lua_items.main.is_show2:set(true)
    end),
    label4 = lua_group:label(' '),
    import = lua_group:button("\v\r  Import", function() end),
    export = lua_group:button("\v\r  Export", function() end),
}


lua_items.antiaim = {
    tab = fakelag_group:combobox('\vEvolution\r ~ Select', {' Helpers', ' Keybinds', ' Fake Lag'}),
    is_def = other_group:checkbox('#defensive'),
    to_def = other_group:button('\v\r  Defensive', function() end),
    to_build = other_group:button('\v\r  Builder', function() end),
    label20 = fakelag_group:label(' '),
    label21 = fakelag_group:label('\v\r  Other'),
    label22 = fakelag_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    addons = fakelag_group:multiselect('Additions', {'Override Anti-Aim', 'Anti Backstab', 'Safe Head'}),
    aa_override = fakelag_group:multiselect('Warmup AA', {'No Enemies Alive', 'Warmup'}),
    safe_head = fakelag_group:multiselect('Safe Head', {'Air+C Knife', 'Air+C Zeus', 'Air+C SMG', 'Height Difference', 'Stand', 'Air', 'Air+C', 'Crouch', 'Crouch Move', 'Fake Duck', 'Fake Lags'}),
    height_difference = fakelag_group:slider('Difference', 0, 300, 200, true, '%'),
    defensive_triggers = fakelag_group:multiselect('Force Defensive Triggers', {'Hittable', 'Reload', 'Flashed', 'Damaged', 'Weapon Swap'}),
    defensive_condition = fakelag_group:multiselect('Conditions', {'Stand', 'Moving', 'Walking', 'Crouching', 'Air'}),
    labelfl1 = fakelag_group:label(' '),
    labelfl2 = fakelag_group:label('\v\r  FakeLag'),
    labelfl3 = fakelag_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    fl_amount = fakelag_group:combobox('Fakelag Type', {'Dynamic', 'Maximum', 'Fluctuate', 'Adaptive'}),
    fl_variance = fakelag_group:slider('Fakelag Variance', 0, 100, 0, true, '%'),
    fl_limit = fakelag_group:slider('Fakelag Limit', 1, 15, 14, true, 't'),
    labelchangW = fakelag_group:label('\v\r   \vAdaptive FL Mode Powered By Elyzo\r'),
    labelchangW2 = fakelag_group:label('\v\r   \vThanks To Changw For Help Me\r'),
    fl_disablers = fakelag_group:multiselect('Fakelag Disablers', {'Crouch', 'Stand'}),

    label50 = fakelag_group:label(' '),
    label51 = fakelag_group:label('\v\r  KeyBinds'),
    label52 = fakelag_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    edgeyaw_on_fd = fakelag_group:checkbox('Edge Yaw On Fake Duck'),
    freestanding = fakelag_group:checkbox('Freestanding'),
    freestanding_key = fakelag_group:hotkey('Freestanding', true),
    fr_options = fakelag_group:multiselect('Options', {'On Quick Peek', 'Disablers', 'Disable Yaw Modifier', 'Fake Peek'}),
    fr_disablers = fakelag_group:multiselect('Disablers', {'Walking', 'Crouch', 'Air'}),
    manual_direction = fakelag_group:checkbox('Manual Direction'),
    yaw_options = fakelag_group:multiselect('Direction Options', {'Disable Yaw Modifier', 'Fake Peek'}),
    key_left = fakelag_group:hotkey('Left Manual'),
    key_right = fakelag_group:hotkey('Right Manual'),
    key_forward = fakelag_group:hotkey('Forward Manual'),

    label17 = lua_group:label(' '),
    label16 = lua_group:label('\v\r  Default Settings'),
    label15 = lua_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    pitch = lua_group:combobox('Pitch', {"Off", "Down", 'Random'}),
    yaw_base = lua_group:combobox('Yaw Base', {'Local view', 'At targets'}),
    condition = lua_group:combobox('Condition', aa_conditions),
    label2 = lua_group:label(' '),
}

lua_items.select = {
    tab3 = fakelag_group:combobox('\vEvolution\r ~ Select', {' RageBot', ' Visuals', ' Miscellaneous'}),
    
    label26 = lua_group:label('\v\r  Resolver'),
    label27 = lua_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    predict = lua_group:checkbox('\vPredict\r Enemies'),
    predict_key = lua_group:hotkey('\vPredict\r Enemies', true),
    resolver = lua_group:checkbox('\vCustom\r Resolver'),
    label28 = fakelag_group:label(' '),
    label59 = lua_group:label(' '),
    label29 = lua_group:label('\v\r  Fixs'),
    label30 = lua_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    hideshot_fix = lua_group:checkbox('HideShots Fix'),
    dt_fix = lua_group:checkbox('DoubleTap Fix'),
    sv_lagger = lua_group:checkbox('EVO 7w Lagger'),
    labelot1 = fakelag_group:label(' '),
    labelot2 = fakelag_group:label('\v\r  Other'),
    labelot3 = fakelag_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    unsafe_charge = fakelag_group:checkbox('Unsafe Recharge In Air'),
    scout_airstop = fakelag_group:checkbox('Scout In Air Auto Stop'),
    scout_airstop_bind = fakelag_group:hotkey('Scout In Air Auto Stop', true),

    ai_peek =  fakelag_group:checkbox('\vAI\r Peek'),
    dot_offset = fakelag_group:slider('Start Offset', 0, 20, 8, true, 'u' ),
    dot_span = fakelag_group:slider('Covered offset', 0, 60, 5, true, 'u' ),
    dot_amount = fakelag_group:slider('Number of points', 0, 8, 3, true, 'u' ),


    jumpscout1 = fakelag_group:checkbox('Jumpscout'),

    label6 = fakelag_group:label(' '),
    label31 = lua_group:label('\v\r  Crosshair'),
    label32 = lua_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    custom_scope = lua_group:checkbox('Custom Scope', {200, 200, 200, 200}),
    custom_scope_length = lua_group:slider('Length', 50, 500, 200),
    custom_scope_offset = lua_group:slider('Offset', 0, 50, 200),
    manual_ind = lua_group:checkbox('Manual Arrows', {200, 200, 200}),
    manual_active = lua_group:checkbox('When Active Only', {255, 255, 255, 255}),
    manual_ind_type = lua_group:combobox('Type ', {'TS', 'Alternative'}),
    damage_ind = lua_group:checkbox('Damage Indicator', {255, 255, 255, 255}),
    damage_over = lua_group:checkbox('Override Damage'),
    damage_type = lua_group:combobox('Font', {'Default', 'Alternative'}),
    kibit_hitmarker = lua_group:checkbox('Kibit Hitmarker', {127, 255, 212}),
    animated_zoom = lua_group:checkbox("Animated Zoom"),
    animated_step = lua_group:slider('Step', 1, 10, 3, true),
    label33 = lua_group:label(' '),
    label34 = fakelag_group:label('\v\r  In game'),
    label35 = fakelag_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    thirdperson = fakelag_group:checkbox('Third Person Distance'),
    thirdperson_value = fakelag_group:slider('Value\n', 30, 150, 150, true, '', 1),
    velocity_warning = fakelag_group:checkbox('Velocity Warning', {200, 200, 200}),
    defensive_warning = fakelag_group:checkbox('Defensive Warning', {200, 200, 200}),
    Style_Panel = fakelag_group:checkbox('Style Panel', {200, 200, 200}),
    Cross_indicator = fakelag_group:checkbox('Crosshair Indicator', {200, 200, 200}),
    AA_debug = fakelag_group:checkbox('AA DEBUG'),

    label36 = lua_group:label(' '),
    label37 = lua_group:label('\v\r  Render'),
    label38 = lua_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    widgets_list = lua_group:multiselect('Widgets', {'Watermark', 'Logs', 'Keybinds'}, {199, 146, 234, 255}),
    keybinds_speed = lua_group:slider('Keybinds Speed', 50, 400, 100, false, '', 0.01),
    widgets_warning1 = lua_group:label('\v\r   \vThe rainbow mode algorithm is immature.\r'),
    widgets_warning2 = lua_group:label('\v\r   \vThis will result in a loss of FPS.\r'),
    widgets_color = lua_group:combobox('Color', {'Static', 'Rainbow'}),
    ragebot_logs_select = lua_group:multiselect('Select', {'Console', 'Screen'}),
    ragebot_hit = lua_group:color_picker('Ragebot Logs', 186, 196, 249),
    ragebot_miss = lua_group:color_picker('Ragebot Logs Miss', 186, 90, 90),

    label6 = fakelag_group:label(' '),
    labelb2 = lua_group:label('\v\r  Basic Settings'),
    labelb3 = lua_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    clantag = lua_group:checkbox('Clantag'),
    trashtalk = lua_group:checkbox('TrashTalk'),
    filter_console = lua_group:checkbox('Filter Console'),
    enemy_chat = lua_group:checkbox('Enemy Chat Revealer'),
    labelf1 = fakelag_group:label(' '),
    labelf2 = fakelag_group:label('\v\r  For the game'),
    labelf3 = fakelag_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    buy_bot = fakelag_group:checkbox('Buy Bot'),
    buybot_primary = fakelag_group:combobox('Primary Weapon', {"Auto", "Scout", "Awp", "Primary rifle", "Scoped rifle", "Machine gun"}),
    buybot_secondary = fakelag_group:combobox('Secondary Weapon', {"Default pistol", "P250", "Dual Berettas", "Light pistol", "Heavy pistol"}),
    buybot_utility = fakelag_group:multiselect('Utility', {"Grenade", "Smoke", "Incendiary", "Flashbang", "Kevlar + Helmet", "Defuse kit", "Zeus"}),
    fps_boost = fakelag_group:checkbox('Fps Boost'),
    fps_always = fakelag_group:checkbox('Always On'),
    fps_detect = fakelag_group:multiselect('Detections', {'On Peek', 'Hittable'}),
    fps_opt = fakelag_group:multiselect('\v\r  Select', {'3D Sky', 'Fog', 'Shadows', 'Blood', 'Decals', 'Bloom', 'Ragdols', 'Eye Candy', 'Molotov', 'Other'}),

    labelo1 = lua_group:label(' '),
    labelo2 = lua_group:label('\v\r  Other Settings'),
    labelo3 = lua_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
    auto_tp = lua_group:checkbox('Automatic LC break'),
    auto_tp_key = lua_group:hotkey('Automatic LC break', true),
    fast_ladder = lua_group:checkbox('Fast Ladder'),

    anims = fakelag_group:checkbox("Local Animations"),
    anims_ground = fakelag_group:combobox("On Ground", {'Off', 'Static', 'Jitter', 'Jitter Slide', 'MoonWalk'}),
    anims_ground_amount = fakelag_group:slider('  On Ground Amount', 0, 100, 100),
    anims_air = fakelag_group:combobox("In Air", {'Off', 'Static', 'Jitter', 'Better Jitter', 'MoonWalk'}),
    anims_air_amount = fakelag_group:slider('  In Air Amount', 0, 100, 100),
    move_lean = fakelag_group:combobox("Move Lean", {'Off', 'Static', 'Jitter'}),
    move_lean_amount = fakelag_group:slider('  Move Lean Amount', 0, 100, 100),
}



lua_items.main.is_show:set(true)
lua_items.main.is_show2:set(true)

local function hide_original_menu(state, other_group_state)
    ui.set_visible(ref.enabled, state)
    ui.set_visible(ref.pitch[1], state)
    ui.set_visible(ref.pitch[2], state)
    ui.set_visible(ref.yawbase, state)
    ui.set_visible(ref.yaw[1], state)
    ui.set_visible(ref.yaw[2], state)
    ui.set_visible(ref.yawjitter[1], state)
    ui.set_visible(ref.roll[1], state)
    ui.set_visible(ref.yawjitter[2], state)
    ui.set_visible(ref.bodyyaw[1], state)
    ui.set_visible(ref.bodyyaw[2], state)
    ui.set_visible(ref.fsbodyyaw, state)
    ui.set_visible(ref.edgeyaw, state)
    ui.set_visible(ref.freestand[1], state)
    ui.set_visible(ref.freestand[2], state)

    ui.set_visible(ref.fakelag[1], state)
    ui.set_visible(ref.fakelag[2], state)
    ui.set_visible(ref.fakelag_amount, state)
    ui.set_visible(ref.fakelag_variance, state)
    ui.set_visible(ref.fakelag_limit, state)
    
    ui.set_visible(ref.slowmotion[1], other_group_state)
    ui.set_visible(ref.slowmotion[2], other_group_state)
    ui.set_visible(ref.legmovement, other_group_state)
    ui.set_visible(ref.os[1], other_group_state)
    ui.set_visible(ref.os[2], other_group_state)
    ui.set_visible(ref.fakepeek[1], other_group_state)
    ui.set_visible(ref.fakepeek[2], other_group_state)
end

local antiaim_builder = {}
local space = {"\n", "\n\n", "\n\n\n", "\n\n\n\n", "\n\n\n\n\n", "\n\n\n\n\n\n", "\n\n\n\n\n\n\n", "\n\n\n\n\n\n\n\n", '\n\n\n\n\n\n\n\n\n', '\n\n\n\n\n\n\n\n\n\n', '\n\n\n\n\n\n\n\n\n\n\n', '\n\n\n\n\n\n\n\n\n\n\n\n'}

for i = 1, #aa_conditions do
    antiaim_builder[i] = {
        override = lua_group:checkbox('Override · \v'..aa_conditions[i]),
        label9 = lua_group:label(' '),
        label8 = lua_group:label('\v\r Yaw'),
        label7 = lua_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
        yaw = lua_group:slider('Yaw Offset'..space[i], -180, 180, 0, true, '°', 1),
        yaw_add = lua_group:checkbox('Add L&R Yaw'..space[i]),
        yaw_left = lua_group:slider('Yaw Left'..space[i], -180, 180, 0, true, '°', 1),
        yaw_right = lua_group:slider('Yaw Right'..space[i], -180, 180, 0, true, '°', 1),
        yaw_random = lua_group:slider('Random'..space[i], 0, 100, 0, true, '%', 1),
        label10 = lua_group:label(' '),
        label11 = lua_group:label('\v\r  Modifier'),
        label12222 = lua_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
        mod_type = lua_group:slider('\n'..space[i], 1, 5, 1, true, '', 1, {[1] = 'Off', [2] = 'Offset', [3] = 'Center', [4] = 'Random', [5] = 'Skitter'}),
        mod_offset = lua_group:slider('\nmod_offset'..space[i], -180, 180, 0, true, '°', 1),
        mod_addon = lua_group:slider('\nmod_addon'..space[i], 1, 3, 1, true, '', 1, {[1] = 'Default', [2] = 'Randomize', [3] = 'Switch'}),
        mod_random = lua_group:slider('\nmod_random '..space[i], 0, 100, 0, true, '%', 1),
        label14 = lua_group:label(' '),
        label13 = lua_group:label('\v\r  Body Settings'),
        label12 = lua_group:label('\a505050FF‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾'),
        body_yaw = lua_group:checkbox('Body Yaw'..space[i]),
        body_yaw_type = lua_group:combobox('Type'..space[i], {'Opposite', 'Jitter', 'Static'}),
        body_amount = lua_group:slider('Amount'..space[i], -180, 180, 0, true, '°', 1),
        body_delay = lua_group:slider('Delay'..space[i], 0, 10, 0, true, 't', 1),
        body_delay_random = lua_group:slider('Random  '..space[i], 0, 6, 0, true, 't', 1),
        force_lc = lua_group:checkbox('Force \vBreakLC'..space[i]),
        snap_aa = lua_group:checkbox('Snap AA'..space[i]),
        label3 = lua_group:label(' '),
        defensive_mode = lua_group:combobox('Defensive Mode'..space[i], {'Safest', 'Maximum'}), --'L&R'
        defensive_yaw = lua_group:combobox('Defensive Yaw'..space[i], {'Off', 'Static', 'Spin', 'Random', 'Random Static', 'Flick Exploit'}), --'L&R'
        defensive_offset = lua_group:slider('Yaw Offset '..space[i], -180, 180, 0, true, '°', 1),
        defensive_left = lua_group:slider('Yaw Left '..space[i], -180, 180, 0, true, '°', 1),
        defensive_right = lua_group:slider('Yaw Right '..space[i], -180, 180, 0, true, '°', 1),
        defensive_spin = lua_group:slider('Spin Offset'..space[i], 0, 360, 360, true, '°', 1),
        defensive_speed = lua_group:slider('Spin Speed'..space[i], -50, 50, 10, true, 't', 0.1),
        defensive_pitch = lua_group:combobox('Defensive Pitch'..space[i], {'Off', 'Offset', 'L&R', 'Random', 'Random Static'}),
        defensive_pitch_offset = lua_group:slider('Pitch Offset'..space[i], -89, 89, 0, true, '°', 1),
        defensive_pitch_min = lua_group:slider('Pitch Min'..space[i], -89, 89, 0, true, '°', 1),
        defensive_pitch_max = lua_group:slider('Pitch Max'..space[i], -89, 89, 0, true, '°', 1),
        defensive_addons = lua_group:multiselect('Addons'..space[i], {'Modifier', 'Body Yaw'}),
        defensive_mod_type = lua_group:combobox('Modifier '..space[i], {'Off', 'Offset', 'Center', 'Random', 'Skitter'}),
        defensive_mod_offset = lua_group:slider('Modifier Offset '..space[i], -180, 180, 0, true, '°', 1),
        defensive_mod_random = lua_group:slider('Random   '..space[i], 0, 100, 0, true, '%', 1),
        defensive_body_yaw_type = lua_group:combobox('Body Yaw Type'..space[i], {'Opposite', 'Jitter', 'Static'}),
        defensive_body_amount = lua_group:slider('Amount '..space[i], -180, 180, 0, true, '°', 1),
        defensive_body_delay = lua_group:slider('Delay '..space[i], 0, 10, 0, true, 't', 1),
        defensive_body_delay_random = lua_group:slider('Random    '..space[i], 0, 6, 0, true, 't', 1),
    }   
end

lua_items.antiaim.to_def:set_callback(function()
    lua_items.antiaim.is_def:set(true)
end)

lua_items.antiaim.to_build:set_callback(function()
    lua_items.antiaim.is_def:set(false)
end)

local is_info = {lua_items.main.tab, ' MainMenu'}
local is_antiaim = {lua_items.main.tab, ' Anti-Aim'}
local is_settings = {lua_items.main.tab, ' Features'}
local is_ragebot = {lua_items.select.tab3, ' RageBot'}
local is_misc = {lua_items.select.tab3, ' Miscellaneous'}
local is_visuals = {lua_items.select.tab3, ' Visuals'}
local is_main = {lua_items.antiaim.tab, ' Helpers'}
local is_direction = {lua_items.antiaim.tab, ' Keybinds'}
local is_fakelag = {lua_items.antiaim.tab, ' Fake Lag'}

lua_items.main.tab:depend()

lua_items.main.labeluser:depend(is_show, is_info, is_information)
lua_items.main.labelbuild:depend(is_show, is_info, is_information)
lua_items.main.label333:depend(is_show, is_info, is_information)
lua_items.main.label123123:depend(is_show, is_info, is_information)
lua_items.main.label12312312:depend(is_show, is_info, is_information)
lua_items.main.label1231231:depend(is_show, is_info, is_information)
lua_items.main.labelselect:depend(is_show, is_info)

lua_items.main.funny1:depend(is_show, is_info)
lua_items.main.funny2:depend(is_show, is_info)
lua_items.main.funny3:depend(is_show, is_info)
lua_items.main.funny4:depend(is_show, is_info)
lua_items.main.funny5:depend(is_show, is_info)
lua_items.main.funny6:depend(is_show, is_info)
lua_items.main.label_1:depend(is_show, is_info)

lua_items.main.is_show:depend(is_show, is_info, {lua_items.main.is_show, function() return false end})
lua_items.main.is_show2:depend(is_show, is_info, {lua_items.main.is_show2, function() return false end})
lua_items.main.list:depend(is_show, is_info)
lua_items.main.name:depend(is_show, is_info)
lua_items.main.create:depend(is_show, is_info)
lua_items.main.load:depend(is_show, is_info, {lua_items.main.is_show, true}, {lua_items.main.is_show2, true})
lua_items.main.save:depend(is_show, is_info, {lua_items.main.is_show, true}, {lua_items.main.is_show2, true})
lua_items.main.accept:depend(is_show, is_info, {lua_items.main.is_show, false})
lua_items.main.decline:depend(is_show, is_info, {lua_items.main.is_show, false})
lua_items.main.label1:depend(is_show, is_info, {lua_items.main.is_show, false})
lua_items.main.label2:depend(is_show, is_info, {lua_items.main.is_show, false})
lua_items.main.delete:depend(is_show, is_info, {lua_items.main.is_show2, true}, {lua_items.main.is_show, true})
lua_items.main.accept2:depend(is_show, is_info, {lua_items.main.is_show2, false})
lua_items.main.decline2:depend(is_show, is_info, {lua_items.main.is_show2, false})
lua_items.main.label3:depend(is_show, is_info, {lua_items.main.is_show2, false})
lua_items.main.label4:depend(is_show, is_info, {lua_items.main.is_show2, false})
lua_items.main.import:depend(is_show, is_info, {lua_items.main.is_show, true}, {lua_items.main.is_show2, true})
lua_items.main.export:depend(is_show, is_info, {lua_items.main.is_show, true}, {lua_items.main.is_show2, true})

lua_items.main.label3:depend({lua_items.main.tab, function() return lua_items.main.tab:get() ~= 'Anti-Aim' end})

lua_items.antiaim.tab:depend(is_show, is_antiaim)

lua_items.antiaim.label20:depend(is_show, is_antiaim, is_main)
lua_items.antiaim.label21:depend(is_show, is_antiaim, is_main)
lua_items.antiaim.label22:depend(is_show, is_antiaim, is_main)
lua_items.antiaim.addons:depend(is_show, is_antiaim, is_main)
lua_items.antiaim.aa_override:depend(is_show, is_antiaim, is_main, {lua_items.antiaim.addons, 'Override Anti-Aim'})
lua_items.antiaim.safe_head:depend(is_show, is_antiaim, {lua_items.antiaim.addons, 'Safe Head'}, is_main)
lua_items.antiaim.height_difference:depend(is_show, is_antiaim, {lua_items.antiaim.addons, 'Safe Head'}, {lua_items.antiaim.safe_head, 'Height Difference'}, is_main)
lua_items.antiaim.defensive_triggers:depend(is_show, is_antiaim, is_main)
lua_items.antiaim.defensive_condition:depend(is_show, is_antiaim, {lua_items.antiaim.defensive_triggers, function() return lua_items.antiaim.defensive_triggers:get('Hittable') or lua_items.antiaim.defensive_triggers:get('Reload') or lua_items.antiaim.defensive_triggers:get('Flashed') or lua_items.antiaim.defensive_triggers:get('Damaged') or lua_items.antiaim.defensive_triggers:get('Weapon Swap') end}, is_main)

lua_items.antiaim.fl_amount:depend(is_show, is_antiaim, is_fakelag)
lua_items.antiaim.fl_variance:depend(is_show, is_antiaim, is_fakelag, {lua_items.antiaim.fl_amount, function() return lua_items.antiaim.fl_amount:get() ~= 'Adaptive' end})
lua_items.antiaim.fl_limit:depend(is_show, is_antiaim, is_fakelag, {lua_items.antiaim.fl_amount, function() return lua_items.antiaim.fl_amount:get() ~= 'Adaptive' end})
lua_items.antiaim.labelchangW:depend(is_show, is_antiaim, is_fakelag, {lua_items.antiaim.fl_amount, function() return lua_items.antiaim.fl_amount:get() == 'Adaptive' end})
lua_items.antiaim.labelchangW2:depend(is_show, is_antiaim, is_fakelag, {lua_items.antiaim.fl_amount, function() return lua_items.antiaim.fl_amount:get() == 'Adaptive' end})
lua_items.antiaim.fl_disablers:depend(is_show, is_antiaim, is_fakelag)

lua_items.antiaim.labelfl1:depend(is_show, is_antiaim, is_fakelag)
lua_items.antiaim.labelfl2:depend(is_show, is_antiaim, is_fakelag)
lua_items.antiaim.labelfl3:depend(is_show, is_antiaim, is_fakelag)
lua_items.antiaim.label50:depend(is_show, is_antiaim, is_direction)
lua_items.antiaim.label51:depend(is_show, is_antiaim, is_direction)
lua_items.antiaim.label52:depend(is_show, is_antiaim, is_direction)
lua_items.antiaim.edgeyaw_on_fd:depend(is_show, is_antiaim, is_direction)
lua_items.antiaim.freestanding:depend(is_show, is_antiaim, is_direction)
lua_items.antiaim.freestanding_key:depend(is_show, is_antiaim, {lua_items.antiaim.freestanding, true}, is_direction)
lua_items.antiaim.fr_options:depend(is_show, is_antiaim, {lua_items.antiaim.freestanding, true}, is_direction)
lua_items.antiaim.fr_disablers:depend(is_show, is_antiaim, {lua_items.antiaim.freestanding, true}, {lua_items.antiaim.fr_options, 'Disablers'}, is_direction)
lua_items.antiaim.manual_direction:depend(is_show, is_antiaim, is_direction)
lua_items.antiaim.yaw_options:depend(is_show, is_antiaim, {lua_items.antiaim.manual_direction, true}, is_direction)
lua_items.antiaim.key_left:depend(is_show, is_antiaim, {lua_items.antiaim.manual_direction, true}, is_direction)
lua_items.antiaim.key_right:depend(is_show, is_antiaim, {lua_items.antiaim.manual_direction, true}, is_direction)
lua_items.antiaim.key_forward:depend(is_show, is_antiaim, {lua_items.antiaim.manual_direction, true}, is_direction)

lua_items.antiaim.is_def:depend({lua_items.main.tab, function() return false end})
lua_items.antiaim.to_def:depend(is_show, is_antiaim, {lua_items.antiaim.is_def, false})
lua_items.antiaim.to_build:depend(is_show, is_antiaim, {lua_items.antiaim.is_def, true})

lua_items.antiaim.label17:depend(is_show, is_antiaim)
lua_items.antiaim.label16:depend(is_show, is_antiaim)
lua_items.antiaim.label15:depend(is_show, is_antiaim)
lua_items.antiaim.pitch:depend(is_show, is_antiaim, {lua_items.antiaim.is_def, false})
lua_items.antiaim.yaw_base:depend(is_show, is_antiaim, {lua_items.antiaim.is_def, false})
lua_items.antiaim.condition:depend(is_show, is_antiaim)
lua_items.antiaim.label2:depend(is_show, is_antiaim)

lua_items.select.tab3:depend(is_show, is_settings)

lua_items.select.label26:depend(is_show, is_settings, is_ragebot)
lua_items.select.label27:depend(is_show, is_settings, is_ragebot)
lua_items.select.label28:depend(is_show, is_settings, is_ragebot)
lua_items.select.label59:depend(is_show, is_settings, is_ragebot)
lua_items.select.label29:depend(is_show, is_settings, is_ragebot)
lua_items.select.label30:depend(is_show, is_settings, is_ragebot)
lua_items.select.labelot1:depend(is_show, is_settings, is_ragebot)
lua_items.select.labelot2:depend(is_show, is_settings, is_ragebot)
lua_items.select.labelot3:depend(is_show, is_settings, is_ragebot)
lua_items.select.predict:depend(is_show, is_settings, is_ragebot)
lua_items.select.predict_key:depend(is_show, is_settings, is_ragebot, {lua_items.select.predict, true})
lua_items.select.hideshot_fix:depend(is_show, is_settings, is_ragebot)
lua_items.select.dt_fix:depend(is_show, is_settings, is_ragebot)
lua_items.select.sv_lagger:depend(is_show, is_settings, is_ragebot)
lua_items.select.unsafe_charge:depend(is_show, is_settings, is_ragebot)
lua_items.select.resolver:depend(is_show, is_settings, is_ragebot)
lua_items.select.scout_airstop:depend(is_show, is_settings, is_ragebot)
lua_items.select.scout_airstop_bind:depend(is_show, is_settings, is_ragebot, {lua_items.select.scout_airstop, true})

lua_items.select.ai_peek:depend(is_show, is_settings, is_ragebot)
lua_items.select.dot_offset:depend(is_show, is_settings, is_ragebot, {lua_items.select.ai_peek, true})
lua_items.select.dot_span:depend(is_show, is_settings, is_ragebot, {lua_items.select.ai_peek, true})
lua_items.select.dot_amount:depend(is_show, is_settings, is_ragebot, {lua_items.select.ai_peek, true})


lua_items.select.jumpscout1:depend(is_show, is_settings, is_ragebot)

lua_items.select.label6:depend(is_show, is_settings, is_misc)
lua_items.select.fps_boost:depend(is_show, is_settings, is_misc)
lua_items.select.fps_always:depend(is_show, is_settings, is_misc, {lua_items.select.fps_boost, true})
lua_items.select.fps_detect:depend(is_show, is_settings, is_misc, {lua_items.select.fps_boost, true}, {lua_items.select.fps_always, false})
lua_items.select.fps_opt:depend(is_show, is_settings, is_misc, {lua_items.select.fps_boost, true})

lua_items.select.buy_bot:depend(is_show, is_settings, is_misc)
lua_items.select.buybot_primary:depend(is_show, is_settings, is_misc, {lua_items.select.buy_bot, true})
lua_items.select.buybot_secondary:depend(is_show, is_settings, is_misc, {lua_items.select.buy_bot, true})
lua_items.select.buybot_utility:depend(is_show, is_settings, is_misc, {lua_items.select.buy_bot, true})
lua_items.select.fast_ladder:depend(is_show, is_settings, is_misc)

lua_items.select.labelb2:depend(is_show, is_settings, is_misc)
lua_items.select.labelb3:depend(is_show, is_settings, is_misc)
lua_items.select.labelo1:depend(is_show, is_settings, is_misc)
lua_items.select.labelo2:depend(is_show, is_settings, is_misc)
lua_items.select.labelo3:depend(is_show, is_settings, is_misc)
lua_items.select.labelf1:depend(is_show, is_settings, is_misc)
lua_items.select.labelf2:depend(is_show, is_settings, is_misc)
lua_items.select.labelf3:depend(is_show, is_settings, is_misc)
lua_items.select.clantag:depend(is_show, is_settings, is_misc)
lua_items.select.trashtalk:depend(is_show, is_settings, is_misc)
lua_items.select.filter_console:depend(is_show, is_settings, is_misc)
lua_items.select.enemy_chat:depend(is_show, is_settings, is_misc)
lua_items.select.auto_tp:depend(is_show, is_settings, is_misc)
lua_items.select.auto_tp_key:depend(is_show, is_settings, is_misc, {lua_items.select.auto_tp, true})

lua_items.select.anims:depend(is_show, is_settings, is_misc)
lua_items.select.anims_ground:depend(is_show, is_settings, is_misc, {lua_items.select.anims, true})
lua_items.select.anims_ground_amount:depend(is_show, is_settings, is_misc, {lua_items.select.anims, true}, {lua_items.select.anims_ground, function() return lua_items.select.anims_ground:get() ~= 'Off' end})
lua_items.select.anims_air:depend(is_show, is_settings, is_misc, {lua_items.select.anims, true})
lua_items.select.anims_air_amount:depend(is_show, is_settings, is_misc, {lua_items.select.anims, true}, {lua_items.select.anims_air, function() return lua_items.select.anims_air:get() ~= 'Off' end})
lua_items.select.move_lean:depend(is_show, is_settings, is_misc, {lua_items.select.anims, true})
lua_items.select.move_lean_amount:depend(is_show, is_settings, is_misc, {lua_items.select.anims, true}, {lua_items.select.move_lean, function() return lua_items.select.move_lean:get() ~= 'Off' end})

lua_items.select.label6:depend(is_show, is_settings, is_visuals)
lua_items.select.label31:depend(is_show, is_settings, is_visuals)
lua_items.select.label32:depend(is_show, is_settings, is_visuals)
lua_items.select.label33:depend(is_show, is_settings, is_visuals)
lua_items.select.label34:depend(is_show, is_settings, is_visuals)
lua_items.select.label35:depend(is_show, is_settings, is_visuals)
lua_items.select.label36:depend(is_show, is_settings, is_visuals)
lua_items.select.label37:depend(is_show, is_settings, is_visuals)
lua_items.select.label38:depend(is_show, is_settings, is_visuals)
lua_items.select.widgets_list:depend(is_show, is_settings, is_visuals)
lua_items.select.keybinds_speed:depend(is_show, is_settings, is_visuals, {lua_items.select.widgets_list, function() return lua_items.select.widgets_list:get('Keybinds') end})
lua_items.select.widgets_color:depend(is_show, is_settings, is_visuals)
lua_items.select.widgets_warning1:depend(is_show, is_settings, is_visuals)
lua_items.select.widgets_warning2:depend(is_show, is_settings, is_visuals)
lua_items.select.ragebot_logs_select:depend(is_show, is_settings, is_visuals, {lua_items.select.widgets_list, function() return lua_items.select.widgets_list:get('Logs') end})
lua_items.select.ragebot_hit:depend(is_show, is_settings, is_visuals, {lua_items.select.widgets_list, function() return lua_items.select.widgets_list:get('Logs'), lua_items.select.ragebot_logs_select:get('Console') or lua_items.select.ragebot_logs_select:get('Screen') end})
lua_items.select.ragebot_miss:depend(is_show, is_settings, is_visuals, {lua_items.select.widgets_list, function() return lua_items.select.widgets_list:get('Logs'), lua_items.select.ragebot_logs_select:get('Console') or lua_items.select.ragebot_logs_select:get('Screen') end})
lua_items.select.custom_scope:depend(is_show, is_settings, is_visuals)
lua_items.select.custom_scope_length:depend(is_show, is_settings, is_visuals, {lua_items.select.custom_scope, true})
lua_items.select.custom_scope_offset:depend(is_show, is_settings, is_visuals, {lua_items.select.custom_scope, true})
lua_items.select.damage_ind:depend(is_show, is_settings, is_visuals)
lua_items.select.damage_over:depend(is_show, is_settings, is_visuals, {lua_items.select.damage_ind, true})
lua_items.select.damage_type:depend(is_show, is_settings, is_visuals, {lua_items.select.damage_ind, true})
lua_items.select.manual_ind:depend(is_show, is_settings, is_visuals)
lua_items.select.manual_active:depend(is_show, is_settings, is_visuals, {lua_items.select.manual_ind, true})
lua_items.select.manual_ind_type:depend(is_show, is_settings, is_visuals, {lua_items.select.manual_ind, true})
lua_items.select.velocity_warning:depend(is_show, is_settings, is_visuals)
lua_items.select.defensive_warning:depend(is_show, is_settings, is_visuals)
lua_items.select.Style_Panel:depend(is_show, is_settings, is_visuals)
lua_items.select.Cross_indicator:depend(is_show, is_settings, is_visuals)
lua_items.select.AA_debug:depend(is_show, is_settings, is_visuals)
lua_items.select.kibit_hitmarker:depend(is_show, is_settings, is_visuals)
lua_items.select.animated_zoom:depend(is_show, is_settings, is_visuals)
lua_items.select.animated_step:depend(is_show, is_settings, is_visuals, {lua_items.select.animated_zoom, true})
lua_items.select.thirdperson:depend(is_show, is_settings, is_visuals)
lua_items.select.thirdperson_value:depend(is_show, is_settings, is_visuals, {lua_items.select.thirdperson, true})



for i = 1, #aa_conditions do
    local cond_check = {lua_items.antiaim.condition, function() return (i ~= 1) end}
    local state = {antiaim_builder[i].override, function() if (i == 1) then return true else return antiaim_builder[i].override:get() end end}
    local tab_cond = {lua_items.antiaim.condition, aa_conditions[i]}
    local is_build = {lua_items.antiaim.is_def, false}
    local is_def = {lua_items.antiaim.is_def, true}
    antiaim_builder[i].override:depend(is_show, is_antiaim, cond_check, tab_cond)
    antiaim_builder[i].label9:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].label8:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].label7:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].yaw_add:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].yaw:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].yaw_left:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].yaw_add, true}, is_build)
    antiaim_builder[i].yaw_right:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].yaw_add, true}, is_build)
    antiaim_builder[i].yaw_random:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].yaw_add, true}, is_build)
    antiaim_builder[i].label10:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].label11:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].label12222:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].mod_type:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].mod_offset:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].mod_type, function() return antiaim_builder[i].mod_type:get() ~= 1 end}, is_build)
    antiaim_builder[i].mod_addon:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].mod_type, function() return antiaim_builder[i].mod_type:get() ~= 1 end}, is_build)
    antiaim_builder[i].mod_random:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].mod_type, function() return antiaim_builder[i].mod_type:get() ~= 1 end}, {antiaim_builder[i].mod_addon, function() return antiaim_builder[i].mod_addon:get() ~= 1 end}, is_build)
    antiaim_builder[i].label14:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].label13:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].label12:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].body_yaw:depend(is_show, is_antiaim, state, tab_cond, is_build)
    antiaim_builder[i].body_yaw_type:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].body_yaw, true}, is_build)
    antiaim_builder[i].body_amount:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].body_yaw, true}, {antiaim_builder[i].body_yaw_type, 'Static'}, is_build)
    antiaim_builder[i].body_delay:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].body_yaw, true}, {antiaim_builder[i].body_yaw_type, 'Jitter'}, is_build)
    antiaim_builder[i].body_delay_random:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].body_yaw, true}, {antiaim_builder[i].body_yaw_type, 'Jitter'}, {antiaim_builder[i].body_delay, function() return antiaim_builder[i].body_delay:get() > 0 end}, is_build)

    antiaim_builder[i].force_lc:depend(is_show, is_antiaim, state, tab_cond, is_def)
    antiaim_builder[i].snap_aa:depend(is_show, is_antiaim, state, tab_cond, is_def)

    antiaim_builder[i].defensive_mode:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, is_def)
    antiaim_builder[i].defensive_yaw:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, is_def)
    antiaim_builder[i].defensive_offset:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_yaw, function() return antiaim_builder[i].defensive_yaw:get() == 'Static' or antiaim_builder[i].defensive_yaw:get() == 'Flick Exploit'end}, is_def)
    antiaim_builder[i].defensive_left:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_yaw, function() return antiaim_builder[i].defensive_yaw:get() == 'Random' or antiaim_builder[i].defensive_yaw:get() == 'Random Static' end}, is_def)--antiaim_builder[i].defensive_yaw:get() == 'L&R' or 
    antiaim_builder[i].defensive_right:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_yaw, function() return antiaim_builder[i].defensive_yaw:get() == 'Random' or antiaim_builder[i].defensive_yaw:get() == 'Random Static' end}, is_def)--antiaim_builder[i].defensive_yaw:get() == 'L&R' or 
    antiaim_builder[i].defensive_spin:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_yaw, 'Spin'}, is_def)
    antiaim_builder[i].defensive_speed:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_yaw, 'Spin'}, is_def)
    antiaim_builder[i].defensive_pitch:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, is_def)
    antiaim_builder[i].defensive_pitch_offset:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_pitch, 'Offset'}, is_def)
    antiaim_builder[i].defensive_pitch_min:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_pitch, function() return antiaim_builder[i].defensive_pitch:get() ~= 'Off' and antiaim_builder[i].defensive_pitch:get() ~= 'Offset' end}, is_def)
    antiaim_builder[i].defensive_pitch_max:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_pitch, function() return antiaim_builder[i].defensive_pitch:get() ~= 'Off' and antiaim_builder[i].defensive_pitch:get() ~= 'Offset' end}, is_def)
    
    antiaim_builder[i].defensive_addons:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, is_def)
    antiaim_builder[i].defensive_mod_type:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_addons, 'Modifier'}, is_def)
    antiaim_builder[i].defensive_mod_offset:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_addons, 'Modifier'}, {antiaim_builder[i].defensive_mod_type, function() return antiaim_builder[i].defensive_mod_type:get() ~= 'Off' end}, is_def)
    antiaim_builder[i].defensive_mod_random:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_addons, 'Modifier'}, {antiaim_builder[i].defensive_mod_type, function() return antiaim_builder[i].defensive_mod_type:get() ~= 'Off' end}, is_def)
    antiaim_builder[i].defensive_body_yaw_type:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_addons, 'Body Yaw'}, is_def)
    antiaim_builder[i].defensive_body_amount:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_addons, 'Body Yaw'}, {antiaim_builder[i].defensive_body_yaw_type, 'Static'}, is_def)
    antiaim_builder[i].defensive_body_delay:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_addons, 'Body Yaw'}, {antiaim_builder[i].defensive_body_yaw_type, 'Jitter'}, is_def)
    antiaim_builder[i].defensive_body_delay_random:depend(is_show, is_antiaim, state, tab_cond, {antiaim_builder[i].snap_aa, true}, {antiaim_builder[i].defensive_addons, 'Body Yaw'}, {antiaim_builder[i].defensive_body_yaw_type, 'Jitter'}, {antiaim_builder[i].defensive_body_delay, function() return antiaim_builder[i].defensive_body_delay:get() > 0 end}, is_def)
    
    antiaim_builder[i].label3:depend(is_show, is_antiaim, state, tab_cond, is_def)
end

local function check_charge()
    local lp = entity.get_local_player()
    local m_nTickBase = entity.get_prop(lp, 'm_nTickBase')
    local client_latency = client.latency()
    local shift = math.floor(m_nTickBase - globals.tickcount() - 3 - toticks(client_latency) * .5 + .5 * (client_latency * 10))
    local wanted = -14 + (ui.get(ref.doubletap.fakelag_limit) - 1) + 3
    return shift <= wanted
end

anti_knife_dist = function (x1, y1, z1, x2, y2, z2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2)
end

--多处引用，所以直接放在头部
local get_e_distance = function()
    local result = math.huge
    local lp = entity.get_local_player()
    local entities = entity.get_players(true)

       for i = 1, #entities do
        local ent = entities[i]
        local ex, ey, ez = entity.get_prop(ent, "m_vecOrigin")
        local lx, ly, lz = entity.get_prop(entity.get_local_player(), "m_vecOrigin")
           if ent ~= lp and entity.is_alive(ent) then
               local distance = math.sqrt((lx - ex)^2 + (ly - ey)^2 + (lz - ez)^2)
               if distance < result then
                result = distance
               end
           end
       end
       return math.floor(result/10)
   end


local function is_vulnerable()
    for _, v in ipairs(entity.get_players(true)) do
        local flags = (entity.get_esp_data(v)).flags
        if bit.band(flags, bit.lshift(1, 11)) ~= 0 then
            return true
        end
    end
    return false
end

local legit_aa = { } do
    local is_interact_traced = false

    local function should_update(cmd, items)
        local me = entity.get_local_player()

        if me == nil then
            return false
        end

        local weapon = entity.get_player_weapon(me)

        if weapon == nil then
            return false
        end

        local weapon_info = csgo_weapons(weapon)

        if weapon_info == nil then
            return false
        end

        local team = entity.get_prop(me, 'm_iTeamNum')
        local my_origin = vector(entity.get_origin(me))

        local is_weapon_bomb = weapon_info.idx == 49

        local is_defusing = entity.get_prop(me, 'm_bIsDefusing') == 1
        local is_rescuing = entity.get_prop(me, 'm_bIsGrabbingHostage') == 1

        local in_bomb_site = entity.get_prop(me, 'm_bInBombZone') == 1

        if is_defusing or is_rescuing then
            return false
        end

        if in_bomb_site and is_weapon_bomb then
            return false
        end

        if team == 3 and cmd.pitch > 15 then
            local bombs = entity.get_all 'CPlantedC4'

            for i = 1, #bombs do
                local bomb = bombs[i]

                local origin = vector(
                    entity.get_origin(bomb)
                )

                local delta = origin - my_origin
                local distancesqr = delta:lengthsqr()

                if distancesqr < (62 * 62) then
                    return false
                end
            end
        end

        local camera = vector(client.camera_angles())
        local forward = vector():init_from_angles(camera:unpack())

        local eye_pos = vector(client.eye_position())
        local end_pos = eye_pos + forward * 128

        local fraction, entindex = client.trace_line(
            me, eye_pos.x, eye_pos.y, eye_pos.z, end_pos.x, end_pos.y, end_pos.z
        )

        if fraction ~= 1 then
            if entindex == -1 then
                return true
            end

            local classname = entity.get_classname(entindex)

            if classname == 'CWorld' then
                return true
            end

            if classname == 'CFuncBrush' then
                return true
            end

            if classname == 'CCSPlayer' then
                return true
            end

            if classname == 'CHostage' then
                local origin = vector(entity.get_origin(entindex))
                local distance = eye_pos:distsqr(origin)

                if distance < (84 * 84) then
                    return false
                end
            end

            if not is_interact_traced then
                is_interact_traced = true
                return false
            end
        end

        return true
    end

    function legit_aa:update(cmd)
        if cmd.in_use == 0 then
            is_interact_traced = false

            return false
        end


        if not should_update(cmd) then
            return false
        end

        cmd.in_use = 0

        return true
    end
end

local choked_command_record = {
    cmd_num = 0,
    cmd_yaw = 0,
    cmd_pitch = 0,
}

local exploits = (function()
    local clases = {}
    function class(name)
        return function(tab)
            if not tab then
                return clases[name]
            end
            tab.__index, tab.__classname = tab, name
            if tab.call then
                tab.__call = tab.call
            end
            setmetatable(tab, tab)
            clases[name], _G[name] = tab, tab
            return tab
        end
    end
    local g_ctx = {
        local_player = nil,
        doubletap = { ui.reference("RAGE", "Aimbot", 'Double tap') },
        hideshots = { ui.reference("AA", 'Other', 'On shot anti-aim') },
    }
    local clamp = function(value, min, max)
        return math.min(math.max(value, min), max)
    end
    local exploits_class = {
        max_process_ticks = math.abs(client.get_cvar("sv_maxusrcmdprocessticks")) - 1,
        tickbase_difference = 0,
        ticks_processed = 0,
        command_number = 0,
        choked_commands = 0,
        need_force_defensive = false,
        reset_vars = function(self)
            self.ticks_processed = 0
            self.tickbase_difference = 0
            self.choked_commands = 0
            self.command_number = 0
        end,
        store_vars = function(self, ctx)
            self.command_number = ctx.command_number
            self.choked_commands = ctx.chokedcommands
        end,
        store_tickbase_difference = function(self, ctx)
            if ctx.command_number == self.command_number then
                self.ticks_processed = clamp(math.abs(entity.get_prop(g_ctx.local_player, "m_nTickBase") - self.tickbase_difference), 0, self.max_process_ticks - self.choked_commands)
                self.tickbase_difference = math.max(entity.get_prop(g_ctx.local_player, "m_nTickBase"), self.tickbase_difference or 0)
                self.command_number = 0
            end
        end,
        is_doubletap = function(self)
            return ui.get(g_ctx.doubletap[2])
        end,
        is_hideshots = function(self)
            return ui.get(g_ctx.hideshots[2])
        end,
        is_active = function(self)
            return self:is_doubletap() or self:is_hideshots()
        end,
        in_defensive = function(self, safe)
            if safe then
                return self:is_active() and (self.ticks_processed > 2 and self.ticks_processed < self.max_process_ticks)
            else
                return self:is_active() and (self.ticks_processed > 1 and self.ticks_processed < self.max_process_ticks)
            end
        end,
        is_defensive_ended = function(self)
            return not self:in_defensive() or (self.ticks_processed >= 0 and self.ticks_processed <= 5) and self.tickbase_difference > 0
        end,
        should_force_defensive = function(self, state)
            if not self:is_active() then
                return false
            end
            self.need_force_defensive = state and self:is_defensive_ended()
        end
    }
    class("exploits")(exploits_class)

    local event_list = {
        on_setup_command = function(ctx)
            if not (entity.get_local_player() and entity.is_alive(entity.get_local_player())) then
                return
            end
            g_ctx.local_player = entity.get_local_player()
            if exploits.need_force_defensive then
                ctx.force_defensive = true
            end
        end,
        on_run_command = function(ctx)
            exploits:store_vars(ctx)
        end,
        on_predict_command = function(ctx)
            exploits:store_tickbase_difference(ctx)
        end,
        on_player_death = function(ctx)
            if not (ctx.userid and ctx.attacker) then
                return
            end
            if g_ctx.local_player ~= client.userid_to_entindex(ctx.userid) then
                return
            end
            exploits:reset_vars()
        end,
        on_level_init = function()
            exploits:reset_vars()
        end,
        on_round_start = function()
            exploits:reset_vars()
        end,
        on_round_end = function()
            exploits:reset_vars()
        end,
        on_shutdown = function()
            collectgarbage("collect")
        end
    }
    for k, v in next, event_list do
        client.set_event_callback(k:sub(4), function(ctx)
            v(ctx)
        end)
    end
    return exploits
end)()

function is_defensive_active(safe)
    if not check_charge() then return false end
    return exploits:in_defensive(safe)
end

client.set_event_callback('setup_command', function(cmd)
    local lp = entity.get_local_player()
    if lp == nil then return end

    choked_command_record.cmd_num = cmd.chokedcommands
    choked_command_record.cmd_yaw = cmd.yaw
    choked_command_record.cmd_pitch = cmd.pitch
end)

local id = 1   
function aa_helpers.player_state(cmd)
    local lp = entity.get_local_player()
    if lp == nil then return end

    local vecvelocity = { entity.get_prop(lp, 'm_vecVelocity') }
    local flags = entity.get_prop(lp, 'm_fFlags')
    local velocity = math.sqrt(vecvelocity[1]^2+vecvelocity[2]^2)
    local groundcheck = bit.band(flags, 1) == 1
    local jumpcheck = bit.band(flags, 1) == 0 or cmd.in_jump == 1
    local ducked = entity.get_prop(lp, 'm_flDuckAmount') > 0.7
    local duckcheck = ducked or ui.get(ref.fakeduck)
    local slowwalk_key = ui.get(ref.slow[1]) and ui.get(ref.slow[2])

    if jumpcheck and duckcheck then return "Air+C"
    elseif jumpcheck then return "Air"
    elseif duckcheck and velocity > 10 then return "Duck-Moving"
    elseif duckcheck and velocity < 10 then return "Duck"
    elseif groundcheck and slowwalk_key then return "Walking"
    elseif groundcheck and velocity > 5 then return "Moving"
    elseif groundcheck and velocity < 5 then return "Stand"
    else return "Global" end
end

local function normalize_yaw(yaw)
    return (yaw + 180) % 360 - 180
end
 
local function randomize_value(original_value, percent)
    local min_range = original_value - (original_value * percent / 100)
    local max_range = original_value + (original_value * percent / 100)
    return math.random(min_range, max_range)
end

function aa_helpers.custom_spin(value, offset)
    if offset == 0 then
        return 0
    end

    if value >= 0 then
        tick = globals.tickcount() * value
        result = (tick % offset) - offset/2
        return result
    else
        tick = globals.tickcount() * value
        result = (tick % -offset) + offset/2
        return result
    end
end

local yaw_direction = 0
local last_press_t_dir = 0
local is_freestand = false
local is_static = false

local function run_direction(cmd)
    local lp = entity.get_local_player()
    if lp == nil then return end
    local vecvelocity = { entity.get_prop(lp, 'm_vecVelocity') }
    local flags = entity.get_prop(lp, 'm_fFlags')
    local jumpcheck = bit.band(flags, 1) == 0 or cmd.in_jump == 1
    local moving = math.sqrt(vecvelocity[1]^2+vecvelocity[2]^2) > 10
    local ducked = entity.get_prop(lp, 'm_flDuckAmount') > 0.7
    local duckcheck = ducked or ui.get(ref.fakeduck)

    local is_walking = moving and ui.get(ref.slow[1]) and ui.get(ref.slow[2])
    local is_crouching = duckcheck and not jumpcheck

    local fr_disabler = lua_items.antiaim.fr_options:get('Disablers')

    is_freestand = lua_items.antiaim.freestanding:get() and lua_items.antiaim.freestanding_key:get()
    local is_quick_peek = ui.get(ref.quick_peek[1]) and ui.get(ref.quick_peek[2])

    if yaw_direction ~= 0 then
        ui.set(ref.freestand[1], false)
        is_freestand = false
    elseif (fr_disabler and lua_items.antiaim.fr_disablers:get('Walking') and is_walking) or (fr_disabler and lua_items.antiaim.fr_disablers:get('Crouch') and is_crouching) or (fr_disabler and lua_items.antiaim.fr_disablers:get('Air') and jumpcheck) then
        ui.set(ref.freestand[1], false)
        is_freestand = false
    elseif is_quick_peek and lua_items.antiaim.fr_options:get('On Quick Peek') then
        ui.set(ref.freestand[1], true)
        ui.set(ref.freestand[2], 'Always on')
        is_freestand = true
    elseif yaw_direction == 0 then
        ui.set(ref.freestand[1], lua_items.antiaim.freestanding:get() and lua_items.antiaim.freestanding_key:get())
        ui.set(ref.freestand[2], lua_items.antiaim.freestanding_key:get() and 'Always on' or 'On hotkey')
        is_freestand = lua_items.antiaim.freestanding:get() and lua_items.antiaim.freestanding_key:get()
    else
        ui.set(ref.freestand[1], false)
        is_freestand = false
    end

    is_static = (lua_items.antiaim.fr_options:get('Disable Yaw Modifier') and is_freestand) or (yaw_direction ~= 0 and lua_items.antiaim.yaw_options:get('Disable Yaw Modifier'))

    if lua_items.antiaim.manual_direction:get() and lua_items.antiaim.key_right:get() and last_press_t_dir + 0.2 < globals.curtime() then
        yaw_direction = yaw_direction == 90 and 0 or 90
        last_press_t_dir = globals.curtime()
    elseif lua_items.antiaim.manual_direction:get() and lua_items.antiaim.key_left:get() and last_press_t_dir + 0.2 < globals.curtime() then
        yaw_direction = yaw_direction == -90 and 0 or -90
        last_press_t_dir = globals.curtime()
    elseif lua_items.antiaim.manual_direction:get() and lua_items.antiaim.key_forward:get() and last_press_t_dir + 0.2 < globals.curtime() then
        yaw_direction = yaw_direction == 180 and 0 or 180
        last_press_t_dir = globals.curtime()
    elseif last_press_t_dir > globals.curtime() then
        last_press_t_dir = globals.curtime()
    end

    if not lua_items.antiaim.manual_direction:get() then
        yaw_direction = 0
    end
end

local current_tickcount = 0
local to_jitter = false
local yaw_amount = 0
local fl_ticks = 0
local last_yaw = 0
local alive_players = {}
local last_def_yaw = 0
local last_def_pitch = 0
local desync_side = false
local mod_value = 0

local choke  = 1
local is_switch = false
local last_pack = 0 

function aa_helpers.static(yaw)
    if yaw_direction == 0 then
        ui.set(ref.yaw[2], 12)
    end
    ui.set(ref.yawjitter[1], 'Off')
    ui.set(ref.yawjitter[2], 0)
    ui.set(ref.bodyyaw[1], 'Static')
    ui.set(ref.bodyyaw[2], 180)
    if id ~= 10 then
        ui.set(ref.pitch[1], "Custom")
        ui.set(ref.pitch[2], 89) 
    end
end

function aa_helpers.setup(cmd)
    local lp = entity.get_local_player()
    if lp == nil then return end
    ui.set(ref.enabled, true)
    if antiaim_builder[10].override:get() and legit_aa:update(cmd) then id = 10
    elseif antiaim_builder[9].override:get() and not check_charge() then id = 9
    elseif antiaim_builder[8].override:get() and aa_helpers.player_state(cmd) == 'Air+C' then id = 8
    elseif antiaim_builder[7].override:get() and aa_helpers.player_state(cmd) == 'Air' then id = 7
    elseif antiaim_builder[6].override:get() and aa_helpers.player_state(cmd) == 'Duck-Moving' then id = 6
    elseif antiaim_builder[5].override:get() and aa_helpers.player_state(cmd) == 'Duck' then id = 5
    elseif antiaim_builder[4].override:get() and aa_helpers.player_state(cmd) == 'Walking' then id = 4
    elseif antiaim_builder[3].override:get() and aa_helpers.player_state(cmd) == 'Moving' then id = 3
    elseif antiaim_builder[2].override:get() and aa_helpers.player_state(cmd) == 'Stand' then id = 2
    else id = 1 end

    ui.set(ref.roll[1], 0)
    ui.set(ref.fsbodyyaw, false)
    ui.set(ref.yaw[1], '180')
    ui.set(ref.pitch[1], lua_items.antiaim.pitch:get())
    ui.set(ref.yawbase, yaw_direction == 0 and lua_items.antiaim.yaw_base:get() or 'Local view')
    run_direction(cmd)

    local flags = entity.get_prop(lp, 'm_fFlags')
    local is_fd = ui.get(ref.fakeduck)
    local is_osaa = ui.get(ref.os[2]) and ui.get(ref.os[1])
    local is_dt = ui.get(ref.dt[1]) and ui.get(ref.dt[2])
    local ducked = entity.get_prop(lp, 'm_flDuckAmount') > 0.7
    local jumpcheck = bit.band(flags, 1) == 0 or cmd.in_jump == 1
    local vecvelocity = { entity.get_prop(lp, 'm_vecVelocity') }
    local velocity = math.sqrt(vecvelocity[1]^2+vecvelocity[2]^2)
    local groundcheck = bit.band(flags, 1) == 1

    if (lua_items.select.hideshot_fix:get() and is_osaa) and not is_fd and not is_dt then
        ui.set(ref.fakelag[1], false)
        ui.set(ref.fakelag[2], 'On Hotkey')
        ui.set(ref.fakelag_limit, 1)
    else
                    ui.set(ref.fakelag[1], true)
            ui.set(ref.fakelag[2], 'Always On')
if lua_items.antiaim.fl_amount:get() == 'Adaptive' then
-- === Adaptive (ported from Elyzo.lua) ===
local tick = globals.tickcount()
local lp = entity.get_local_player()
local flags = entity.get_prop(lp, 'm_fFlags') or 0
local ground = bit.band(flags, 1) == 1
local is_air = not ground

-- 移植所需：距离、武器信息（若不可用则安全降级）
local distance = (type(get_e_distance) == "function") and get_e_distance() or math.huge
local wep = lp and entity.get_player_weapon(lp) or nil
local winfo = wep and csgo_weapons(wep) or nil
local vecvelocity = { entity.get_prop(lp, 'm_vecVelocity') }
local velocity = math.sqrt((vecvelocity[1] or 0)*(vecvelocity[1] or 0) + (vecvelocity[2] or 0)*(vecvelocity[2] or 0))

-- 默认：在 Maximum / Fluctuate 之间交替；同时交替 limit/variance
ui.set(ref.fakelag_amount, (tick % 25 > 1) and 'Maximum' or 'Fluctuate')
ui.set(ref.fakelag_limit, (tick % 52 > 1) and 15 or 12)
ui.set(ref.fakelag_variance, (tick % 7 > 1) and 14 or 0)

-- 允许包调度节奏（不保证所有环境均有用，但与 Elyzo 行为一致）
if cmd then
    cmd.allow_send_packet = (tick % 64 > 1)
end

-- 空中：更激进的抖动
if is_air then
    ui.set(ref.fakelag_amount, 'Maximum')
    ui.set(ref.fakelag_limit, (tick % 17 > 1) and 15 or 1)
    ui.set(ref.fakelag_variance, (tick % 2 > 1) and 0 or 2)
end

-- 低速：更强随机性 + 周期性不塞包
if velocity <= 8 then
    ui.set(ref.fakelag_amount, (tick % 17 > 1) and 'Maximum' or 'Fluctuate')
    ui.set(ref.fakelag_limit, math.random(14, 15))
    ui.set(ref.fakelag_variance, math.random(0, 5))
    if cmd then
        cmd.no_choke = (cmd.command_number % 17 == 0)
    end
end

-- 手雷：提升覆盖感（更高 limit + 轻微 variance）
if winfo and winfo.type == 'grenade' then
    ui.set(ref.fakelag_limit, math.random(14, 15))
    ui.set(ref.fakelag_amount, (tick % 7 > 1) and 'Fluctuate' or 'Maximum')
    ui.set(ref.fakelag_variance, 12)
end

-- 空中近身持刀：高限配合快速交替
if is_air and winfo and winfo.type == 'knife' and distance < 32 then
    ui.set(ref.fakelag_limit, 15)
    ui.set(ref.fakelag_amount, (tick % 2 > 1) and 'Fluctuate' or 'Maximum')
    ui.set(ref.fakelag_variance, 2)
end

            else
                ui.set(ref.fakelag_amount, lua_items.antiaim.fl_amount:get())
            ui.set(ref.fakelag_variance, lua_items.antiaim.fl_variance:get())
            ui.set(ref.fakelag_limit, lua_items.antiaim.fl_limit:get())
            end

    end


    if lua_items.antiaim.fl_disablers:get('Stand') and (groundcheck and velocity < 10) then
        if is_osaa or is_dt or ducked or is_fd then
            --smth
        else
            ui.set(ref.fakelag_limit, 1)
        end
    elseif lua_items.antiaim.fl_disablers:get('Crouch') and (groundcheck and ducked) then
        if is_fd or is_osaa or is_dt then
            --smth
        else
            ui.set(ref.fakelag_limit, 1)
        end
    end

    if globals.chokedcommands() == 0 then
        choke = choke + 1
    end

    if (choke - last_pack >= 1)  then
        is_switch = not is_switch
        last_pack = choke
    end

    -- if antiaim_builder[id].snap_aa:get() and antiaim_builder[id].defensive_yaw:get() == 'Flick Exploit' then
    --     cmd.force_defensive = cmd.command_number % 7 == 0
    -- else
    --     cmd.force_defensive = antiaim_builder[id].force_lc:get()
    -- end

    exploits:should_force_defensive(antiaim_builder[id].force_lc:get())

    local desync_type = entity.get_prop(lp, 'm_flPoseParameter', 11) * 120 - 60
    local desync_side = desync_type > 0

    if antiaim_builder[id].yaw_add:get() then
        yaw_amount = antiaim_builder[id].yaw:get() + (desync_side and randomize_value(antiaim_builder[id].yaw_left:get(), antiaim_builder[id].yaw_random:get()) or randomize_value(antiaim_builder[id].yaw_right:get(), antiaim_builder[id].yaw_random:get()))
    else
        yaw_amount = antiaim_builder[id].yaw:get()
    end

    if antiaim_builder[id].mod_type:get() == 1 then
        ui.set(ref.yawjitter[1], 'Off')
    elseif antiaim_builder[id].mod_type:get() == 2 then
        ui.set(ref.yawjitter[1], 'Offset')
    elseif antiaim_builder[id].mod_type:get() == 3 then
        ui.set(ref.yawjitter[1], 'Center')
    elseif antiaim_builder[id].mod_type:get() == 4 then
        ui.set(ref.yawjitter[1], 'Random')
    elseif antiaim_builder[id].mod_type:get() == 5 then
        ui.set(ref.yawjitter[1], 'Skitter')
    end

    if antiaim_builder[id].mod_addon:get() == 1 then
        mod_value = antiaim_builder[id].mod_offset:get()
    elseif antiaim_builder[id].mod_addon:get() == 2 then
        mod_value = randomize_value(antiaim_builder[id].mod_offset:get(), antiaim_builder[id].mod_random:get())
    elseif antiaim_builder[id].mod_addon:get() == 3 then
        mod_value = globals.tickcount() % math.random(3, 6) > 2 and randomize_value(antiaim_builder[id].mod_offset:get(), antiaim_builder[id].mod_random:get()) or antiaim_builder[id].mod_offset:get()
    end


    ui.set(ref.yawjitter[2], math.clamp(mod_value, -180, 180))

    if antiaim_builder[id].body_yaw:get() then
        if antiaim_builder[id].body_yaw_type:get() == 'Jitter' and antiaim_builder[id].body_delay:get() > 0 then
           
            if globals.tickcount() > current_tickcount + antiaim_builder[id].body_delay:get() + math.random(0, antiaim_builder[id].body_delay_random:get()) + 2 then
                if cmd.chokedcommands == 0 then
                    to_jitter = not to_jitter
                    current_tickcount = globals.tickcount() - globals.tickinterval()
                end
            elseif globals.tickcount() <  current_tickcount then
                current_tickcount = globals.tickcount() - globals.tickinterval()
            end
            
            ui.set(ref.bodyyaw[1], "Static")
            ui.set(ref.bodyyaw[2], to_jitter and 1 or -1)
            ui.set(ref.yawjitter[1], 'Off')
            ui.set(ref.yawjitter[2], 0)

            local yaw_l = antiaim_builder[id].yaw_add:get() and antiaim_builder[id].yaw:get() + randomize_value(antiaim_builder[id].yaw_right:get(), antiaim_builder[id].yaw_random:get()) or antiaim_builder[id].yaw:get()
            local yaw_r = antiaim_builder[id].yaw_add:get() and antiaim_builder[id].yaw:get() + randomize_value(antiaim_builder[id].yaw_left:get(), antiaim_builder[id].yaw_random:get()) or antiaim_builder[id].yaw:get()
            local jit_amount = mod_value

            if antiaim_builder[id].mod_type:get() == 3 then
                yaw_amount = to_jitter and (yaw_l + jit_amount/2) or (yaw_r - jit_amount/2)
            elseif antiaim_builder[id].mod_type:get() == 2 then
                yaw_amount = to_jitter and (yaw_l) or (yaw_r - jit_amount/2)
            elseif antiaim_builder[id].mod_type:get() == 4 then
                yaw_amount = to_jitter and (yaw_l + jit_amount/2) or (yaw_r - jit_amount/2)
            elseif antiaim_builder[id].mod_type:get() == 5 then
                if globals.tickcount() % 3 == 0 then 
                    yaw_amount = to_jitter and (yaw_l + jit_amount/2) or (yaw_r)
                elseif globals.tickcount() % 3 == 1 then 
                    yaw_amount = to_jitter and (yaw_l) or (yaw_r)
                else
                    yaw_amount = to_jitter and (yaw_l) or (yaw_r - jit_amount/2)
                end
            else
                yaw_amount = to_jitter and yaw_l or yaw_r
            end
        else
            ui.set(ref.bodyyaw[1], antiaim_builder[id].body_yaw_type:get())
            ui.set(ref.bodyyaw[2], antiaim_builder[id].body_yaw_type:get() == 'Jitter' and 1 or antiaim_builder[id].body_amount:get())
        end
    else
        ui.set(ref.bodyyaw[1], 'Off')
    end

    local defensive_active = is_defensive_active(antiaim_builder[id].defensive_mode:get() == 'Safest')
    if not defensive_active then
        last_def_yaw = math.random(antiaim_builder[id].defensive_left:get(), antiaim_builder[id].defensive_right:get())
        last_def_pitch = math.random(antiaim_builder[id].defensive_pitch_min:get(), antiaim_builder[id].defensive_pitch_max:get())
    end

    if antiaim_builder[id].snap_aa:get() and defensive_active then
        
        if antiaim_builder[id].defensive_addons:get('Modifier') then
            if antiaim_builder[id].defensive_body_yaw_type:get() == 'Jitter' and antiaim_builder[id].defensive_body_delay:get() > 1 then
                ui.set(ref.yawjitter[1], 'Off')
                ui.set(ref.yawjitter[2], 0)
                local jit_amount = randomize_value(antiaim_builder[id].defensive_mod_offset:get(), antiaim_builder[id].defensive_mod_random:get())
    
                if antiaim_builder[id].defensive_mod_type:get() == 'Center' then
                    yaw_amount = to_jitter and (yaw_amount + jit_amount/2) or (yaw_amount - jit_amount/2)
                elseif antiaim_builder[id].defensive_mod_type:get() == 'Offset' then
                    yaw_amount = to_jitter and (yaw_amount) or (yaw_amount + jit_amount/2)
                elseif antiaim_builder[id].defensive_mod_type:get() == 'Random' then
                    yaw_amount = to_jitter and (yaw_amount + jit_amount/2) or (yaw_amount - jit_amount/2)
                elseif antiaim_builder[id].defensive_mod_type:get() == 'Skitter' then
                    if globals.tickcount() % 3 == 0 then 
                        yaw_amount = to_jitter and (yaw_amount + jit_amount/2) or (yaw_amount)
                    elseif globals.tickcount() % 3 == 1 then 
                        yaw_amount = yaw_amount
                    else
                        yaw_amount = to_jitter and (yaw_amount) or (yaw_amount - jit_amount/2)
                    end
                else
                    yaw_amount = 0
                end
            else
                ui.set(ref.yawjitter[1], antiaim_builder[id].defensive_mod_type:get())
                ui.set(ref.yawjitter[2], math.clamp(randomize_value(antiaim_builder[id].defensive_mod_offset:get(), antiaim_builder[id].defensive_mod_random:get()), -180, 180))
            end
        end

        if antiaim_builder[id].defensive_addons:get('Body Yaw') then
            if antiaim_builder[id].defensive_body_yaw_type:get() == 'Jitter' and antiaim_builder[id].defensive_body_delay:get() > 1 then
                if globals.tickcount() > current_tickcount + antiaim_builder[id].defensive_body_delay:get() + math.random(0, antiaim_builder[id].defensive_body_delay_random:get()) + 2 then
                    if cmd.chokedcommands == 0 then
                        to_jitter = not to_jitter
                        current_tickcount = globals.tickcount()
                    end
                elseif globals.tickcount() <  current_tickcount then
                    current_tickcount = globals.tickcount()
                end

                ui.set(ref.bodyyaw[1], "Static")
                ui.set(ref.bodyyaw[2], to_jitter and 1 or -1)
            else
                ui.set(ref.bodyyaw[1], antiaim_builder[id].defensive_body_yaw_type:get())
                ui.set(ref.bodyyaw[2], antiaim_builder[id].defensive_body_yaw_type:get() == 'Jitter' and 1 or antiaim_builder[id].defensive_body_amount:get())
            end
        end 

        if antiaim_builder[id].defensive_yaw:get() == 'Static' then
            yaw_amount = antiaim_builder[id].defensive_offset:get()
        --elseif antiaim_builder[id].defensive_yaw:get() == 'L&R' then
            --yaw_amount = is_switch and antiaim_builder[id].defensive_left:get() or antiaim_builder[id].defensive_right:get()
        elseif antiaim_builder[id].defensive_yaw:get() == 'Spin' then
            yaw_amount = aa_helpers.custom_spin(antiaim_builder[id].defensive_speed:get(), antiaim_builder[id].defensive_spin:get())
        elseif antiaim_builder[id].defensive_yaw:get() == 'Random' then    
            yaw_amount = math.random(antiaim_builder[id].defensive_left:get(), antiaim_builder[id].defensive_right:get())
        elseif antiaim_builder[id].defensive_yaw:get() == 'Flick Exploit' then
            yaw_amount = antiaim_builder[id].defensive_offset:get()
        elseif antiaim_builder[id].defensive_yaw:get() == 'Random Static' then
            yaw_amount = last_def_yaw
        end

        if antiaim_builder[id].defensive_pitch:get() == 'Offset' then
            ui.set(ref.pitch[1], 'Custom')
            ui.set(ref.pitch[2], antiaim_builder[id].defensive_pitch_offset:get())
        elseif antiaim_builder[id].defensive_pitch:get() == 'L&R' then
            ui.set(ref.pitch[1], 'Custom')
            ui.set(ref.pitch[2], desync_side and antiaim_builder[id].defensive_pitch_min:get() or antiaim_builder[id].defensive_pitch_max:get())
        elseif antiaim_builder[id].defensive_pitch:get() == 'Random' then
            ui.set(ref.pitch[1], 'Custom')
            ui.set(ref.pitch[2], math.random(antiaim_builder[id].defensive_pitch_min:get(), antiaim_builder[id].defensive_pitch_max:get()))
        elseif antiaim_builder[id].defensive_pitch:get() == 'Random Static' then
            ui.set(ref.pitch[1], 'Custom')
            ui.set(ref.pitch[2], last_def_pitch)
        end
    end

    ui.set(ref.yaw[2], yaw_direction == 0 and math.clamp(yaw_amount, -180, 180) or yaw_direction)

    for i=1, 64 do
        if entity.is_alive(i) and entity.is_enemy(i) then
            table.insert(alive_players, i)
        end
    end

    if lua_items.antiaim.addons:get('Override Anti-Aim') then
        if lua_items.antiaim.aa_override:get('No Enemies Alive') then
            if client.current_threat() == nil and #alive_players == 0 then
                ui.set(ref.yaw[1], 'spin')
                ui.set(ref.yaw[2], 18)
                ui.set(ref.yawjitter[2], 0)
                ui.set(ref.bodyyaw[1], 'static')
                ui.set(ref.bodyyaw[2], 180)
                ui.set(ref.pitch[1], "custom")
                ui.set(ref.pitch[2], 0) 
                exploits:should_force_defensive(false)
            end
        end

        if lua_items.antiaim.aa_override:get('Warmup') then
            if entity.get_prop(entity.get_game_rules(), "m_bWarmupPeriod") == 1 then
                ui.set(ref.yaw[1], 'spin')
                ui.set(ref.yaw[2], 18)
                ui.set(ref.yawjitter[2], 0)
                ui.set(ref.bodyyaw[1], 'static')
                ui.set(ref.bodyyaw[2], 180)
                ui.set(ref.pitch[1], "custom")
                ui.set(ref.pitch[2], 0) 
                exploits:should_force_defensive(false)
            end
        end
    end

    alive_players = {}

    local lp_weapon = entity.get_player_weapon(lp)
    local lp_orig_x, lp_orig_y, lp_orig_z = entity.get_prop(lp, "m_vecOrigin")
    local threat = client.current_threat()

    if lua_items.antiaim.addons:get('Safe Head') then
        if lp_weapon ~= nil then
            if lua_items.antiaim.safe_head:get("Air+C Knife") then
                if jumpcheck and ducked and entity.get_classname(lp_weapon) == "CKnife" then
                    aa_helpers.static()
                    exploits:should_force_defensive(false)
                end
            end
            if lua_items.antiaim.safe_head:get("Air+C Zeus") then
                if jumpcheck and ducked and entity.get_classname(lp_weapon) == "CWeaponTaser" then
                    aa_helpers.static()
                    exploits:should_force_defensive(false)
                end
            end
            if lua_items.antiaim.safe_head:get("Height Difference") then
                if threat ~= nil and is_vulnerable() then
                    threat_x, threat_y, threat_z = entity.get_prop(threat, "m_vecOrigin")
                    threat_dist = lp_orig_z - threat_z
                    if threat_dist > lua_items.antiaim.height_difference:get() then
                        aa_helpers.static()
                    end
                end
            end
            
            if lua_items.antiaim.safe_head:get("Air+C SMG") then
                if jumpcheck and ducked and (entity.get_classname(lp_weapon) == "CWeaponMAC10" or entity.get_classname(lp_weapon) == "CWeaponMP9" or entity.get_classname(lp_weapon) == "CWeaponMP7" or entity.get_classname(lp_weapon) == "CWeaponUMP45" or entity.get_classname(lp_weapon) == "CWeaponBizon" or entity.get_classname(lp_weapon) == "CWeaponP90") then
                    aa_helpers.static()
                end
            end
        end
    end

    local players = entity.get_players(true)

    if lua_items.antiaim.addons:get('Anti Backstab') then
        for i=1, #players do
            if players == nil then return end
            enemy_orig_x, enemy_orig_y, enemy_orig_z = entity.get_prop(players[i], "m_vecOrigin")
            distance_to = anti_knife_dist(lp_orig_x, lp_orig_y, lp_orig_z, enemy_orig_x, enemy_orig_y, enemy_orig_z)
            weapon = entity.get_player_weapon(players[i])
            if weapon == nil then return end
            if entity.get_classname(weapon) == "CKnife" and distance_to <= 220 then
                ui.set(ref.yaw[2], 180)
                ui.set(ref.yawbase, "At targets")
            end
        end
    end

    if is_freestand and lua_items.antiaim.fr_options:get('Fake Peek') and yaw_direction == 0 then
        if not cmd.quick_stop then
            if is_vulnerable() then
                exploits:should_force_defensive(true)
                if not is_defensive_active() then
                    last_yaw = entity.get_prop(lp, 'm_flLowerBodyYawTarget')
                else    
                    cmd.pitch = (math.random(-89, -66))
                    if last_yaw > 0 then
                        cmd.yaw = normalize_yaw(last_yaw - 180)
                    else
                        cmd.yaw = normalize_yaw(last_yaw + 180)
                    end
                end
            end
        end
    end

    if lua_items.antiaim.yaw_options:get('Fake Peek') and yaw_direction ~= 0 then
        if not cmd.quick_stop then
            exploits:should_force_defensive(true)
            if is_defensive_active() then
                ui.set(ref.yaw[1], '180')
                ui.set(ref.yaw[2], -yaw_direction)
                ui.set(ref.pitch[2], math.random(-10, 10))
            end
        end
    end

    if lua_items.antiaim.yaw_options:get('Disable Yaw Modifier') and yaw_direction ~= 0 then
        aa_helpers.static()
    end

    if is_static and lua_items.antiaim.fr_options:get('Disable Yaw Modifier') and yaw_direction == 0 then
        aa_helpers.static()
    end

    if id == 10 then
        ui.set(ref.fsbodyyaw, true)
        ui.set(ref.pitch[1], 'Off')
        ui.set(ref.yaw[1], '180')
        ui.set(ref.yaw[2], normalize_yaw(180 + yaw_amount))
        ui.set(ref.yawbase, 'Local view')
    end

    local animlayers = ffi_helpers.animlayers:get(lp)
    if not animlayers then return end


    local weapon_activity_number = ffi_helpers.activity:get(animlayers[1]['sequence'], me)
    local flash_activity_number = ffi_helpers.activity:get(animlayers[9]['sequence'], me)
    local is_reloading = animlayers[1]['weight'] ~= 0.0 and weapon_activity_number == 967
    local is_flashed = animlayers[9]['weight'] > 0.1 and flash_activity_number == 960
    local is_under_attack = animlayers[10]['weight'] > 0.1
    local is_swapping_weapons = cmd.weaponselect > 0

    local is_stand = lua_items.antiaim.defensive_condition:get('Stand') and aa_helpers.player_state(cmd) == 'Stand'
    local is_moving = lua_items.antiaim.defensive_condition:get('Stand') and aa_helpers.player_state(cmd) == 'Moving'
    local is_walking = lua_items.antiaim.defensive_condition:get('Walking') and aa_helpers.player_state(cmd) == 'Walking'
    local is_crouching = lua_items.antiaim.defensive_condition:get('Crouching') and (aa_helpers.player_state(cmd) == 'Duck' or aa_helpers.player_state(cmd) == 'Duck-Moving')
    local is_air = lua_items.antiaim.defensive_condition:get('Air') and (aa_helpers.player_state(cmd) == 'Air' or aa_helpers.player_state(cmd) == 'Air+C')

    if is_stand or is_moving or is_walking or is_crouching or is_air then
        if lua_items.antiaim.defensive_triggers:get('Hittable') and is_vulnerable() then
            exploits:should_force_defensive(true)
            return
        end
        
        if lua_items.antiaim.defensive_triggers:get('Reload') and is_reloading then
            exploits:should_force_defensive(true)
            return
        end

        if lua_items.antiaim.defensive_triggers:get('Flashed') and is_flashed then
            exploits:should_force_defensive(true)
            return
        end

        if lua_items.antiaim.defensive_triggers:get('Damaged') and is_under_attack then
            exploits:should_force_defensive(true)
            return
        end

        if lua_items.antiaim.defensive_triggers:get('Weapon Swap') and is_swapping_weapons then
            exploits:should_force_defensive(true)
        end
    end
end

local lastmiss = 0
local function GetClosestPoint(A, B, P)
    a_to_p = { P[1] - A[1], P[2] - A[2] }
    a_to_b = { B[1] - A[1], B[2] - A[2] }

    atb2 = a_to_b[1]^2 + a_to_b[2]^2

    atp_dot_atb = a_to_p[1]*a_to_b[1] + a_to_p[2]*a_to_b[2]
    t = atp_dot_atb / atb2
    
    return { A[1] + a_to_b[1]*t, A[2] + a_to_b[2]*t }
end

local rgba_to_hex = function(b, c, d, e)
    return string.format('%02x%02x%02x%02x', b, c, d, e)
end

local normalize = function(yaw)
    while yaw < -180 do yaw = yaw + 360 end
    while yaw > 180 do yaw = yaw - 360 end
    return yaw
end

local ang_on_screen = function(x, y)
    if x == 0 and y == 0 then return 0 end
    return math.deg(math.atan2(y, x))
end

local fov = function(x, y, z, rng)
    local lx, ly, lz = client.eye_position()
    local view_x, view_y, roll = client.camera_angles()
    local cur_fov = normalize(ang_on_screen(lx - x, ly - y) - view_y + rng)
    return cur_fov
end

local crosshair_target = function()
    local enemies = entity.get_players(true)
    local target, last_fov = nil, 180
    for i = 1, #enemies do
        local origin = { entity.get_prop(enemies[i], 'm_vecOrigin') }
        local fov = math.abs(fov(origin[1], origin[2], origin[3], 180))
        if fov < last_fov then
            last_fov = fov
            target = enemies[i]
        end
    end
    return target
end

local function text_fade_animation(x, y, speed, color1, color2, text, flag)
    local final_text = ''
    local curtime = globals.curtime()
    for i = 0, #text do
        local x = i * 10  
        local wave = math.cos(8 * speed * curtime + x / 30)
        local color = rgba_to_hex(
            math.lerp(color1.r, color2.r, math.clamp(wave, 0, 1)),
            math.lerp(color1.g, color2.g, math.clamp(wave, 0, 1)),
            math.lerp(color1.b, color2.b, math.clamp(wave, 0, 1)),
            color1.a
        ) 
        final_text = final_text .. '\a' .. color .. text:sub(i, i) 
    end
    
    renderer.text(x, y, color1.r, color1.g, color1.b, color1.a, flag, nil, final_text)
end

local function text_fade_menu(speed, color1, color2, text)
    local final_text = ''
    local curtime = globals.curtime()
    for i = 0, #text do
        local x = i * #text  
        local wave = math.cos(8 * speed * curtime + x / 30)
        local color = rgba_to_hex(
            math.lerp(color1.r, color2.r, math.clamp(wave, 0, 1)),
            math.lerp(color1.g, color2.g, math.clamp(wave, 0, 1)),
            math.lerp(color1.b, color2.b, math.clamp(wave, 0, 1)),
            color1.a
        ) 
        final_text = final_text .. '\a' .. color .. text:sub(i, i) 
    end
    return final_text
end

local screen = {client.screen_size()}
local center = {screen[1]/2, screen[2]/2} 

local function mouse_in_bounds(x, y, width, height)
    local mouse_x, mouse_y = ui.mouse_position()
    return mouse_x >= x and mouse_x <= x + width and mouse_y >= y and mouse_y <= y + height
end

local drag_dmg = dragging.new("drag_damage", screen[1] / 2 + 5, screen[2] / 2 - 15)
local dmg_alpha = 0
local dmg_set = 0

function visuals_helpers.damage_override()
    local r,g,b,a = lua_items.select.damage_ind:get_color()
    local dmg_ovr = (ui.get(ref.minimum_damage_override[1]) and ui.get(ref.minimum_damage_override[2]))
    local x, y = drag_dmg:get()
    if lua_items.select.damage_over:get() then
        if not dmg_ovr then return end
        renderer.text(x, y, r,g,b,a, lua_items.select.damage_type:get() == 'Default' and "d" or '-d', 0, ui.get(ref.minimum_damage_override[3]) .. "")
    else
        if dmg_ovr then
            renderer.text(x+2, y+2, r,g,b,a, lua_items.select.damage_type:get() == 'Default' and "d" or '-d', 0, ui.get(ref.minimum_damage_override[3]) .. "")
        else
            renderer.text(x+2, y+2, r,g,b,a, lua_items.select.damage_type:get() == 'Default' and "d" or '-d', 0, ui.get(ref.minimum_damage) .. "")
        end -- rectv
    end

    dmg_alpha = math.lerp(dmg_alpha, ui.is_menu_open() and 155 or 0, 0.05)
    dmg_set = math.lerp(dmg_set, (mouse_in_bounds(x, y, 25, 15) and ui.is_menu_open()) and 155 or 0, 0.05)

    if mouse_in_bounds(x, y, 25, 15) and client.key_state(0x02) == true then
        drag_dmg:set(screen[1] / 2 + 5, screen[2] / 2 - 15)
    end

    if dmg_set > 5 then
        renderer.text(x, y - 20, 255, 255, 255, dmg_set, "c", 0, "Right click to reset to original position")
    end

    renderer.rec_outline(x, y, 25, 15, 5, 1, {200, 200, 200, dmg_alpha})
    drag_dmg:drag(25, 15)
end

local function mouse_in_bounds(x, y, width, height)
    local mouse_x, mouse_y = ui.mouse_position()
    return mouse_x >= x and mouse_x <= x + width and mouse_y >= y and mouse_y <= y + height
end

local velocity_alpha = 0
local velocity_amount = 0
local vel_drag_alpha = 0
local vel_text_alpha = 0
local drag_velocity = dragging.new("example_dragging", center[1]-50, screen[2] / 3)

function visuals_helpers.velocity_ind()
    local lp = entity.get_local_player()
    if lp == nil then return end
    local r, g, b, a = lua_items.select.velocity_warning:get_color()
    local vel_mod = entity.get_prop(lp, 'm_flVelocityModifier')
    local x, y = drag_velocity:get()
    vel_drag_alpha = math.lerp(vel_drag_alpha, ui.is_menu_open() and 155 or 0, 0.05)
    vel_text_alpha = math.lerp(vel_text_alpha, mouse_in_bounds(x, y, 100, 50) and ui.is_menu_open() and 155 or 0, 0.05)
    
    if not ui.is_menu_open() then
        velocity_alpha = math.lerp(velocity_alpha, vel_mod < 1 and 255 or 0, 0.05)
        velocity_amount = math.lerp(velocity_amount, vel_mod, 0.05)
    else
        velocity_alpha = math.lerp(velocity_alpha, 255, 0.05)
        velocity_amount = globals.tickcount() % 50 / 100 * 2
    end

    if velocity_alpha < 25 then return end

    if mouse_in_bounds(x, y, 100, 50) and client.key_state(0x02) == true then
        drag_velocity:set(center[1] - 50, y)
    end

    renderer.blur(x + 1 , y , 98, 50)
    renderer.rectangle(x + 1 , y , 98, 50, 0, 0, 0, 50)
    renderer.text(x + 50, y + 15, 255, 255, 255, velocity_alpha, "c", 0, "- velocity -")
    renderer.glow_module(x + 10 - math.floor(40 * velocity_amount) + 40, y + 30, math.floor(80 * velocity_amount), 3, 6, 3, {r, g, b, velocity_alpha / 2}, {r, g, b, velocity_alpha})
    renderer.rec_outline(x, y, 100, 50, 5, 0.85, {200, 200, 200, 180})

    if vel_text_alpha > 5 then
        renderer.text(x + 50, y - 20, 255, 255, 255, vel_text_alpha, "c", 0, "Click Right Button To Centering")
    end
    renderer.rec_outline(x, y, 100, 50, 5, 1, {200, 200, 200, vel_drag_alpha})

    drag_velocity:drag(100, 50)
end

local drag_panel = dragging.new("nig", center[1]-50, screen[2] / 4)
function visuals_helpers.panel_t()
    local lp = entity.get_local_player()
    if lp == nil then return end
    local x, y = drag_panel:get()
    local desync_amount = entity.get_prop(entity.get_local_player(), "m_flPoseParameter", 11) * 120 - 60
    local back = renderer.load_rgba("\x14\x14\x14\xFF\x14\x14\x14\xFF\x0c\x0c\x0c\xFF\x14\x14\x14\xFF\x0c\x0c\x0c\xFF\x14\x14\x14\xFF\x0c\x0c\x0c\xFF\x14\x14\x14\xFF\x0c\x0c\x0c\xFF\x14\x14\x14\xFF\x14\x14\x14\xFF\x14\x14\x14\xFF\x0c\x0c\x0c\xFF\x14\x14\x14\xFF\x0c\x0c\x0c\xFF\x14\x14\x14\xFF", 4, 4)
    local m_nTickBase = entity.get_prop( entity.get_local_player( ), 'm_nTickBase')
    local client_latency = client.latency( )
    local shift = math.floor( m_nTickBase - globals.tickcount( ) - 3 - toticks( client_latency ) * .5 + .7 * ( client_latency * 10 ) )
    local r, g, b, a = lua_items.select.Style_Panel:get_color()

    local wanted = 0

    if ui.is_menu_open() and mouse_in_bounds(x, y, 300, 200) and client.key_state(0x02) == true then
        drag_panel:set(center[1] - 50, y)
    end


    renderer.rectangle(x, y, 320, 160, 14, 14, 14, 255)
    renderer.rec_outline(x, y, 320, 160, 3, 3, {40, 40, 40, 255} )
    renderer.rec_outline(x - 5, y - 5, 330, 170, 3, 6, {0, 0, 0, 255} )
    renderer.texture_rec(back, x - 5, y - 5, 330, 170, 2, 7,{255,255,255,255})
    renderer.gradient(x + 4, y + 4, 312, 2, 55, 177, 218, 255, 204, 227, 53, 255, true)

    renderer.text(x + 160, y + 30, 255, 255, 255, 255, "bc", 0, "DESYNC")
    renderer.rectangle(x + 160, y + 40, desync_amount * 2, 7, r, g, b, a)
    renderer.text(x + 160, y + 60, 255, 255, 255, 255, "bc", 0, "DEFENSIVE TICK")
    renderer.rectangle(x + 35, y + 70, 1 + exploits.ticks_processed * 19, 7, r, g, b, a)
    renderer.text(x + 160, y + 90, 255, 255, 255, 255, "bc", 0, "EXPLOIT TICK")
    renderer.rectangle(x + 35, y + 100, (0 + -shift) * 18, 7, r, g, b, a)
    renderer.text(x + 160, y + 120, 255, 255, 255, 255, "bc", 0, "FAKE LAG")
    renderer.rectangle(x + 35, y + 130, 1 + choked_command_record.cmd_num * 16, 7, r, g, b, a)

    drag_panel:drag(300, 200)
end


function visuals_helpers.aa_debug()
    local lp = entity.get_local_player()
    if not lp then return end

    local menux, menuy = ui.menu_position()

    local desync_amount = entity.get_prop(lp, "m_flPoseParameter", 11) * 120 - 60
    local feet_yaw = math.max(desync_amount > 0 and 28 or -60, desync_amount)
    local body_yaw_val = math.floor(antiaim_funcs.get_body_yaw(nil) - antiaim_funcs.get_body_yaw(2))
    local yaw_amount = math.floor(yaw_amount)

    if not ui.is_menu_open() then return end

    local x, y = menux - 240, menuy
    local w, h = 210, 230
    local alpha = 255
    local border_layers = {10, 60, 40, 40, 40, 60, 20}
    for i = 0, #border_layers - 1 do
        local c = border_layers[i + 1]
        renderer.rectangle(x + i, y + i, w - i * 2, h - i * 2, c, c, c, alpha)
    end

    local x_inner, y_inner = x + 7, y + 7
    local w_inner = w - 14
    renderer.gradient(x_inner, y_inner + 1, math.floor(w_inner / 2), 1, 59, 175, 222, alpha, 202, 70, 205, alpha, true)
    renderer.gradient(x_inner + math.floor(w_inner / 2), y_inner + 1, math.ceil(w_inner / 2), 1, 202, 70, 205, alpha, 201, 227, 58, alpha, true)

    renderer.rectangle(x + 13, y + 15, math.abs(w - 26), math.abs(h - 30), 12, 12, 12, alpha)
    renderer.rectangle(x + 14, y + 16, math.abs(w - 28), math.abs(h - 32), 40, 40, 40, alpha)
    renderer.rectangle(x + 15, y + 17, math.abs(w - 30), math.abs(h - 34), 23, 23, 23, alpha)
    renderer.text(x + 25, y + 13, 204, 204, 204, alpha, "b", 0, "Debug Info")

    local function draw_pretty_bar(label, value, max_value, offset_y)
        local bar_x = x + 25
        local bar_y = y + offset_y
        local full_w = 150
        local filled_w = math.min(math.abs(value / max_value), 1) * full_w
        local r, g, b = 159, 202, 43

        renderer.text(bar_x, bar_y - 15, 205, 205, 205, alpha, "", 0, label)
        renderer.rectangle(bar_x - 1, bar_y - 1, full_w + 2, 5 + 2, 12, 12, 12, alpha)
        renderer.rectangle(bar_x, bar_y, full_w, 5, 60, 60, 60, alpha)
        renderer.rectangle(bar_x + 1, bar_y + 1, filled_w, 4, r, g, b, alpha)
        renderer.text(bar_x + filled_w, bar_y + 2, 255, 255, 255, alpha, "-dc", 0, math.floor(value) .. "\194\176")
    end

    draw_pretty_bar("Desync", desync_amount, 60, 45)
    draw_pretty_bar("Body Yaw", body_yaw_val, 60, 85)
    draw_pretty_bar("Feet Yaw", feet_yaw, 60, 125)
    draw_pretty_bar("Yaw", yaw_amount, 180, 165)
end



local scopedFraction = 0
function visuals_helpers.cross_indicator()
    local local_player = entity.get_local_player()
    if local_player == nil or entity.is_alive(local_player) == false then
        return
    end

    local desync_amount = entity.get_prop(local_player, "m_flPoseParameter", 11) * 120 - 60

    local X, Y = client.screen_size()
    local r, g, b, a = lua_items.select.Cross_indicator:get_color()
    local weapon = entity.get_player_weapon(local_player)
    local scopeLevel = entity.get_prop(weapon, 'm_zoomLevel')
    local scoped = entity.get_prop(local_player, 'm_bIsScoped') == 1
    local resumeZoom = entity.get_prop(local_player, 'm_bResumeZoom') == 1
    local isValid = weapon ~= nil and scopeLevel ~= nil
    local act = isValid and scopeLevel > 0 and scoped and not resumeZoom
    local time = globals.frametime() * 9

    if act then
        if scopedFraction < 1 then
            scopedFraction = math.lerp(scopedFraction, 1 + 0.1, time)
        else
            scopedFraction = 1
        end
    else
        scopedFraction = math.lerp(scopedFraction, 0, time)
    end
    

    if desync_amount > 0 then
     renderer.text(X/2 + 35 * scopedFraction, Y/2 + 15, 178, 178, 178, 255, "bc", 0, gradient(178, 178, 178, 255, r, g, b ,a , "Evolution"))
    elseif desync_amount < 0 then
     renderer.text(X/2 + 35 * scopedFraction, Y/2 + 15, 178, 178, 178, 255, "bc", 0, gradient(r, g, b ,a , 178, 178, 178, 255, "Evolution"))
    else
     renderer.text(X/2 + 35 * scopedFraction, Y/2 + 15, 178, 178, 178, 255, "bc", 0, "Evolution")
    end
end

function visuals_helpers.screen_aa_debug()
    local local_player = entity.get_local_player()
    if local_player == nil or entity.is_alive(local_player) == false then
        return
    end
    
    local desync_amount = entity.get_prop(local_player, "m_flPoseParameter", 11) * 120 - 60
    local client_latency = client.latency( )
    local m_nTickBase = entity.get_prop( entity.get_local_player( ), 'm_nTickBase')
    local shift = math.floor( m_nTickBase - globals.tickcount( ) - 3 - toticks( client_latency ) * .5 + .7 * ( client_latency * 10 ) )
    local wanted = 1
    local target = crosshair_target()

    local X, Y = client.screen_size()
    local weapon = entity.get_player_weapon(local_player)
    local cl_name = entity.get_classname(weapon)

    renderer.gradient(X/100 - 20, Y/2 - 14, 100, 2, 39, 245, 245, 255, 184, 39, 212, 255, true)
    renderer.rectangle(X/100 - 20, Y/2 - 12, 100, 130, 0, 0, 0, 50)
    renderer.blur(X/100 - 20, Y/2 - 12, 100, 130, 0)
    renderer.text(X/100 + 20 , Y/2 , 255, 255, 255, 255, "i-c", 0, "   -- DEBUG PANEL-- ")
    renderer.text(X/100 + 24, Y/2 + 10, 255, 251, 0, 255, "i-c", 0, "CLOUD STATS: Error")    
    renderer.text(X/100 + 20, Y/2 + 20, 35, 235, 185, 255, "i-c", 0, "DESYNC: " .. math.abs(math.ceil(desync_amount)))
    renderer.text(X/100 + 20, Y/2 + 30, 255, 255, 255, 255, "i-c", 0, "FREEZE TICK: " .. math.floor(wanted + shift))
    renderer.text(X/100 + 20, Y/2 + 40, 255, 255, 255, 255, "i-c", 0, "DEFENSIVE TICK: " .. exploits.ticks_processed)
    renderer.text(X/100 + 20, Y/2 + 50, 255, 255, 255, 255, "i-c", 0, "FAKELAG VALUE: " .. math.floor(choked_command_record.cmd_num))
    renderer.text(X/100 + 20, Y/2 + 60, 255, 255, 255, 255, "i-c", 0, "CMD YAW: " .. math.floor(choked_command_record.cmd_yaw))
    renderer.text(X/100 + 20, Y/2 + 70, 255, 255, 255, 255, "i-c", 0, "CMD PITCH: " .. math.floor(choked_command_record.cmd_pitch))
    renderer.text(X/100 + 20, Y/2 + 80, 255, 255, 255, 255, "i-c", 0, "WEAPON: " .. weapon)
    --renderer.text(X/100 + 20, Y/2 + 90, 255, 255, 255, 255, "i-c", 90, cl_name)
    renderer.text(X/100 + 20, Y/2 + 90, 35, 235, 185, 255, "i-c", 200, "BODY YAW: " .. math.floor(antiaim_funcs.get_body_yaw(nil) - antiaim_funcs.get_body_yaw(2)))
         renderer.text(X/100 + 20, Y/2 + 100, 255, 0, 120, 255, "i-c", 200, "TARGET: " .. entity.get_player_name(target))
              renderer.text(X/100 + 20, Y/2 + 110, 255, 255, 255, 255, "i-c", 200, "DISTANCE: " .. get_e_distance())

end

local defensive_alpha = 0
local defensive_amount = 0
local def_drag_alpha = 0
local def_text_alpha = 0
local drag_defensive = dragging.new("defensive_dragging", center[1]-50, screen[2] / 4)

function visuals_helpers.defensive_ind()
    local lp = entity.get_local_player()
    if lp == nil then return end
    local r, g, b, a = lua_items.select.defensive_warning:get_color()

    local vel_mod = is_defensive_active()
    local x, y = drag_defensive:get()

    def_drag_alpha = math.lerp(def_drag_alpha, ui.is_menu_open() and 155 or 0, 0.05)
    def_text_alpha = math.lerp(def_text_alpha, mouse_in_bounds(x, y, 100, 50) and ui.is_menu_open() and 155 or 0, 0.05)
    
    if not ui.is_menu_open() then
        defensive_alpha = math.lerp(defensive_alpha, vel_mod and 255 or 0, 0.05)
        defensive_amount = math.lerp(defensive_amount, vel_mod and 1 or 0, 0.05)
    else
        defensive_alpha = math.lerp(defensive_alpha, 255, 0.05)
        defensive_amount = globals.tickcount() % 50 / 100 * 2
    end

    if defensive_alpha < 25 then return end

    if mouse_in_bounds(x, y, 100, 50) and client.key_state(0x02) == true then
        drag_defensive:set(center[1] - 50, y)
    end

    renderer.blur(x + 1 , y , 98, 50)
    renderer.rectangle(x + 1 , y , 98, 50, 0, 0, 0, 50)
    renderer.text(x + 50, y + 15, 255, 255, 255, 255, "bc", 0, "- defensive -")
    renderer.glow_module(x + 10 - math.floor(40 * defensive_amount) + 40, y + 30, math.floor(80 * defensive_amount), 3, 6, 3, {r, g, b, defensive_alpha / 2}, {r, g, b, defensive_alpha})
    renderer.rec_outline(x, y, 100, 50, 5, 0.85, {200, 200, 200, 180})

    if def_text_alpha > 5 then
        renderer.text(x + 50, y - 20, 255, 255, 255, def_text_alpha, "c", 0, "Click Right Button To Centering")
    end
    renderer.rec_outline(x, y, 100, 50, 5, 1, {200, 200, 200, def_drag_alpha})

    drag_defensive:drag(100, 50)
end

local debug_alpha = 0
local exp_charged = 0
local debug_state = 'GLOBAL'

--[[function visuals_helpers.debug_panel()
    local lp = entity.get_local_player()
    if lp == nil then return end

    if id == 1 then debug_state = 'Global'
    elseif id == 2 then debug_state = 'Stand'
    elseif id == 3 then debug_state = 'Moving'
    elseif id == 4 then debug_state = 'Walking'
    elseif id == 5 then debug_state = 'Crouching'
    elseif id == 6 then debug_state = 'Crouching'
    elseif id == 7 then debug_state = 'Air'
    elseif id == 8 then debug_state = 'Air+Crouch'
    elseif id == 9 then debug_state = 'Discharged'
    elseif id == 10 then debug_state = 'Legit aa' end

    exp_charged = math.lerp(exp_charged, check_charge() and 14 or 0, 0.1)

    --local r,g,b,a = lua_items.select.debug_panels:get_color()

   if lua_items.select.debug_panels:get() == 'Basic' then
        renderer.text(20, screen[2] / 2 - 60, r,g,b, 255, '-', 0, '  Evolution  INFO')
        renderer.text(20, screen[2] / 2 - 50, r,g,b, 255, '-', 0, 'USER: '..string.upper(string.sub(username, 1, 11))..'')
        renderer.text(20, screen[2] / 2 - 40, r,g,b, 255, '-', 0, 'BUILD:  Premium')
        renderer.text(20, screen[2] / 2 - 30, r,g,b, 255, '-', 0, 'STATE: '..string.upper(string.sub(debug_state, 1, 11))..'')
    elseif lua_items.select.debug_panels:get() == 'Debug Panel' then
        renderer.text(20, screen[2] / 2 - 80, r,g,b, 255, 'b', 0, 'Evolution / Debug Panel')
        renderer.text(25, screen[2] / 2 - 65, r,g,b, 255, 'b', 0, 'State:')
        renderer.text(57, screen[2] / 2 - 65, r,g,b, 255, 'a', 0, ''..debug_state)
    end
end
]]

local scope_alpha = 0
local s_length = 0
function visuals_helpers.custom_scope()
    local lp = entity.get_local_player()
    if not lp then return end
    if not entity.is_alive(lp) then return end
    local scpd = entity.get_prop(lp, "m_bIsScoped") == 1

    local r,g,b,a = lua_items.select.custom_scope:get_color()
    scope_alpha = math.lerp(scope_alpha, scpd and a or 0, 0.10)

    local s_offset = lua_items.select.custom_scope_offset:get()
    if scpd then
        s_length = math.lerp(s_length, scpd and lua_items.select.custom_scope_length:get() or 0, 0.05)
    else
        s_length = 0
    end

    if scpd then
        renderer.gradient(center[1] + s_offset, center[2], s_length, 1, r,g,b, scope_alpha, r,g,b, 0, true)
        renderer.gradient(center[1] - s_offset+2, center[2], -s_length, 1, r,g,b, scope_alpha, r,g,b, 0, true)

        renderer.gradient(center[1], center[2] + s_offset, 1, s_length, r,g,b, scope_alpha, r,g,b, 0, false)
        renderer.gradient(center[1], center[2] - s_offset+3, 1, -s_length, r,g,b, scope_alpha, r,g,b, 0, false)
    end
end

local queue = {}

function visuals_helpers.kibit_mark()
    local r,g,b,a = lua_items.select.kibit_hitmarker:get_color()
    for tick, data in pairs(queue) do
        if globals.curtime() <= data[4] then
            local x1, y1 = renderer.world_to_screen(data[1], data[2], data[3])
            if x1 ~= nil and y1 ~= nil then
                renderer.line(x1 - 6,y1,x1 + 6,y1, r,g,b,a)
                renderer.line(x1,y1 - 6,x1,y1 + 6 , r,g,b,a)
            end
        end
    end
end

local arrows_offset = 0

function visuals_helpers.manual_arrows()
    local lp = entity.get_local_player()
    if lp == nil then return end

    local scpd = entity.get_prop(lp, "m_bIsScoped") == 1
    arrows_offset = math.lerp(arrows_offset, scpd and 20 or 0, 0.08)

    if lua_items.select.manual_active:get() and yaw_direction == 0 then return end


    local r,g,b,a = 40,40,40,150
    local r1,g1,b1,a1 = lua_items.select.manual_active:get_color()
    local r2,g2,b2,a2 = lua_items.select.manual_ind:get_color()

    local x_offset = 40
    local rect_size = 2
    local width = 10
    local height = 8

    local left_x = center[1] - x_offset - (rect_size + 2)
    local right_x = center[1] + x_offset + (rect_size + 2)

    if lua_items.select.manual_ind_type:get() == 'TS' then
        if yaw_direction == -90 then
            renderer.triangle(left_x - width, center[2] - arrows_offset, left_x, center[2] - arrows_offset - height, left_x, center[2] + height - arrows_offset, r1,g1,b1,255)
            renderer.triangle(right_x + width, center[2] - arrows_offset, right_x, center[2] - arrows_offset - height, right_x, center[2] + height - arrows_offset, r,g,b,a)
        elseif yaw_direction == 90 then
            renderer.triangle(left_x - width, center[2] - arrows_offset, left_x, center[2] - arrows_offset - height, left_x, center[2] + height - arrows_offset, r,g,b,a)
            renderer.triangle(right_x + width, center[2] - arrows_offset, right_x, center[2] - arrows_offset - height, right_x, center[2] + height - arrows_offset, r1,g1,b1,255)
        else
            renderer.triangle(left_x - width, center[2] - arrows_offset, left_x, center[2] - arrows_offset - height, left_x, center[2] + height - arrows_offset, r,g,b,a)
            renderer.triangle(right_x + width, center[2] - arrows_offset, right_x, center[2] - arrows_offset - height, right_x, center[2] + height - arrows_offset, r,g,b,a)
        end

        if entity.get_prop(lp, 'm_flPoseParameter', 11) * 120 - 60 > 0 then
            renderer.rectangle(left_x + rect_size + 2, center[2] - arrows_offset - height, -rect_size, height * 2, r,g,b,a)
            renderer.rectangle(right_x - rect_size - 2, center[2] - arrows_offset - height, rect_size, height * 2, r2,g2,b2,200)
        else
            renderer.rectangle(left_x + rect_size + 2, center[2] - arrows_offset - height, -rect_size, height * 2, r2,g2,b2,200)
            renderer.rectangle(right_x - rect_size - 2, center[2] - arrows_offset - height, rect_size, height * 2, r,g,b,a)
        end
    else
        if yaw_direction == -90 then
            renderer.text(left_x, center[2] - arrows_offset, r1,g1,b1,255, 'cb-', 0, '<')
            renderer.text(right_x, center[2] - arrows_offset, r2,g2,b2,255, 'cb-', 0, '>')
        elseif yaw_direction == 90 then
            renderer.text(left_x, center[2] - arrows_offset, r2,g2,b2,255, 'cb-', 0, '<')
            renderer.text(right_x, center[2] - arrows_offset, r1,g1,b1,255, 'cb-', 0, '>')
        else
            renderer.text(left_x, center[2] - arrows_offset, r2,g2,b2,255, 'cb-', 0, '<')
            renderer.text(right_x, center[2] - arrows_offset, r2,g2,b2,255, 'cb-', 0, '>')
        end
    end
end


local console_logs = {}

console_logs.add = function(...)
    args = { ... }
    len = #args
    for i = 1, len do
        arg = args[i]
        r, g, b = unpack(arg)

        msg = {}

        if #arg == 3 then
            _G.table.insert(msg, " ")
        else
            for i = 4, #arg do
                _G.table.insert(msg, arg[i])
            end
        end
        msg = _G.table.concat(msg)

        if len > i then
            msg = msg .. "\0"
        end

        client.color_log(r, g, b, msg)
    end
end

console_logs.hitboxes = {"generic", "head", "chest", "stomach", "left arm", "right arm", "left leg", "right leg", "neck", "?", "gear"}

console_logs.on_aim_fire = function(e)
	console_logs[e.id] = {
        original = e,
		history = globals.tickcount() - e.tick
	}
    queue[globals.tickcount()] = {e.x,e.y,e.z, globals.curtime() + 2}
end

console_logs.on_aim_hit = function(e)
    if entity.get_prop(e.target, 'm_iHealth') <= 0 then
        user_info[1] = user_info[1] + 1
    end

    if not lua_items.select.widgets_list:get('Logs') then return end
    if not lua_items.select.ragebot_logs_select:get('Console') then return end

	if console_logs[e.id] == nil then return end
	local info = 
	{
        type = math.max(0, entity.get_prop(e.target, 'm_iHealth')) > 0,
		prefix = { lua_items.select.ragebot_hit:get() },
		hit = { lua_items.select.ragebot_hit:get() },
        miss = { lua_items.select.ragebot_miss:get()},
		name = entity.get_player_name(e.target),
		hitgroup = console_logs.hitboxes[e.hitgroup + 1] or '?',
		aimed_hitgroup = console_logs.hitboxes[console_logs[e.id].original.hitgroup + 1] or '?',
		aimed_hitchance = string.format('%d%%', math.floor(console_logs[e.id].original.hit_chance + 0.5)),
		hp = math.max(0, entity.get_prop(e.target, 'm_iHealth')),

	}

	console_logs.add(
        { info.prefix[1], info.prefix[2], info.prefix[3], 'Evolution » '}, 
		{ 200, 200, 200, 'hit '}, 
		{ info.hit[1], info.hit[2], info.hit[3],  info.name }, 
		{ 200, 200, 200, ' in the ' }, 
		{ info.hit[1], info.hit[2], info.hit[3], info.hitgroup }, 
		{ 200, 200, 200, info.type and info.hitgroup ~= info.aimed_hitgroup and ' (' or ''},
		{ info.hit[1], info.hit[2], info.hit[3], info.type and (info.hitgroup ~= info.aimed_hitgroup and info.aimed_hitgroup) or '' },
		{ 200, 200, 200, info.type and info.hitgroup ~= info.aimed_hitgroup and ')' or ''},
		{ 200, 200, 200, ' for '},
		{ info.hit[1], info.hit[2], info.hit[3], e.damage},
		{ 200, 200, 200, info.type and e.damage ~= console_logs[e.id].original.damage and ' (' or ''},
		{ info.hit[1], info.hit[2], info.hit[3], info.type and (e.damage ~= console_logs[e.id].original.damage and console_logs[e.id].original.damage) or '' },
		{ 200, 200, 200, info.type and e.damage ~= console_logs[e.id].original.damage and ')' or ''},
		{ 200, 200, 200, info.type and ' damage' or '' },
		{ 200, 200, 200, info.type and ' (' or '' }, { info.hit[1], info.hit[2], info.hit[3], info.type and info.hp or '' }, 
        { 200, 200, 200, info.type and ' hp remaning)' or '' },
		{ 200, 200, 200, ' [hc: ' }, { info.hit[1], info.hit[2], info.hit[3], info.aimed_hitchance },
		{ 200, 200, 200, ' | bt: ' }, { info.hit[1], info.hit[2], info.hit[3], console_logs[e.id].history },
		{ 200, 200, 200, ']' }
    )
end

console_logs.on_aim_miss = function(e)
    if not lua_items.select.widgets_list:get('Logs') then return end
    if not lua_items.select.ragebot_logs_select:get('Console') then return end
    local me = entity.get_local_player()
    local info = {
        prefix = {lua_items.select.ragebot_hit:get()},
        hit = {lua_items.select.ragebot_hit:get()},
        miss = { lua_items.select.ragebot_miss:get()},
        name = entity.get_player_name(e.target),
        hitgroup = console_logs.hitboxes[e.hitgroup + 1] or '?',
        aimed_hitgroup = console_logs.hitboxes[console_logs[e.id].original.hitgroup + 1] or '?',
        aimed_hitchance = string.format('%d%%', math.floor(console_logs[e.id].original.hit_chance + 0.5)),
        hp = math.max(0, entity.get_prop(e.target, 'm_iHealth')),
        reason = e.reason,
    }

    console_logs.add(
        {info.miss[1], info.miss[2], info.miss[3], 'Evolution » '}, 
        {200, 200, 200, 'missed shot at '}, {info.miss[1], info.miss[2], info.miss[3], info.name}, 
        {200, 200, 200, ' in the '}, {info.miss[1], info.miss[2], info.miss[3], info.hitgroup}, 
        {200, 200, 200, ' due to '}, {info.miss[1], info.miss[2], info.miss[3], info.reason},
        {200, 200, 200, ' [hc: '}, {info.miss[1], info.miss[2], info.miss[3], info.aimed_hitchance}, 
        {200, 200, 200, ' | bt: '}, {info.miss[1], info.miss[2], info.miss[3], console_logs[e.id].history},
        {200, 200, 200, ']'}
    )
end

local logs = {}
function misc_helpers.ragebot_logs()
    local offset, x, y = 0, screen[1] / 2, screen[2] * 0.9
    for idx, data in ipairs(logs) do
        if (((globals.realtime() / 2) * 2.0) - data[3]) < 4.0 and not (#logs > 6 and idx < #logs - 5) then
            data[2] = math.lerp(data[2], 255, 0.08)
        else
            data[2] = math.lerp(data[2], 0, 0.08)
        end

        offset = offset + 40 * (data[2] / 255)

        local r, g, b = unpack(data[4])
        local to_hex = rgba_to_hex(r, g, b, data[2])
        local icon = (string.find(data[1], "^Missed") and "" or "")

        local text_size_x, text_size_y = renderer.measure_text("", ' \a' .. to_hex .. '   \r' .. data[1] .. ' ')
        local emo_size_x, emo_size_y = renderer.measure_text("", ' \a' .. to_hex .. '   \r')

        local bg_alpha = math.min(data[2], 50)

        local bg_x = x - text_size_x / 2 - 1
        local bg_y = y - offset - 4
        local bg_w = text_size_x + 2
        local bg_h = 25

        if data[2] > 5 then
            renderer.blur(bg_x, bg_y, bg_w, bg_h, 0)
        end

        rectv(x + 21 - text_size_x / 2, y - offset - 4, text_size_x - 21, 25, {0, 0, 0, bg_alpha}, 0, {r, g, b, data[2]}, 1)
        rectv(x - 11 - text_size_x / 2, y - offset - 4, 25, 25, {0, 0, 0, bg_alpha}, 0, {r, g, b, data[2]}, 1)

        renderer.text(x - 9 - text_size_x / 2, y - offset + 3, 255, 255, 255, data[2], "", 0, ' \a' .. to_hex .. icon .. '   ')
        renderer.text(x - 1 - text_size_x / 2 + emo_size_x, y - offset + 4, 255, 255, 255, data[2], "", 0, data[1])

        if data[2] < 0.1 or not entity.get_local_player() then
            table.remove(logs, idx)
        end
    end
end



renderer.log = function(text, color)
    table.insert(logs, { text, 0, ((globals.realtime() / 2) * 2.0), color})
end

local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local function aim_hit(e)
    if not lua_items.select.widgets_list:get('Logs') then return end
    if not lua_items.select.ragebot_logs_select:get('Screen') then return end
    local group = hitgroup_names[e.hitgroup + 1] or '?'
    renderer.log(string.format('Hit %s in the %s for %d damage', entity.get_player_name(e.target), group, e.damage or 0), 
    {lua_items.select.ragebot_hit:get()})
end

local function aim_miss(e)
    if not lua_items.select.widgets_list:get('Logs') then return end
    if not lua_items.select.ragebot_logs_select:get('Screen') then return end
    local group = hitgroup_names[e.hitgroup + 1] or '?'
    renderer.log(string.format('Missed %s in the %s due to %s', entity.get_player_name(e.target), group, e.reason or "resolver"), 
    {lua_items.select.ragebot_miss:get()})
end

local fd_reset = false

function misc_helpers.allow_duck(cmd)
    local lp = entity.get_local_player()
    if lp == nil then return end
    local state = cmd.in_duck == 1
    local flags = entity.get_prop(lp, 'm_fFlags')
    local jumpcheck = bit.band(flags, 1) == 0

    if jumpcheck or cmd.in_jump == 1 then
        state = false
    end

    local active, mode = ui.get(ref.fakeduck)

    if active and state then
        local mode_new = 'Off hotkey'

        if mode == 2 or mode == 3 then
            mode_new = 'On hotkey'
        end

        override.set(ref.fakeduck, mode_new)
        fd_reset = false
    elseif not state then
        if not fd_reset then
            override.unset(ref.fakeduck)
            fd_reset = true
        end
    end
end

local tp_state = 'nil'

function misc_helpers.auto_tp(cmd)
    local lp = entity.get_local_player()
    if lp == nil then return end
    local flags = entity.get_prop(lp, 'm_fFlags')
    local jumpcheck = bit.band(flags, 1) == 0
    if is_vulnerable() and jumpcheck then
        tp_state = 'TP'
        cmd.force_defensive = true
        cmd.discharge_pending = true
    elseif not check_charge() then
        tp_state = 'CH'
    else
        tp_state = 'ACT'
    end
end

local is_hittable = false
local charge_state = false

function misc_helpers.unsafe_charge(cmd)
    local lp = entity.get_local_player()
    if not lp or not entity.is_alive(lp) then return end

    local threat = client.current_threat()
    local in_air = bit.band(entity.get_prop(lp, 'm_fFlags'), 1) == 0
    
    if threat then
        is_hittable = bit.band(entity.get_esp_data(threat).flags, bit.lshift(1, 11)) == 2048
    else
        is_hittable = false
    end

    if is_hittable and not check_charge() and ui.get(ref.doubletap.main[1]) and ui.get(ref.doubletap.main[2]) and in_air then
        ui.set(ref.aimbot, false)
        charge_state = true
    else
        ui.set(ref.aimbot, true)
        charge_state = false
    end
end


function misc_helpers.translate_menu(item)
    if item == "Auto" then
        return "scar20"
    elseif item == "Scout" then
        return "ssg08"
    elseif item == "Awp" then
        return "awp"
    elseif item == "Primary rifle" then
        return "ak47"
    elseif item == "Scoped rifle" then
        return "sg556"
    elseif item == "Machine gun" then
        return "negev"
    elseif item == "Default pistol" then
        return "glock"
    elseif item == "P250" then
        return "p250"
    elseif item == "Dual Berettas" then
        return "elite"
    elseif item == "Light pistol" then
        return "tec9"
    elseif item == "Heavy pistol" then
        return "deagle"
    elseif item == "Grenade" then
        return "hegrenade"
    elseif item == "Smoke" then
        return "smokegrenade"
    elseif item == "Incendiary" then
        return "molotov"
    elseif item == "Flashbang" then
        return "flashbang"
    elseif item == "Kevlar + Helmet" then
        return "vesthelm"
    elseif item == "Defuse kit" then
        return "defuser"
    elseif item == "Zeus" then
        return "Taser"
    else
        client.console_log("Unknown item: ", item)
    end
end

function misc_helpers.buybot()
    if not lua_items.select.buy_bot:get() then return end
    local primary_weapon = lua_items.select.buybot_primary:get()
    local secondary_weapon = lua_items.select.buybot_secondary:get()
    local utility = lua_items.select.buybot_utility:get()
    local current_buy = nil

    if primary_weapon == "Auto" and entity.get_classname(entity.get_player_weapon(entity.get_local_player())) == "CWeaponSCAR20" then
        current_buy = "buy "..misc_helpers.translate_menu(secondary_weapon)
    else
        current_buy = "buy "..misc_helpers.translate_menu(primary_weapon).."; ".."buy "..misc_helpers.translate_menu(secondary_weapon) 
    end
    if #utility == 0 then
        client.exec(current_buy)
    else
        for i = 1, #utility do
            current_buy = current_buy.."; buy "..misc_helpers.translate_menu(utility[i])
        end
        client.exec(current_buy)
    end
end

local view_cvars = {
    viewmodel_offset_x = cvar.viewmodel_offset_x:get_float(),
    viewmodel_offset_y = cvar.viewmodel_offset_y:get_float(),
    viewmodel_offset_z = cvar.viewmodel_offset_z:get_float(),

}

local scpd_value_x = view_cvars.viewmodel_offset_x
local scpd_value_y = view_cvars.viewmodel_offset_y
local scpd_value_z = view_cvars.viewmodel_offset_z


function misc_helpers.fastladder(e)
    local local_player = entity.get_local_player()
    local pitch, yaw = client.camera_angles()
    if entity.get_prop(local_player, "m_MoveType") == 9 then
        e.yaw = math.floor(e.yaw+0.5)
        e.roll = 0
        if e.forwardmove == 0 then
            if e.sidemove ~= 0 then
                e.pitch = 89
                e.yaw = e.yaw + 180
                if e.sidemove < 0 then
                    e.in_moveleft = 0
                    e.in_moveright = 1
                end
                if e.sidemove > 0 then
                    e.in_moveleft = 1
                    e.in_moveright = 0
                end
            end
        end
        if e.forwardmove > 0 then
            if pitch < 45 then
                e.pitch = 89
                e.in_moveright = 1
                e.in_moveleft = 0
                e.in_forward = 0
                e.in_back = 1
                if e.sidemove == 0 then
                    e.yaw = e.yaw + 90
                end
                if e.sidemove < 0 then
                    e.yaw = e.yaw + 150
                end
                if e.sidemove > 0 then
                    e.yaw = e.yaw + 30
                end
            end 
        end
        if e.forwardmove < 0 then
            e.pitch = 89
            e.in_moveleft = 1
            e.in_moveright = 0
            e.in_forward = 1
            e.in_back = 0
            if e.sidemove == 0 then
                e.yaw = e.yaw + 90
            end
            if e.sidemove > 0 then
                e.yaw = e.yaw + 150
            end
            if e.sidemove < 0 then
                e.yaw = e.yaw + 30
            end
        end
    end
end

local fps_cvars = {
    r_3dsky = cvar.r_3dsky:get_int(),
    fog_enable = cvar.fog_enable:get_int(),
    fog_enable_water_fog = cvar.fog_enable_water_fog:get_int(),
    fog_enableskybox = cvar.fog_enableskybox:get_int(),
    r_shadows = cvar.r_shadows:get_int(),
    violence_hblood = cvar.violence_hblood:get_int(),
    violence_ablood = cvar.violence_ablood:get_int(),
    r_decals = cvar.r_decals:get_int(),
    mat_postprocess_enable = cvar.mat_postprocess_enable:get_int(),
    cl_disable_ragdolls = cvar.cl_disable_ragdolls:get_int(),
    r_eyegloss = cvar.r_eyegloss:get_int(),
    r_eyemove = cvar.r_eyemove:get_int(),
    r_eyeshift_x = cvar.r_eyeshift_x:get_int(),
    r_eyeshift_y = cvar.r_eyeshift_y:get_int(),
    r_eyeshift_z = cvar.r_eyeshift_z:get_int(),
    r_eyesize = cvar.r_eyesize:get_int(),
    cl_detail_avoid_radius = cvar.cl_detail_avoid_radius:get_int(),
    cl_detail_max_sway = cvar.cl_detail_max_sway:get_int(),
    dsp_slow_cpu = cvar.dsp_slow_cpu:get_int(),
    func_break_max_pieces = cvar.func_break_max_pieces:get_int(),
    r_drawtracers = cvar.r_drawtracers:get_int(),
    r_dynamic = cvar.r_dynamic:get_int(),
    r_drawparticles = cvar.r_drawparticles:get_int(),
    muzzleflash_light = cvar.muzzleflash_light:get_int(),
    mat_hdr_enabled = cvar.mat_hdr_enabled:get_int(),
}

function misc_helpers.fps_boost(value)
    cvar.r_3dsky:set_int((value and lua_items.select.fps_opt:get('3D Sky')) and 0 or fps_cvars.r_3dsky)

    cvar.fog_enable:set_int((value and lua_items.select.fps_opt:get('Fog')) and 0 or fps_cvars.fog_enable)
    cvar.fog_enable_water_fog:set_int((value and lua_items.select.fps_opt:get('Fog')) and 0 or fps_cvars.fog_enable_water_fog)
    cvar.fog_enableskybox:set_int((value and lua_items.select.fps_opt:get('Fog')) and 0 or fps_cvars.fog_enableskybox)

    cvar.r_shadows:set_int((value and lua_items.select.fps_opt:get('Shadows')) and 0 or fps_cvars.r_shadows)

    cvar.violence_hblood:set_int((value and lua_items.select.fps_opt:get('Blood')) and 0 or fps_cvars.violence_hblood)
    cvar.violence_ablood:set_int((value and lua_items.select.fps_opt:get('Blood')) and 0 or fps_cvars.violence_ablood)

    cvar.r_decals:set_int((value and lua_items.select.fps_opt:get('Decals')) and 0 or fps_cvars.r_decals)

    cvar.mat_postprocess_enable:set_int((value and lua_items.select.fps_opt:get('Bloom')) and 0 or fps_cvars.mat_postprocess_enable)

    cvar.cl_disable_ragdolls:set_int((value and lua_items.select.fps_opt:get('Ragdols')) and 0 or fps_cvars.cl_disable_ragdolls)

    cvar.r_eyegloss:set_int((value and lua_items.select.fps_opt:get('Eye candy')) and 0 or fps_cvars.r_eyegloss)
    cvar.r_eyemove:set_int((value and lua_items.select.fps_opt:get('Eye candy')) and 0 or fps_cvars.r_eyemove)
    cvar.r_eyeshift_x:set_int((value and lua_items.select.fps_opt:get('Eye candy')) and 0 or fps_cvars.r_eyeshift_x)
    cvar.r_eyeshift_y:set_int((value and lua_items.select.fps_opt:get('Eye candy')) and 0 or fps_cvars.r_eyeshift_y)
    cvar.r_eyeshift_z:set_int((value and lua_items.select.fps_opt:get('Eye candy')) and 0 or fps_cvars.r_eyeshift_z)
    cvar.r_eyesize:set_int((value and lua_items.select.fps_opt:get('Eye candy')) and 0 or fps_cvars.r_eyesize)

    cvar.r_drawparticles:set_int((value and lua_items.select.fps_opt:get('Molotov')) and 0 or fps_cvars.r_drawparticles)

    cvar.cl_detail_avoid_radius:set_int((value and lua_items.select.fps_opt:get('Other')) and 0 or fps_cvars.cl_detail_avoid_radius)
    cvar.cl_detail_max_sway:set_int((value and lua_items.select.fps_opt:get('Other')) and 0 or fps_cvars.cl_detail_max_sway)
    cvar.dsp_slow_cpu:set_int((value and lua_items.select.fps_opt:get('Other')) and 0 or fps_cvars.dsp_slow_cpu)
    cvar.func_break_max_pieces:set_int((value and lua_items.select.fps_opt:get('Other')) and 0 or fps_cvars.func_break_max_pieces)
    cvar.r_drawtracers:set_int((value and lua_items.select.fps_opt:get('Other')) and 0 or fps_cvars.r_drawtracers)
    cvar.r_dynamic:set_int((value and lua_items.select.fps_opt:get('Other')) and 0 or fps_cvars.r_dynamic)
    cvar.muzzleflash_light:set_int((value and lua_items.select.fps_opt:get('Other')) and 0 or fps_cvars.muzzleflash_light)
    cvar.mat_hdr_enabled:set_int((value and lua_items.select.fps_opt:get('Other')) and 0 or fps_cvars.mat_hdr_enabled)
end

lua_items.select.fps_boost:set_callback(function(self)
    if self:get() and lua_items.select.fps_always:get() then
        misc_helpers.fps_boost(true)
    else
        misc_helpers.fps_boost(false)
    end
end)

lua_items.select.fps_always:set_callback(function(self)
    if lua_items.select.fps_boost:get() and self:get() then
        misc_helpers.fps_boost(true)
    else
        misc_helpers.fps_boost(false)
    end
end)

lua_items.select.fps_opt:set_callback(function(self)
    if lua_items.select.fps_boost:get() and lua_items.select.fps_always:get() then
        misc_helpers.fps_boost(true)
    else
        misc_helpers.fps_boost(false)
    end
end)

function misc_helpers.filter(bool)
    cvar.developer:set_int(0)
    cvar.con_filter_enable:set_int(bool and 1 or 0)
    cvar.con_filter_text:set_string(bool and "IrWL5106TZZKNFPz4P4Gl3pSN?J370f5hi373ZjPg%VOVh6lN" or "")
    client.exec(bool and "con_filter_enable 1" or "con_filter_enable 0")
end

lua_items.select.filter_console:set_callback(function(self)
    client.exec(self:get() and 'clear')
    misc_helpers.filter(self:get())
end)

function misc_helpers.animated_clantag(text, indices) 
    if not globals.mapname() then return end
    local text_anim = '               ' .. text .. '                      '
    local tickcount = globals.tickcount() + math.floor(client.real_latency()+0.22 / globals.tickinterval() + 0.5)
    local i = tickcount / math.floor(0.3 / globals.tickinterval() + 0.5)
    i = math.floor(i % #indices) i = indices[i+1]+1 
    return string.sub(text_anim, i, i+15)
end

function misc_helpers.set_clan()
    if not globals.mapname() then return end
    if not globals.chokedcommands() then return end
    ui.set(ref.clantag, false)
    local tag_text = misc_helpers.animated_clantag('Evolution', {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0})
    local game_rules = entity.get_game_rules()
    if not game_rules then return end
	if entity.get_prop(game_rules,'m_gamePhase') == 5 or entity.get_prop(game_rules,'m_gamePhase') == 4 then
		tag_text = misc_helpers.animated_clantag('Evolution', {12})
		client.set_clan_tag(tag_text)
	elseif tag_text ~= tag_text_prev then
		client.set_clan_tag(tag_text)
	end
	tag_text_prev = tag_text
end

lua_items.select.clantag:set_callback(function(self)
    if not self:get() then
        client.delay_call(0.2, function()
            client.set_clan_tag('')
        end)
    end
end)

local GameStateAPI = panorama.open().GameStateAPI

local lastChatMessage = {}

function misc_helpers.onPlaySay(e)
	local sender = client.userid_to_entindex(e.userid)
	if not entity.is_enemy(sender) then return end

	if GameStateAPI.IsSelectedPlayerMuted(GameStateAPI.GetPlayerXuidStringFromEntIndex(sender)) then return end

	client.delay_call(0.2, function()
		if lastChatMessage[sender] ~= nil and math.abs(globals.realtime() - lastChatMessage[sender]) < 0.4 then
			return
		end


		local enemyTeamName = entity.get_prop(entity.get_player_resource(), "m_iTeam", sender) == 2 and "T" or "CT"

		local placeName = entity.get_prop(sender, "m_szLastPlaceName")
		local enemyName = entity.get_player_name(sender)
		
		local localizeStr = ("Cstrike_Chat_%s_%s"):format(enemyTeamName, entity.is_alive(sender) and "Loc" or "Dead")
		local msg = localize(localizeStr, {
			s1 = enemyName,
			s2 = e.text,
			s3 = localize(placeName ~= "" and placeName or "UI_Unknown")
		})

		chat.print_player(sender, msg)
	end)
end

function misc_helpers.onPlayChat(e)
	if not entity.is_enemy(e.entity) then return end
	lastChatMessage[e.entity] = globals.realtime()
end

local player_data = { }

function rage_helpers.erase_player_data()
    for k in pairs(player_data) do
        player_data[k] = nil
    end
end

function rage_helpers.unset_player_body_yaw(entindex)
    plist.set(entindex, 'Force body yaw', false)
    plist.set(entindex, 'Force body yaw value', 0)
end

function rage_helpers.set_player_body_yaw(entindex, value)
    plist.set(entindex, 'Force body yaw', true)
    plist.set(entindex, 'Force body yaw value', value)
end

function rage_helpers.reset_plist()
    for i = 1, 64 do
        rage_helpers.unset_player_body_yaw(i)
    end
end

function rage_helpers.get_max_desync_delta(animstate)
    local duck_amount = animstate.duck_amount

    local stop_to_full_running_fraction = animstate.stop_to_full_running_fraction

    local speed_fraction = math.max(0, math.min(animstate.feet_speed_forwards_or_sideways, 1))
    local speed_factor = math.max(0, math.min(animstate.feet_speed_unknown_forwards_or_sideways, 1))

    local value = ((stop_to_full_running_fraction * -0.30000001) - 0.19999999) * speed_fraction + 1

    if duck_amount > 0 then
        value = value + ((duck_amount * speed_factor) * (0.5 - value))
    end

    return animstate.max_yaw * value
end
    
function rage_helpers.reset_reso_date(e)
    local me = entity.get_local_player()
    local userid = client.userid_to_entindex(e.userid)

    if me ~= userid then return end

    rage_helpers.erase_player_data()
end


function rage_helpers.jitter_resolver()
    local me = entity.get_local_player()

    if me == nil then return end

    local enemies = entity.get_players(true)

    if enemies == nil then return end

    local my_origin = vector(
        entity.get_origin(me)
    )

    for i = 1, #enemies do
        local enemy = enemies[i]

        local player_info = c_entity.new(enemy)

        if player_info == nil then goto continue end

        if not player_data[enemy] then
            player_data[enemy] = {
            misses = 0,
            last_yaw = 0,
            last_yaw_update_time = 0
            }
        end

        local data = player_data[enemy]

        if data == nil then goto continue end

        local is_correction_active = plist.get(enemy, 'Correction active')

        if not is_correction_active or data.misses > 2 then
            rage_helpers.unset_player_body_yaw(enemy)
            goto continue
        end

        local animstate = player_info:get_anim_state()

        if animstate == nil then goto continue end

        local head_center_position = vector(entity.hitbox_position(enemy, 0))

        local targets = vector((head_center_position - my_origin):angles())
        local yaw = math.normalize(targets.y - animstate.eye_angles_y + 180, -180, 180)

        if data.last_yaw ~= yaw then
            if math.abs(data.last_yaw - yaw) >= 20 and math.abs(data.last_yaw - yaw) <= 340 then
                data.last_yaw_update_time = globals.tickcount() + 15
            end
            data.last_yaw = yaw
        end

        local is_jitter = data.last_yaw_update_time > globals.tickcount()

        if not is_jitter then
            rage_helpers.unset_player_body_yaw(enemy)

            goto continue
        end

        local mod = data.misses == 0 and 1 or -1
        local side = math.clamp(yaw, -1, 1) * mod

        local max_desync = rage_helpers.get_max_desync_delta(animstate)
        rage_helpers.set_player_body_yaw(enemy, max_desync * side)

        ::continue::
    end
end

lua_items.select.resolver:set_callback(function(self)
    if not self:get() then
        rage_helpers.erase_player_data()
        rage_helpers.reset_plist()
    end
end)


function rage_helpers.predict()
    local lp = entity.get_local_player()
    if not lp then return end

    if not entity.is_alive(lp) then return end

    cvar.cl_interp:set_int(client.real_latency()*1000 < 45 and 0)
    cvar.cl_interpolate:set_int(client.real_latency()*1000 < 45 and 1 or 0)
    cvar.cl_interp_ratio:set_int(client.real_latency()*1000 < 45 and 2 or 0)
end

function rage_helpers.air_qs(cmd)
    local lp = entity.get_local_player()
    if not lp then return end
    if not entity.is_alive(lp) then return end

    local ticks = 0
    local players = entity.get_players(true)
    local lpvec = vector(entity.get_prop(lp, "m_vecOrigin"))
    local weapon = entity.get_player_weapon(lp)
    local class = entity.get_classname(weapon)

    if class ~= "CWeaponSSG08" then return end
    local vecvelocity = { entity.get_prop(lp, 'm_vecVelocity') }

    local check_vel = vecvelocity[3] > -20 and vecvelocity[3] < 80
    local flags = entity.get_prop(lp, 'm_fFlags')
    local jumpcheck = bit.band(flags, 1) == 0

    local enemy = client.current_threat()
    if not enemy then return end
    if not jumpcheck then return end
    local enemyvec = vector(entity.get_origin(enemy))
    local trace_l = vector(entity.get_origin(lp))
    if not check_vel then return end
    for i=1, #players do
        if players == nil then return end
        local x1, y1, z1 = entity.get_prop(players[i], "m_vecOrigin")

        local dist = anti_knife_dist(lpvec.x, lpvec.y, lpvec.z, x1, y1, z1)
        if dist <= 1500 then
            if cmd.quick_stop then
                if (globals.tickcount() - ticks) > 3 then
                    cmd.in_speed = 1
                end
            else
                ticks = globals.tickcount()
            end
        end
    end
end

local autopeek = { ui.reference( 'RAGE', 'Other', 'Quick peek assist' ) }
local mindmg = { ui.reference('RAGE', 'Aimbot', 'Minimum damage') }
local mindamage_override = { ui.reference('RAGE', 'Aimbot', 'Minimum damage override') }
local quick_peek_assist = { ui.reference( 'RAGE', 'Other', 'Quick peek assist' ) }

local enemy_lc_data = { }
local function create_new_record( player )
    local data = { }

    data.player = player

    data.last_simtime = 0
    data.origin = vector( entity.get_origin( player ) )

    data.breaking_lc = false
    data.defensive_active_until = 0
    data.defensive = false

    function data.update( )
        data.defensive = bit.band( entity.get_esp_data( data.player ).flags, 131072 ) == 131072
        local simtime = toticks( entity.get_prop( player, 'm_flSimulationTime' ) )
        local origin = vector( entity.get_origin( player ) )

        local delta = simtime - data.last_simtime

        if delta < 0 then
            data.defensive_active_until = globals.tickcount( ) + math.abs( delta )
        else
            data.breaking_lc = ( data.origin - origin ):length2dsqr( ) > 4096
            data.origin = origin
        end

        data.last_simtime = simtime
    end

    enemy_lc_data[ player ] = data

    return data
end

-- god forbid this hardcode shit please dont send me into hell ????
local tick_to_distance = {
    0,
    0.33566926072059,
    0.90550823109139,
    1.7094571925458,
    2.7475758645732,
    4.0198045277169,
    5.5243356897069,
    7.2423273783409,
    9.1564213090631,
    11.250673856852,
    13.510480438002,
    15.922361837797,
    18.473989413581,
    21.153990043142,
    23.951936812474,
    26.858254779359,
    29.864120158319,
    32.961441695549,
    36.142785057665,
    39.401338315411,
    42.730817707458,
    46.125502156263,
    49.580063421207,
    53.08964170921,
    56.649735547569,
    60.256252190999,
    63.905432011078,
    67.59383918326,
    71.318242246617,
    75.075708340563,
    78.863628408227,
    82.67942790961,
    86.520915828495,
    90.385926351936,
    94.272651987509,
    98.17890171902,
    102.08515145053,
    105.99140118205,
    109.89765091356,
    113.80390064508,
    117.7101503766,
    121.61640010812,
    125.52264983965,
    129.42889957117,
    133.3351493027,
    137.24139903422,
    141.14764876575,
    145.05389849727,
    148.9601482288,
    152.86639796033,
    156.77264769186,
    160.67889742339,
    164.58514715492,
    168.49139688645,
    172.39764661798,
    176.30389634951,
    180.21014608104,
    184.11639581258,
    188.02264554411,
    191.92889527564,
    195.83514500718,
    199.74139473871,
    203.64764447024,
    207.55389420178,
}

local function can_hit_in_x_ticks( wanted_pos_distance, max_speed, ticks )
    local distance_mult = max_speed / 250
    local wanted_distance = wanted_pos_distance * distance_mult

    local max_distance = tick_to_distance[ ticks ] * distance_mult

    return wanted_distance <= max_distance
end


local debug_visuals = { }
local visuals = {
    peeking_points = { },
    found_point = nil,
}
local function debug_visualize( positions, name )
    if type( positions ) ~= 'table' then
        positions = { positions }
    end

    debug_visuals[ name ] = positions
end

local function set_visual_peeking_points( points )
    select.peeking_points = points
end

local e_hitboxes = {
    [ 'head' ] = 1,
    [ 'stomach' ] = 2,
    [ 'chest' ] = 3,
    [ 'limbs' ] = 4
}

local hitboxes = {
    { 0 },
    { 2, 3, 4 },
    { 5, 6 },
    {
        13, 14, 15, 16, 17, 18, -- arms
        7, 8, 9, 10, -- legs
        11, 1, -- feet
    },
}

local cache = {
    autopeek_position = vector( 0, 0, 0 ),
    last_seen = 0,
    found_position = vector( 0, 0, 0 ),
    found_position_dist = 1,
}

local closest_enemy = nil

local function get_min_dmg( )
    if ui.get( mindamage_override[ 1 ] ) and ui.get( mindamage_override[ 2 ] ) then
        return ui.get( mindamage_override[ 3 ] )
    end

    return ui.get( mindmg[ 1 ] )
end

local function reset_cache( )
    cache.last_seen = 0
    cache.found_position = vector( 0, 0, 0 )
end 

local function get_closest_enemy( )
    local screen_center = vector( client.screen_size( ) ) / 2
   
    local smallest_distance = math.huge
    local closest_enemy_found = nil

    local enemies = entity.get_players( true )
    for i = 1, #enemies do
        local enemy = enemies[ i ]

        if enemy == nil then
            goto continue
        end

        --* only check for enemies that are alive and not dormant
        if not entity.is_alive( enemy ) or entity.is_dormant( enemy ) then
            goto continue
        end
        
        local enemy_position = vector( entity.get_prop( enemy, 'm_vecOrigin' ) )
        
        local x, y = renderer.world_to_screen( enemy_position.x, enemy_position.y, enemy_position.z )

        local enemy_screen = vector( x, y, 0 )
        
        if enemy_screen.x == nil or enemy_screen.y == nil then
            goto continue
        end

        local distance = ( enemy_screen - screen_center ):length( )

        if distance < smallest_distance then
            smallest_distance = distance
            closest_enemy_found = enemy
        end

        ::continue::
    end

    closest_enemy = closest_enemy_found
end

local function get_multipoint( ent, hitbox_center, scale )
    local target_pos = vector( entity.get_prop( ent, 'm_vecOrigin' ) )

    local lp = entity.get_local_player( )
    local lp_pos = vector( entity.get_prop( lp, 'm_vecOrigin' ) )

    local lp_to_tgt = target_pos - lp_pos
    local _, new_yaw = lp_to_tgt:angles( )

    local max_check_dist = 5

    local mp_poses = { }

    for side = -1, 1, 2 do
        local yaw = new_yaw + ( 90 * side )
        local yaw_rad = math.rad( yaw )

        local x = math.cos( yaw_rad )
        local y = math.sin( yaw_rad )

        local mp_start = hitbox_center + vector( x * max_check_dist, y * max_check_dist, 0 )
        local diff = hitbox_center - mp_start

        local frac = client.trace_line( lp, mp_start.x, mp_start.y, mp_start.z, hitbox_center.x, hitbox_center.y, hitbox_center.z )

        local mp_pos = hitbox_center + ( diff * ( 1 - frac ) ) * scale

        table.insert( mp_poses, mp_pos )
    end

    return mp_poses
end

local function get_head_multipoint( ent, hitbox_center, scale )
    local lp = entity.get_local_player( )
    local side_mp = get_multipoint( ent, hitbox_center, scale )

    local max_check_dist = -5
    local mp_start = hitbox_center + vector( 0, 0, max_check_dist )
    local diff = hitbox_center - mp_start

    local frac = client.trace_line( lp, mp_start.x, mp_start.y, mp_start.z, hitbox_center.x, hitbox_center.y, hitbox_center.z )

    local mp_pos = hitbox_center + ( diff * ( 1 - frac ) ) * scale

    table.insert( side_mp, mp_pos )

    return side_mp
end

local function get_player_points( player )
    local points = { }

    local find = {
        head = true,
        chest = true,
        stomach = true,
        limbs = false
    }

    local mp = {
        head = false,
        chest = false,
        stomach = false,
        limbs = false
    }

    local mp_scale = {
        head = 1,
        chest = 1,
        stomach = 1,
        limbs = 0
    }

    if find.head then
        local head_hitboxes = hitboxes[ e_hitboxes[ 'head' ] ]

        for i = 1, #head_hitboxes do
            local head = vector( entity.hitbox_position( player, head_hitboxes[ i ] ) )

            if not mp.head then
                table.insert( points, head )
            else
                local multipoints = get_head_multipoint( player, head, mp_scale.head )

                for mp_idx = 1, #multipoints do
                    table.insert( points, multipoints[ mp_idx ] )
                end
            end
        end
    end

    if find.chest then
        local chest_hitboxes = hitboxes[ e_hitboxes[ 'chest' ] ]
        for i = 1, #chest_hitboxes do
            local chest = vector( entity.hitbox_position( player, chest_hitboxes[ i ] ) )

            if not mp.chest then
                table.insert( points, chest )
            else
                local multipoints = get_multipoint( player, chest, mp_scale.chest )
                
                for mp_idx = 1, #multipoints do
                    table.insert( points, multipoints[ mp_idx ] )
                end
            end
        end
    end

    if find.stomach then
        local stomach_hitboxes = hitboxes[ e_hitboxes[ 'stomach' ] ]
        for i = 1, #stomach_hitboxes do
            local stomach = vector( entity.hitbox_position( player, stomach_hitboxes[ i ] ) )
            
            if not mp.stomach then
                table.insert( points, stomach )
            else
                local multipoints = get_multipoint( player, stomach, mp_scale.stomach )

                for mp_idx = 1, #multipoints do
                    table.insert( points, multipoints[ mp_idx ] )
                end
            end
        end
    end

    if find.limbs then
        local limbs_hitboxes = hitboxes[ e_hitboxes[ 'limbs' ] ]
        for i = 1, #limbs_hitboxes do
            local limb = vector( entity.hitbox_position( player, limbs_hitboxes[ i ] ) )
            table.insert( points, limb )
        end
    end

    return points
end

local function get_peeking_points( lp )
    local lp_origin = vector( entity.get_prop( lp, 'm_vecOrigin' ) )
    local lp_eye = vector( client.eye_position( ) )

    local _pitch, yaw = client.camera_angles( )

    local head_height = lp_eye.z - lp_origin.z

    local start_offset = lua_items.select.dot_offset:get()
    local dots = lua_items.select.dot_amount:get()
    local total_distance = lua_items.select.dot_span:get()
    local gap = total_distance / dots

    local dot_positions = { }

    for i = -1, 1, 2 do
        local dot_yaw = yaw + ( 90 * i )

        local forwardvector = vector( math.cos( math.rad( dot_yaw ) ), math.sin( math.rad( dot_yaw ) ), 0 )

        for dot_iter = 1, dots do
            local dot_position = lp_eye + ( forwardvector * ( gap * dot_iter ) ) + ( forwardvector * start_offset )

            local trace_res = trace.line( dot_position, dot_position + vector( 0, 0, -200 ), { mask = 'MASK_SOLID_BRUSHONLY' } )
	
            local trace_fraction = trace_res.fraction
            if trace_fraction < 1 then
                local end_pos = trace_res.end_pos + vector( 0, 0, head_height )

                if ( end_pos.z - lp_origin.z ) > 40 then
                    dot_iter = dots
                end

                dot_position = end_pos
            end

            local trace_res = trace.line( lp_eye, dot_position, { skip = entity.get_players( ), mask = 'MASK_SOLID' } )
            if trace_res.fraction == 1 then
                table.insert( dot_positions, dot_position )
            else
                local last_dot_pos = lp_eye + ( ( forwardvector * ( gap * dot_iter ) ) + ( forwardvector * start_offset ) ) * trace_res.fraction - forwardvector * 19
                last_dot_pos.z = dot_position.z
                table.insert( dot_positions, last_dot_pos )
                break
            end
        end
    end

    return dot_positions
end

local function can_hit_from_positions( lp, positions, target, target_hitpoints )
    local minimum_damage = get_min_dmg( )

    for i = 1, #positions do
        local position = positions[ i ]
        
        select.found_point = i

        for j = 1, #target_hitpoints do
            local hitpoint = target_hitpoints[ j ]
        
            local hit_player_name = entity.get_player_name( hit_entity )
            local target_health = entity.get_prop( hit_entity, 'm_iHealth' )

            if hit_entity == target then
                local wanted_dmg = minimum_damage

                if minimum_damage > 100 then
                    wanted_dmg = target_health + ( minimum_damage - 100 )
                end

                -- if mindmg is low enough or we can kill the target with one shot, return true or we can overall shoot the target
                if simulated_dmg >= target_health or simulated_dmg > wanted_dmg then
                    cache.found_position = position
                    cache.found_position_dist = ( cache.autopeek_position - cache.found_position ):length2d( )
                    return true
                end
            elseif hit_entity ~= nil and entity.is_alive( hit_entity ) then
                -- if we hit a different target,check if we can 1 shot it
                local wanted_dmg = minimum_damage

                if minimum_damage > 100 then
                    wanted_dmg = target_health + ( minimum_damage - 100 )
                end


                if simulated_dmg >= target_health or simulated_dmg > wanted_dmg then
                    cache.found_position = position
                    return true
                end
            end
        end
    end

    select.found_point = nil
    return false
end

local function ready_to_shoot( lp, cmd )
    local slowdown = entity.get_prop( lp, 'm_flVelocityModifier' ) < 0.9
    local has_user_input = cmd.in_moveleft == 1 or cmd.in_moveright == 1 or cmd.in_back == 1 or cmd.in_forward == 1 or cmd.in_jump == 1
    local wep = entity.get_player_weapon( entity.get_local_player( ) )

    local next_shot_ready = false
    if wep then
        local reloading = entity.get_prop( wep, 'm_bInReload' ) == 1
        local next_attack_ready = entity.get_prop( wep, 'm_flNextPrimaryAttack' ) < globals.curtime( )

        if not reloading and next_attack_ready then
            next_shot_ready = true
        end
    end
    
    local can_normally_shoot = next_shot_ready

    return not ( ( slowdown or has_user_input or not next_shot_ready ) and not can_normally_shoot )
end

local function move_to_pos( cmd, lp, lp_pos, new_pos )
    local distance = lp_pos:dist( new_pos ) + 5
    local unit_vec = ( new_pos - lp_pos ):normalized( )
    
    new_pos = lp_pos + unit_vec * ( distance + 5 )

    if cmd.forwardmove == 0 and cmd.sidemove == 0 and cmd.in_forward == 0 and cmd.in_back == 0 and cmd.in_moveleft == 0 and cmd.in_moveright == 0 then
        if distance >= 0.5 then
            local fwd1 = new_pos - lp_pos

            local pos1 = new_pos + fwd1:normalized( )*10

            local fwd = pos1 - lp_pos
            local pitch, yaw = fwd:angles()

            if yaw == nil then
                return
            end

            cmd.move_yaw = yaw
            cmd.in_speed = 0

            cmd.in_moveleft, cmd.in_moveright = 0, 0
            cmd.sidemove = 0


            if distance > 8 then
                cmd.forwardmove = 900000
            else
                local wishspeed = math.min( 450, math.max( 1.1+entity.get_prop( lp, "m_flDuckAmount" ) * 10, distance * 9 ) )
                local vel = vector( entity.get_prop( lp, "m_vecAbsVelocity" ) ):length2d( )
                if vel >= math.min( 250, wishspeed )+15 then
                    cmd.forwardmove = 0
                    cmd.in_forward = 0
                else
                    cmd.forwardmove = math.max( 6, vel >= math.min( 250, wishspeed ) and wishspeed * 0.9 or wishspeed )
                    cmd.in_forward = 1
                end
            end
        end
    end
end

local function handle_peek( cmd )
    local lp = entity.get_local_player( )
    local lp_pos = vector( client.eye_position( ) )

    cache.found_position.z = lp_pos.z
    
    move_to_pos( cmd, lp, lp_pos, cache.found_position )
end

local function handle_retreat( cmd )
    local lp = entity.get_local_player( )
    local lp_pos = vector( client.eye_position( ) )

    move_to_pos( cmd, lp, lp_pos, cache.autopeek_position )
end

local function is_doubletap_charged( )
    local m_nTickBase = entity.get_prop( entity.get_local_player( ), 'm_nTickBase')
    local client_latency = client.latency( )
    local shift = math.floor( m_nTickBase - globals.tickcount( ) - 3 - toticks( client_latency ) * .5 + .7 * ( client_latency * 10 ) )

    local wanted = -11

    return shift <= wanted
end

local debug = {
    state = 'disabled',
    step = 0,
    visual_step = 0,
}

local function set_state( new_state )
    debug.state = new_state
end

local e_visual_steps = {
    IDLE = 0,
    FINDING_TARGET = 1,
    SEARCHING_HITPOINTS = 2,
    CHECKING_HITPOINTS = 3,
    PEEKING = 4,
    RETREATING = 5,
    WAITING_FOR_SHOT = 6,
    NO_ENEMIES = 7,
    DT_NOT_CHARGED = 8,
}

local visual_texts = {
    [ e_visual_steps.IDLE ] = '',
    [ e_visual_steps.FINDING_TARGET ] = '',
    [ e_visual_steps.SEARCHING_HITPOINTS ] = '',
    [ e_visual_steps.CHECKING_HITPOINTS ] = '',
    [ e_visual_steps.PEEKING ] = '',
    [ e_visual_steps.RETREATING ] = '',
    [ e_visual_steps.WAITING_FOR_SHOT ] = '',
    [ e_visual_steps.NO_ENEMIES ] = '',
    [ e_visual_steps.DT_NOT_CHARGED ] = '',
}

local e_steps = {
    IDLE = 0,
    FINDING_TARGET = 1,
    SEARCHING_HITPOINTS = 2,
    CHECKING_HITPOINTS = 3,
    PEEKING = 4,
    RETREATING = 5,
}

local function set_step( step )
    debug.step = step
end

local function set_visual_step( step )
    debug.visual_step = step
end

local peeking_points = { }
local function gpt_peek( cmd )
    local lp = entity.get_local_player( )

    if not lp then return end

local pos = vector( entity.get_prop( lp, 'm_vecOrigin' ) )
    local autopeek_state = ui.get( autopeek[ 2 ] )
    if not autopeek_state  or not lua_items.select.ai_peek:get() then
        cache.autopeek_position = pos
        peeking_points = get_peeking_points( lp )

        reset_cache( )
        set_state( 'disabled' )
        set_step( e_steps.IDLE )
        set_visual_step( e_visual_steps.IDLE )
        return
    end

    set_visual_peeking_points( peeking_points )

    set_state( 'idle' )

    local distance = ( cache.autopeek_position - cache.found_position ):length2d( )
    local can_run = can_hit_in_x_ticks( distance, 250, 24 )

    local can_shoot = ready_to_shoot( lp, cmd )

    if ( cache.last_seen + 24 ) >= globals.tickcount( ) and can_run and can_shoot then
        handle_peek( cmd )
        set_state( 'peeking' )
        set_step( e_steps.PEEKING )
        set_visual_step( e_visual_steps.PEEKING )
        return --!!!!!!!!!!!!!!!!!!! REMOVE IF BAD
    elseif ( cache.autopeek_position - pos ):length2d( ) > 5 then
        handle_retreat( cmd )
        set_state( 'retreating' )
        
        set_step( e_steps.RETREATING )
        set_visual_step( e_visual_steps.RETREATING )
        return --!!!!!!!!!!!!!!!!!!! REMOVE IF BAD
    end

    if not can_shoot then
        set_step( e_steps.IDLE )
        set_visual_step( e_visual_steps.WAITING_FOR_SHOT )
        return
    end
    
    local targets = { closest_enemy }

    if #targets == 0 or targets[ 1 ] == nil then
        reset_cache( )
        set_state( 'idle' )
        set_step( e_steps.IDLE )
        set_visual_step( e_visual_steps.NO_ENEMIES )
        return
    end

    if can_shoot then
        set_step( e_steps.FINDING_TARGET )
        set_visual_step( e_visual_steps.FINDING_TARGET )
    end

    local g_can_hit = false
    local g_can_peek = false
    for idx = 1, #targets do
        local target = targets[ idx ]

        if not entity.is_alive( target ) or entity.is_dormant( target ) then
            goto continue
        end
        
        local target_data = enemy_lc_data[ target ]

        if target_data == nil then
            target_data = create_new_record( target )
        end

        target_data.update( )

        local is_lc = target_data.breaking_lc
        local is_defensive =  target_data.defensive
        local can_peek = not is_lc and not is_defensive

        local hitpoints = get_player_points( target )
        debug_visualize( hitpoints, target )

        set_step( e_steps.SEARCHING_HITPOINTS )
        set_visual_step( e_visual_steps.SEARCHING_HITPOINTS )


        if not can_peek then
            set_step( e_steps.CHECKING_HITPOINTS )
            set_visual_step( e_visual_steps.CHECKING_HITPOINTS )
            goto continue
        end

        local can_hit = can_hit_from_positions( lp, peeking_points, target, hitpoints )

        if can_hit then
            g_can_hit = true
            g_can_peek = true
            break
        end

        ::continue::
    end

    local dt_charged = is_doubletap_charged( )

    if not dt_charged then
        set_step( e_steps.FINDING_TARGET )
        set_visual_step( e_visual_steps.DT_NOT_CHARGED )
    end

    if g_can_hit and g_can_peek and dt_charged then
        cache.last_seen = globals.tickcount( )
    elseif not g_can_peek and not dt_charged then
        set_state( 'can\'t peek' )
    elseif not dt_charged then
        set_state( 'dt not charged' )
    end
end

local x, y = 400, 400

local visual_progressbar = {
    lerped_pos = vector( 0, 0, 0 ),
    gap = 30,
    radius = 5,
    pad = vector( 3, 2, 0 )
}

local func = {
    RGBAtoHEX = function(redArg, greenArg, blueArg, alphaArg)
        return string.format('%.2x%.2x%.2x%.2x', redArg, greenArg, blueArg, alphaArg)
    end,
}

local animate_text = function(time, string, r, g, b, a)
    local t_out, t_out_iter = { }, 1

    local l = string:len( ) - 1
    local mainClr = {}
    mainClr.r, mainClr.g, mainClr.b, mainClr.a = 255, 255, 255, 255


    local r_add = (mainClr.r - r)
    local g_add = (mainClr.g - g)
    local b_add = (mainClr.b - b)
    local a_add = (mainClr.a - a)

    for i = 1, #string do
        local iter = (i - 1)/(#string - 1) + time
        t_out[t_out_iter] = "\a" .. func.RGBAtoHEX( r + r_add * math.abs(math.cos( iter )), g + g_add * math.abs(math.cos( iter )), b + b_add * math.abs(math.cos( iter )), a + a_add * math.abs(math.cos( iter )) )

        t_out[t_out_iter + 1] = string:sub( i, i )

        t_out_iter = t_out_iter + 2
    end

    return t_out
end


local function render_screen_bar( )
    local lp = entity.get_local_player( )
    if not lp then return end

    for target, tbl in pairs( debug_visuals ) do
        if entity.is_alive( target ) and not entity.is_dormant( target ) then
            for i = 1, #tbl do
                local position = tbl[ i ]
        
                local s_x, s_y = renderer.world_to_screen( position.x, position.y, position.z )
        
                if s_x ~= nil and s_y ~= nil then
                    -- renderer.circle(x, y, r, g, b, a, radius, start_degrees, percentage)
                    renderer.circle( s_x, s_y, 255, 255, 255, 150, 2, 0, 1 )
                end
            end
        end
    end

    local step = debug.step
    if step == e_steps.RETREATING then
        set_step( e_steps.IDLE )
        step = debug.step
    end

    local screen = { client.screen_size( ) }
    screen = vector( screen[ 1 ] / 2, screen[ 2 ] - 100, 0 )

    local null_pos = vector( screen.x - ( 2 * visual_progressbar.gap ), screen.y, 0 )
    local active_pos = vector( screen.x + ( ( step - 2 ) * visual_progressbar.gap ), screen.y, 0 )

    if visual_progressbar.lerped_pos.x == 0 then
        visual_progressbar.lerped_pos = active_pos
    end

    local max_width = 5 * visual_progressbar.gap
    visual_progressbar.lerped_pos = visual_progressbar.lerped_pos:lerp( active_pos, 0.1 )
    visual_progressbar.x = visual_progressbar.lerped_pos.x + visual_progressbar.radius * 2
    local progress = ( visual_progressbar.lerped_pos.x - null_pos.x ) / max_width

    for i = -2, 2, 1 do
        local pos = vector( screen.x + ( i * visual_progressbar.gap ), screen.y, 0 )
    end



    local lp_pos = vector( entity.get_prop( lp, 'm_vecOrigin' ) )
    local dist_to_point = ( lp_pos - cache.found_position ):length2d( )
    local progress_to_point = ( cache.found_position_dist - dist_to_point ) / cache.found_position_dist

    if progress_to_point < 0 then
        progress_to_point = 0
    end

    if progress_to_point > 1 then
        progress_to_point = 1
    end

    for i = -2, 2, 1 do
        local draw_step = i + 2
        local pos = vector( screen.x + ( i * visual_progressbar.gap ), screen.y, 0 )

        local c = ( visual_progressbar.lerped_pos.x + visual_progressbar.radius ) >= pos.x and { 0, 255, 0 } or { 0, 0, 0 }
        local mainClr = {}
        mainClr.r, mainClr.g, mainClr.b, mainClr.a = 55,55,55,255
        local w,h = client.screen_size()
        local text = animate_text(globals.curtime(), "cd+" and visual_texts[ debug.visual_step ]:lower(), mainClr.r, mainClr.g, mainClr.b, 255)

        if draw_step == debug.step then
            renderer.text(
                w / 2, visual_progressbar.lerped_pos.y / 2,
                255, 255, 255, 255,
                'cd', 0,
                unpack(text)
            )
        end
    end
end

local visual_points = {
    last_pressed = 0,
    last_state = false,
    animation_time = .2,
}

local function ease_in_back( time )
    local c1 = 1.70158
    local c3 = c1 + 1

    return c3 * time * time * time - c1 * time * time
end


local config_cfg = {lua_items, antiaim_builder}

local package, data, encrypted, decrypted = pui.setup(config_cfg), "", "", ""
config = {}

local cfg_system = {}
configs_db = database.read(lua_db.config) or { }
configs_db.cfg_list = configs_db.cfg_list or {{'Default', 'W3sidmlzdWFscyI6eyJraWJpdF9oaXRtYXJrZXIiOnRydWUsImFuaW1hdGVkX3N0ZXAiOjMsIm1hbnVhbF9pbmRfYyI6IiNDOEM4QzhGRiIsInRoaXJkcGVyc29uIjp0cnVlLCJraWJpdF9oaXRtYXJrZXJfYyI6IiM3RkZGRDRGRiIsImRhbWFnZV9vdmVyIjpmYWxzZSwiZGVmZW5zaXZlX3dhcm5pbmciOnRydWUsImRhbWFnZV9pbmQiOnRydWUsIm1hbnVhbF9pbmQiOmZhbHNlLCJkZWZlbnNpdmVfd2FybmluZ19jIjoiI0M4QzhDOEZGIiwiY3VzdG9tX3Njb3BlX2xlbmd0aCI6MTk1LCJtYW51YWxfaW5kX3R5cGUiOiJUUyIsImFuaW1hdGVkX3pvb20iOmZhbHNlLCJjdXN0b21fc2NvcGVfb2Zmc2V0IjoxMCwibWFudWFsX2FjdGl2ZV9jIjoiI0ZGRkZGRkZGIiwiZGFtYWdlX3R5cGUiOiJBbHRlcm5hdGl2ZSIsImN1c3RvbV9zY29wZSI6dHJ1ZSwidmVsb2NpdHlfd2FybmluZyI6dHJ1ZSwiYXNwZWN0cmF0aW8iOnRydWUsImRvd25fd2F0ZXJtYXJrX2MiOiIjOUI5MUE0RkYiLCJtYW51YWxfYWN0aXZlIjpmYWxzZSwiYXNwZWN0cmF0aW9fdmFsdWUiOjE0MSwiY3VzdG9tX3Njb3BlX2MiOiIjRTdFN0U3QzgiLCJkYW1hZ2VfaW5kX2MiOiIjRkZGRkZGRkYiLCJ2ZWxvY2l0eV93YXJuaW5nX2MiOiIjQzhDOEM4RkYiLCJ0aGlyZHBlcnNvbl92YWx1ZSI6NDgsImRvd25fd2F0ZXJtYXJrIjp0cnVlfSwibWlzYyI6eyJidXlib3RfcHJpbWFyeSI6IkF1dG8iLCJmcHNfYWx3YXlzIjp0cnVlLCJtb3ZlX2xlYW5fYW1vdW50IjoxMDAsIm1vdmVfbGVhbiI6Ik9mZiIsImZwc19kZXRlY3QiOlsifiJdLCJjczJfdmlldyI6dHJ1ZSwicmFnZWJvdF9sb2dzX3NlbGVjdCI6WyJDb25zb2xlIiwiU2NyZWVuIiwifiJdLCJhdXRvX3RwIjp0cnVlLCJmaWx0ZXJfY29uc29sZSI6dHJ1ZSwiYW5pbXNfZ3JvdW5kIjoiT2ZmIiwiYW5pbXNfYWlyX2Ftb3VudCI6MTAwLCJidXlib3Rfc2Vjb25kYXJ5IjoiRGVmYXVsdCBwaXN0b2wiLCJhbmltc19haXIiOiJPZmYiLCJyYWdlYm90X2xvZ3MiOnRydWUsImNsYW50YWciOnRydWUsImFuaW1zX2dyb3VuZF9hbW91bnQiOjEwMCwicmFnZWJvdF9oaXQiOiIjQkFDNEY5RkYiLCJmYXN0X2xhZGRlciI6dHJ1ZSwidHJhc2h0YWxrIjp0cnVlLCJidXlfYm90IjpmYWxzZSwiZnBzX29wdCI6WyIzRCBTa3kiLCJGb2ciLCJTaGFkb3dzIiwiQmxvb2QiLCJEZWNhbHMiLCJCbG9vbSIsIlJhZ2RvbHMiLCJFeWUgQ2FuZHkiLCJNb2xvdG92IiwiT3RoZXIiLCJ+Il0sImZwc19ib29zdCI6dHJ1ZSwiYW5pbXMiOmZhbHNlLCJhdXRvX3RwX2tleSI6WzIsMTEyLCJ+Il0sInJhZ2Vib3RfbWlzcyI6IiNCQTVBNUFGRiIsImJ1eWJvdF91dGlsaXR5IjpbIn4iXX0sIm1haW4iOnsibG9sIjp0cnVlLCJ0YWIiOiJDb25maWdzIn0sInJhZ2Vib3QiOnsiZHRfZml4IjpmYWxzZSwiZG90X2Ftb3VudCI6MywiZG90X3NwYW4iOjUsInVuc2FmZV9jaGFyZ2UiOnRydWUsImFpX3BlZWsiOmZhbHNlLCJyZXNvbHZlciI6dHJ1ZSwiaGlkZXNob3RfZml4Ijp0cnVlLCJwcmVkaWN0IjpmYWxzZSwicHJlZGljdF9rZXkiOlswLDAsIn4iXSwic2NvdXRfYWlyc3RvcCI6ZmFsc2UsImRvdF9vZmZzZXQiOjgsInNjb3V0X2FpcnN0b3BfYmluZCI6WzEsMCwifiJdfSwiYW50aWFpbSI6eyJmbF9jX3R5cGUiOiJDeWNsZSIsInRhYiI6IkhlbHBlcnMiLCJwaXRjaCI6IkRvd24iLCJhZGRvbnMiOlsiQW50aSBCYWNrc3RhYiIsIlNhZmUgSGVhZCIsIn4iXSwiZGVmZW5zaXZlX2NvbmRpdGlvbiI6WyJ+Il0sImZsX3ZhcmlhbmNlIjowLCJmbF9kaXNhYmxlcnMiOlsifiJdLCJjb25kaXRpb24iOiJBaXIrQyIsImZyX29wdGlvbnMiOlsifiJdLCJmcmVlc3RhbmRpbmciOnRydWUsInlhd19vcHRpb25zIjpbIn4iXSwic2FmZV9oZWFkIjpbIkFpcitDIEtuaWZlIiwiQWlyK0MgWmV1cyIsIn4iXSwiYWFfb3ZlcnJpZGUiOlsifiJdLCJkZWZlbnNpdmVfdHJpZ2dlcnMiOlsifiJdLCJmcl9kaXNhYmxlcnMiOlsifiJdLCJmbF9jX2xpbWl0IjoxNCwiZmxfbGltaXQiOjE0LCJmcmVlc3RhbmRpbmdfa2V5IjpbMSw4NiwifiJdLCJpc19kZWYiOmZhbHNlLCJrZXlfZm9yd2FyZCI6WzEsMCwifiJdLCJrZXlfcmlnaHQiOlsxLDAsIn4iXSwibWFudWFsX2RpcmVjdGlvbiI6ZmFsc2UsImhlaWdodF9kaWZmZXJlbmNlIjoyMDAsImVkZ2V5YXdfb25fZmQiOmZhbHNlLCJmbF9jdXN0b20iOmZhbHNlLCJrZXlfbGVmdCI6WzEsMCwifiJdLCJ5YXdfYmFzZSI6IkF0IHRhcmdldHMiLCJmbF9hbW91bnQiOiJEeW5hbWljIn0sImNvbmZpZyI6eyJsaXN0IjoxLCJpc19zaG93Ijp0cnVlLCJuYW1lIjoiMTIzMTIzIiwiaXNfc2hvdzIiOnRydWV9fSxbeyJkZWZlbnNpdmVfc3BlZWQiOjEwLCJtb2RfdHlwZSI6MywiYm9keV95YXciOnRydWUsImRlZmVuc2l2ZV9tb2RfcmFuZG9tIjowLCJkZWZlbnNpdmVfbGVmdCI6MCwiZGVmZW5zaXZlX3JpZ2h0IjowLCJib2R5X3lhd190eXBlIjoiSml0dGVyIiwiZGVmZW5zaXZlX3NwaW4iOjM2MCwiZGVmZW5zaXZlX2JvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImJvZHlfZGVsYXlfcmFuZG9tIjozLCJtb2RfcmFuZG9tIjowLCJ5YXdfYWRkIjpmYWxzZSwiZGVmZW5zaXZlX21vZF90eXBlIjoiT2ZmIiwic25hcF9hYSI6ZmFsc2UsImRlZmVuc2l2ZV9ib2R5X2RlbGF5IjowLCJkZWZlbnNpdmVfYWRkb25zIjpbIn4iXSwiZGVmZW5zaXZlX3BpdGNoIjoiT2ZmIiwiYm9keV9kZWxheSI6MSwiZGVmZW5zaXZlX3BpdGNoX21heCI6MCwieWF3X3JhbmRvbSI6MCwibW9kX29mZnNldCI6NjYsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjEsImJvZHlfeWF3IjpmYWxzZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjAsIm1vZF9vZmZzZXQiOjAsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjEsImJvZHlfeWF3IjpmYWxzZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjAsIm1vZF9vZmZzZXQiOjAsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjEsImJvZHlfeWF3IjpmYWxzZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjAsIm1vZF9vZmZzZXQiOjAsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjEsImJvZHlfeWF3IjpmYWxzZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjAsIm1vZF9vZmZzZXQiOjAsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjEsImJvZHlfeWF3IjpmYWxzZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjAsIm1vZF9vZmZzZXQiOjAsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjMsImJvZHlfeWF3Ijp0cnVlLCJkZWZlbnNpdmVfbW9kX3JhbmRvbSI6MCwiZGVmZW5zaXZlX2xlZnQiOjAsImRlZmVuc2l2ZV9yaWdodCI6MCwiYm9keV95YXdfdHlwZSI6IkppdHRlciIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjEsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjEwLCJtb2Rfb2Zmc2V0Ijo1OSwiZGVmZW5zaXZlX3BpdGNoX21pbiI6MCwibW9kX2FkZG9uIjoxLCJkZWZlbnNpdmVfeWF3IjoiT2ZmIiwiZGVmZW5zaXZlX29mZnNldCI6MCwiZGVmZW5zaXZlX2JvZHlfZGVsYXlfcmFuZG9tIjowLCJkZWZlbnNpdmVfYm9keV9hbW91bnQiOjAsImRlZmVuc2l2ZV9tb2Rfb2Zmc2V0IjowLCJ5YXdfcmlnaHQiOi0xNSwiYm9keV9hbW91bnQiOjAsImZvcmNlX2xjIjpmYWxzZSwieWF3IjowLCJ5YXdfbGVmdCI6MTcsImRlZmVuc2l2ZV9waXRjaF9vZmZzZXQiOjAsIm92ZXJyaWRlIjp0cnVlfSx7ImRlZmVuc2l2ZV9zcGVlZCI6MTAsIm1vZF90eXBlIjozLCJib2R5X3lhdyI6dHJ1ZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJKaXR0ZXIiLCJkZWZlbnNpdmVfc3BpbiI6MzYwLCJkZWZlbnNpdmVfYm9keV95YXdfdHlwZSI6Ik9wcG9zaXRlIiwiYm9keV9kZWxheV9yYW5kb20iOjAsIm1vZF9yYW5kb20iOjAsInlhd19hZGQiOmZhbHNlLCJkZWZlbnNpdmVfbW9kX3R5cGUiOiJPZmYiLCJzbmFwX2FhIjpmYWxzZSwiZGVmZW5zaXZlX2JvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9hZGRvbnMiOlsifiJdLCJkZWZlbnNpdmVfcGl0Y2giOiJPZmYiLCJib2R5X2RlbGF5IjoyLCJkZWZlbnNpdmVfcGl0Y2hfbWF4IjowLCJ5YXdfcmFuZG9tIjowLCJtb2Rfb2Zmc2V0Ijo1OSwiZGVmZW5zaXZlX3BpdGNoX21pbiI6MCwibW9kX2FkZG9uIjoxLCJkZWZlbnNpdmVfeWF3IjoiT2ZmIiwiZGVmZW5zaXZlX29mZnNldCI6MCwiZGVmZW5zaXZlX2JvZHlfZGVsYXlfcmFuZG9tIjowLCJkZWZlbnNpdmVfYm9keV9hbW91bnQiOjAsImRlZmVuc2l2ZV9tb2Rfb2Zmc2V0IjowLCJ5YXdfcmlnaHQiOjAsImJvZHlfYW1vdW50IjowLCJmb3JjZV9sYyI6ZmFsc2UsInlhdyI6MCwieWF3X2xlZnQiOjAsImRlZmVuc2l2ZV9waXRjaF9vZmZzZXQiOjAsIm92ZXJyaWRlIjp0cnVlfSx7ImRlZmVuc2l2ZV9zcGVlZCI6MTAsIm1vZF90eXBlIjoxLCJib2R5X3lhdyI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfcmFuZG9tIjowLCJkZWZlbnNpdmVfbGVmdCI6MCwiZGVmZW5zaXZlX3JpZ2h0IjowLCJib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJkZWZlbnNpdmVfc3BpbiI6MzYwLCJkZWZlbnNpdmVfYm9keV95YXdfdHlwZSI6Ik9wcG9zaXRlIiwiYm9keV9kZWxheV9yYW5kb20iOjAsIm1vZF9yYW5kb20iOjAsInlhd19hZGQiOmZhbHNlLCJkZWZlbnNpdmVfbW9kX3R5cGUiOiJPZmYiLCJzbmFwX2FhIjpmYWxzZSwiZGVmZW5zaXZlX2JvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9hZGRvbnMiOlsifiJdLCJkZWZlbnNpdmVfcGl0Y2giOiJPZmYiLCJib2R5X2RlbGF5IjowLCJkZWZlbnNpdmVfcGl0Y2hfbWF4IjowLCJ5YXdfcmFuZG9tIjowLCJtb2Rfb2Zmc2V0IjowLCJkZWZlbnNpdmVfcGl0Y2hfbWluIjowLCJtb2RfYWRkb24iOjEsImRlZmVuc2l2ZV95YXciOiJPZmYiLCJkZWZlbnNpdmVfb2Zmc2V0IjowLCJkZWZlbnNpdmVfYm9keV9kZWxheV9yYW5kb20iOjAsImRlZmVuc2l2ZV9ib2R5X2Ftb3VudCI6MCwiZGVmZW5zaXZlX21vZF9vZmZzZXQiOjAsInlhd19yaWdodCI6MCwiYm9keV9hbW91bnQiOjAsImZvcmNlX2xjIjpmYWxzZSwieWF3IjowLCJ5YXdfbGVmdCI6MCwiZGVmZW5zaXZlX3BpdGNoX29mZnNldCI6MCwib3ZlcnJpZGUiOmZhbHNlfSx7ImRlZmVuc2l2ZV9zcGVlZCI6MTAsIm1vZF90eXBlIjoxLCJib2R5X3lhdyI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfcmFuZG9tIjowLCJkZWZlbnNpdmVfbGVmdCI6MCwiZGVmZW5zaXZlX3JpZ2h0IjowLCJib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJkZWZlbnNpdmVfc3BpbiI6MzYwLCJkZWZlbnNpdmVfYm9keV95YXdfdHlwZSI6Ik9wcG9zaXRlIiwiYm9keV9kZWxheV9yYW5kb20iOjAsIm1vZF9yYW5kb20iOjAsInlhd19hZGQiOmZhbHNlLCJkZWZlbnNpdmVfbW9kX3R5cGUiOiJPZmYiLCJzbmFwX2FhIjpmYWxzZSwiZGVmZW5zaXZlX2JvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9hZGRvbnMiOlsifiJdLCJkZWZlbnNpdmVfcGl0Y2giOiJPZmYiLCJib2R5X2RlbGF5IjowLCJkZWZlbnNpdmVfcGl0Y2hfbWF4IjowLCJ5YXdfcmFuZG9tIjowLCJtb2Rfb2Zmc2V0IjowLCJkZWZlbnNpdmVfcGl0Y2hfbWluIjowLCJtb2RfYWRkb24iOjEsImRlZmVuc2l2ZV95YXciOiJPZmYiLCJkZWZlbnNpdmVfb2Zmc2V0IjowLCJkZWZlbnNpdmVfYm9keV9kZWxheV9yYW5kb20iOjAsImRlZmVuc2l2ZV9ib2R5X2Ftb3VudCI6MCwiZGVmZW5zaXZlX21vZF9vZmZzZXQiOjAsInlhd19yaWdodCI6MCwiYm9keV9hbW91bnQiOjAsImZvcmNlX2xjIjpmYWxzZSwieWF3IjowLCJ5YXdfbGVmdCI6MCwiZGVmZW5zaXZlX3BpdGNoX29mZnNldCI6MCwib3ZlcnJpZGUiOmZhbHNlfV1d'}}
configs_db.menu_list = configs_db.menu_list or {'Default'}

configs_db.cfg_list[1][2] = "W3sidmlzdWFscyI6eyJraWJpdF9oaXRtYXJrZXIiOnRydWUsImFuaW1hdGVkX3N0ZXAiOjMsIm1hbnVhbF9pbmRfYyI6IiNDOEM4QzhGRiIsInRoaXJkcGVyc29uIjp0cnVlLCJraWJpdF9oaXRtYXJrZXJfYyI6IiM3RkZGRDRGRiIsImRhbWFnZV9vdmVyIjpmYWxzZSwiZGVmZW5zaXZlX3dhcm5pbmciOnRydWUsImRhbWFnZV9pbmQiOnRydWUsIm1hbnVhbF9pbmQiOmZhbHNlLCJkZWZlbnNpdmVfd2FybmluZ19jIjoiI0M4QzhDOEZGIiwiY3VzdG9tX3Njb3BlX2xlbmd0aCI6MTk1LCJtYW51YWxfaW5kX3R5cGUiOiJUUyIsImFuaW1hdGVkX3pvb20iOmZhbHNlLCJjdXN0b21fc2NvcGVfb2Zmc2V0IjoxMCwibWFudWFsX2FjdGl2ZV9jIjoiI0ZGRkZGRkZGIiwiZGFtYWdlX3R5cGUiOiJBbHRlcm5hdGl2ZSIsImN1c3RvbV9zY29wZSI6dHJ1ZSwidmVsb2NpdHlfd2FybmluZyI6dHJ1ZSwiYXNwZWN0cmF0aW8iOnRydWUsImRvd25fd2F0ZXJtYXJrX2MiOiIjOUI5MUE0RkYiLCJtYW51YWxfYWN0aXZlIjpmYWxzZSwiYXNwZWN0cmF0aW9fdmFsdWUiOjE0MSwiY3VzdG9tX3Njb3BlX2MiOiIjRTdFN0U3QzgiLCJkYW1hZ2VfaW5kX2MiOiIjRkZGRkZGRkYiLCJ2ZWxvY2l0eV93YXJuaW5nX2MiOiIjQzhDOEM4RkYiLCJ0aGlyZHBlcnNvbl92YWx1ZSI6NDgsImRvd25fd2F0ZXJtYXJrIjp0cnVlfSwibWlzYyI6eyJidXlib3RfcHJpbWFyeSI6IkF1dG8iLCJmcHNfYWx3YXlzIjp0cnVlLCJtb3ZlX2xlYW5fYW1vdW50IjoxMDAsIm1vdmVfbGVhbiI6Ik9mZiIsImZwc19kZXRlY3QiOlsifiJdLCJjczJfdmlldyI6dHJ1ZSwicmFnZWJvdF9sb2dzX3NlbGVjdCI6WyJDb25zb2xlIiwiU2NyZWVuIiwifiJdLCJhdXRvX3RwIjp0cnVlLCJmaWx0ZXJfY29uc29sZSI6dHJ1ZSwiYW5pbXNfZ3JvdW5kIjoiT2ZmIiwiYW5pbXNfYWlyX2Ftb3VudCI6MTAwLCJidXlib3Rfc2Vjb25kYXJ5IjoiRGVmYXVsdCBwaXN0b2wiLCJhbmltc19haXIiOiJPZmYiLCJyYWdlYm90X2xvZ3MiOnRydWUsImNsYW50YWciOnRydWUsImFuaW1zX2dyb3VuZF9hbW91bnQiOjEwMCwicmFnZWJvdF9oaXQiOiIjQkFDNEY5RkYiLCJmYXN0X2xhZGRlciI6dHJ1ZSwidHJhc2h0YWxrIjp0cnVlLCJidXlfYm90IjpmYWxzZSwiZnBzX29wdCI6WyIzRCBTa3kiLCJGb2ciLCJTaGFkb3dzIiwiQmxvb2QiLCJEZWNhbHMiLCJCbG9vbSIsIlJhZ2RvbHMiLCJFeWUgQ2FuZHkiLCJNb2xvdG92IiwiT3RoZXIiLCJ+Il0sImZwc19ib29zdCI6dHJ1ZSwiYW5pbXMiOmZhbHNlLCJhdXRvX3RwX2tleSI6WzIsMTEyLCJ+Il0sInJhZ2Vib3RfbWlzcyI6IiNCQTVBNUFGRiIsImJ1eWJvdF91dGlsaXR5IjpbIn4iXX0sIm1haW4iOnsibG9sIjp0cnVlLCJ0YWIiOiJDb25maWdzIn0sInJhZ2Vib3QiOnsiZHRfZml4IjpmYWxzZSwiZG90X2Ftb3VudCI6MywiZG90X3NwYW4iOjUsInVuc2FmZV9jaGFyZ2UiOnRydWUsImFpX3BlZWsiOmZhbHNlLCJyZXNvbHZlciI6dHJ1ZSwiaGlkZXNob3RfZml4Ijp0cnVlLCJwcmVkaWN0IjpmYWxzZSwicHJlZGljdF9rZXkiOlswLDAsIn4iXSwic2NvdXRfYWlyc3RvcCI6ZmFsc2UsImRvdF9vZmZzZXQiOjgsInNjb3V0X2FpcnN0b3BfYmluZCI6WzEsMCwifiJdfSwiYW50aWFpbSI6eyJmbF9jX3R5cGUiOiJDeWNsZSIsInRhYiI6IkhlbHBlcnMiLCJwaXRjaCI6IkRvd24iLCJhZGRvbnMiOlsiQW50aSBCYWNrc3RhYiIsIlNhZmUgSGVhZCIsIn4iXSwiZGVmZW5zaXZlX2NvbmRpdGlvbiI6WyJ+Il0sImZsX3ZhcmlhbmNlIjowLCJmbF9kaXNhYmxlcnMiOlsifiJdLCJjb25kaXRpb24iOiJBaXIrQyIsImZyX29wdGlvbnMiOlsifiJdLCJmcmVlc3RhbmRpbmciOnRydWUsInlhd19vcHRpb25zIjpbIn4iXSwic2FmZV9oZWFkIjpbIkFpcitDIEtuaWZlIiwiQWlyK0MgWmV1cyIsIn4iXSwiYWFfb3ZlcnJpZGUiOlsifiJdLCJkZWZlbnNpdmVfdHJpZ2dlcnMiOlsifiJdLCJmcl9kaXNhYmxlcnMiOlsifiJdLCJmbF9jX2xpbWl0IjoxNCwiZmxfbGltaXQiOjE0LCJmcmVlc3RhbmRpbmdfa2V5IjpbMSw4NiwifiJdLCJpc19kZWYiOmZhbHNlLCJrZXlfZm9yd2FyZCI6WzEsMCwifiJdLCJrZXlfcmlnaHQiOlsxLDAsIn4iXSwibWFudWFsX2RpcmVjdGlvbiI6ZmFsc2UsImhlaWdodF9kaWZmZXJlbmNlIjoyMDAsImVkZ2V5YXdfb25fZmQiOmZhbHNlLCJmbF9jdXN0b20iOmZhbHNlLCJrZXlfbGVmdCI6WzEsMCwifiJdLCJ5YXdfYmFzZSI6IkF0IHRhcmdldHMiLCJmbF9hbW91bnQiOiJEeW5hbWljIn0sImNvbmZpZyI6eyJsaXN0IjoxLCJpc19zaG93Ijp0cnVlLCJuYW1lIjoiMTIzMTIzIiwiaXNfc2hvdzIiOnRydWV9fSxbeyJkZWZlbnNpdmVfc3BlZWQiOjEwLCJtb2RfdHlwZSI6MywiYm9keV95YXciOnRydWUsImRlZmVuc2l2ZV9tb2RfcmFuZG9tIjowLCJkZWZlbnNpdmVfbGVmdCI6MCwiZGVmZW5zaXZlX3JpZ2h0IjowLCJib2R5X3lhd190eXBlIjoiSml0dGVyIiwiZGVmZW5zaXZlX3NwaW4iOjM2MCwiZGVmZW5zaXZlX2JvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImJvZHlfZGVsYXlfcmFuZG9tIjozLCJtb2RfcmFuZG9tIjowLCJ5YXdfYWRkIjpmYWxzZSwiZGVmZW5zaXZlX21vZF90eXBlIjoiT2ZmIiwic25hcF9hYSI6ZmFsc2UsImRlZmVuc2l2ZV9ib2R5X2RlbGF5IjowLCJkZWZlbnNpdmVfYWRkb25zIjpbIn4iXSwiZGVmZW5zaXZlX3BpdGNoIjoiT2ZmIiwiYm9keV9kZWxheSI6MSwiZGVmZW5zaXZlX3BpdGNoX21heCI6MCwieWF3X3JhbmRvbSI6MCwibW9kX29mZnNldCI6NjYsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjEsImJvZHlfeWF3IjpmYWxzZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjAsIm1vZF9vZmZzZXQiOjAsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjEsImJvZHlfeWF3IjpmYWxzZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjAsIm1vZF9vZmZzZXQiOjAsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjEsImJvZHlfeWF3IjpmYWxzZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjAsIm1vZF9vZmZzZXQiOjAsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjEsImJvZHlfeWF3IjpmYWxzZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjAsIm1vZF9vZmZzZXQiOjAsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjEsImJvZHlfeWF3IjpmYWxzZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjAsIm1vZF9vZmZzZXQiOjAsImRlZmVuc2l2ZV9waXRjaF9taW4iOjAsIm1vZF9hZGRvbiI6MSwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsImRlZmVuc2l2ZV9vZmZzZXQiOjAsImRlZmVuc2l2ZV9ib2R5X2RlbGF5X3JhbmRvbSI6MCwiZGVmZW5zaXZlX2JvZHlfYW1vdW50IjowLCJkZWZlbnNpdmVfbW9kX29mZnNldCI6MCwieWF3X3JpZ2h0IjowLCJib2R5X2Ftb3VudCI6MCwiZm9yY2VfbGMiOmZhbHNlLCJ5YXciOjAsInlhd19sZWZ0IjowLCJkZWZlbnNpdmVfcGl0Y2hfb2Zmc2V0IjowLCJvdmVycmlkZSI6ZmFsc2V9LHsiZGVmZW5zaXZlX3NwZWVkIjoxMCwibW9kX3R5cGUiOjMsImJvZHlfeWF3Ijp0cnVlLCJkZWZlbnNpdmVfbW9kX3JhbmRvbSI6MCwiZGVmZW5zaXZlX2xlZnQiOjAsImRlZmVuc2l2ZV9yaWdodCI6MCwiYm9keV95YXdfdHlwZSI6IkppdHRlciIsImRlZmVuc2l2ZV9zcGluIjozNjAsImRlZmVuc2l2ZV9ib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJib2R5X2RlbGF5X3JhbmRvbSI6MCwibW9kX3JhbmRvbSI6MCwieWF3X2FkZCI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfdHlwZSI6Ik9mZiIsInNuYXBfYWEiOmZhbHNlLCJkZWZlbnNpdmVfYm9keV9kZWxheSI6MCwiZGVmZW5zaXZlX2FkZG9ucyI6WyJ+Il0sImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfZGVsYXkiOjEsImRlZmVuc2l2ZV9waXRjaF9tYXgiOjAsInlhd19yYW5kb20iOjEwLCJtb2Rfb2Zmc2V0Ijo1OSwiZGVmZW5zaXZlX3BpdGNoX21pbiI6MCwibW9kX2FkZG9uIjoxLCJkZWZlbnNpdmVfeWF3IjoiT2ZmIiwiZGVmZW5zaXZlX29mZnNldCI6MCwiZGVmZW5zaXZlX2JvZHlfZGVsYXlfcmFuZG9tIjowLCJkZWZlbnNpdmVfYm9keV9hbW91bnQiOjAsImRlZmVuc2l2ZV9tb2Rfb2Zmc2V0IjowLCJ5YXdfcmlnaHQiOi0xNSwiYm9keV9hbW91bnQiOjAsImZvcmNlX2xjIjpmYWxzZSwieWF3IjowLCJ5YXdfbGVmdCI6MTcsImRlZmVuc2l2ZV9waXRjaF9vZmZzZXQiOjAsIm92ZXJyaWRlIjp0cnVlfSx7ImRlZmVuc2l2ZV9zcGVlZCI6MTAsIm1vZF90eXBlIjozLCJib2R5X3lhdyI6dHJ1ZSwiZGVmZW5zaXZlX21vZF9yYW5kb20iOjAsImRlZmVuc2l2ZV9sZWZ0IjowLCJkZWZlbnNpdmVfcmlnaHQiOjAsImJvZHlfeWF3X3R5cGUiOiJKaXR0ZXIiLCJkZWZlbnNpdmVfc3BpbiI6MzYwLCJkZWZlbnNpdmVfYm9keV95YXdfdHlwZSI6Ik9wcG9zaXRlIiwiYm9keV9kZWxheV9yYW5kb20iOjAsIm1vZF9yYW5kb20iOjAsInlhd19hZGQiOmZhbHNlLCJkZWZlbnNpdmVfbW9kX3R5cGUiOiJPZmYiLCJzbmFwX2FhIjpmYWxzZSwiZGVmZW5zaXZlX2JvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9hZGRvbnMiOlsifiJdLCJkZWZlbnNpdmVfcGl0Y2giOiJPZmYiLCJib2R5X2RlbGF5IjoyLCJkZWZlbnNpdmVfcGl0Y2hfbWF4IjowLCJ5YXdfcmFuZG9tIjowLCJtb2Rfb2Zmc2V0Ijo1OSwiZGVmZW5zaXZlX3BpdGNoX21pbiI6MCwibW9kX2FkZG9uIjoxLCJkZWZlbnNpdmVfeWF3IjoiT2ZmIiwiZGVmZW5zaXZlX29mZnNldCI6MCwiZGVmZW5zaXZlX2JvZHlfZGVsYXlfcmFuZG9tIjowLCJkZWZlbnNpdmVfYm9keV9hbW91bnQiOjAsImRlZmVuc2l2ZV9tb2Rfb2Zmc2V0IjowLCJ5YXdfcmlnaHQiOjAsImJvZHlfYW1vdW50IjowLCJmb3JjZV9sYyI6ZmFsc2UsInlhdyI6MCwieWF3X2xlZnQiOjAsImRlZmVuc2l2ZV9waXRjaF9vZmZzZXQiOjAsIm92ZXJyaWRlIjp0cnVlfSx7ImRlZmVuc2l2ZV9zcGVlZCI6MTAsIm1vZF90eXBlIjoxLCJib2R5X3lhdyI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfcmFuZG9tIjowLCJkZWZlbnNpdmVfbGVmdCI6MCwiZGVmZW5zaXZlX3JpZ2h0IjowLCJib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJkZWZlbnNpdmVfc3BpbiI6MzYwLCJkZWZlbnNpdmVfYm9keV95YXdfdHlwZSI6Ik9wcG9zaXRlIiwiYm9keV9kZWxheV9yYW5kb20iOjAsIm1vZF9yYW5kb20iOjAsInlhd19hZGQiOmZhbHNlLCJkZWZlbnNpdmVfbW9kX3R5cGUiOiJPZmYiLCJzbmFwX2FhIjpmYWxzZSwiZGVmZW5zaXZlX2JvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9hZGRvbnMiOlsifiJdLCJkZWZlbnNpdmVfcGl0Y2giOiJPZmYiLCJib2R5X2RlbGF5IjowLCJkZWZlbnNpdmVfcGl0Y2hfbWF4IjowLCJ5YXdfcmFuZG9tIjowLCJtb2Rfb2Zmc2V0IjowLCJkZWZlbnNpdmVfcGl0Y2hfbWluIjowLCJtb2RfYWRkb24iOjEsImRlZmVuc2l2ZV95YXciOiJPZmYiLCJkZWZlbnNpdmVfb2Zmc2V0IjowLCJkZWZlbnNpdmVfYm9keV9kZWxheV9yYW5kb20iOjAsImRlZmVuc2l2ZV9ib2R5X2Ftb3VudCI6MCwiZGVmZW5zaXZlX21vZF9vZmZzZXQiOjAsInlhd19yaWdodCI6MCwiYm9keV9hbW91bnQiOjAsImZvcmNlX2xjIjpmYWxzZSwieWF3IjowLCJ5YXdfbGVmdCI6MCwiZGVmZW5zaXZlX3BpdGNoX29mZnNldCI6MCwib3ZlcnJpZGUiOmZhbHNlfSx7ImRlZmVuc2l2ZV9zcGVlZCI6MTAsIm1vZF90eXBlIjoxLCJib2R5X3lhdyI6ZmFsc2UsImRlZmVuc2l2ZV9tb2RfcmFuZG9tIjowLCJkZWZlbnNpdmVfbGVmdCI6MCwiZGVmZW5zaXZlX3JpZ2h0IjowLCJib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJkZWZlbnNpdmVfc3BpbiI6MzYwLCJkZWZlbnNpdmVfYm9keV95YXdfdHlwZSI6Ik9wcG9zaXRlIiwiYm9keV9kZWxheV9yYW5kb20iOjAsIm1vZF9yYW5kb20iOjAsInlhd19hZGQiOmZhbHNlLCJkZWZlbnNpdmVfbW9kX3R5cGUiOiJPZmYiLCJzbmFwX2FhIjpmYWxzZSwiZGVmZW5zaXZlX2JvZHlfZGVsYXkiOjAsImRlZmVuc2l2ZV9hZGRvbnMiOlsifiJdLCJkZWZlbnNpdmVfcGl0Y2giOiJPZmYiLCJib2R5X2RlbGF5IjowLCJkZWZlbnNpdmVfcGl0Y2hfbWF4IjowLCJ5YXdfcmFuZG9tIjowLCJtb2Rfb2Zmc2V0IjowLCJkZWZlbnNpdmVfcGl0Y2hfbWluIjowLCJtb2RfYWRkb24iOjEsImRlZmVuc2l2ZV95YXciOiJPZmYiLCJkZWZlbnNpdmVfb2Zmc2V0IjowLCJkZWZlbnNpdmVfYm9keV9kZWxheV9yYW5kb20iOjAsImRlZmVuc2l2ZV9ib2R5X2Ftb3VudCI6MCwiZGVmZW5zaXZlX21vZF9vZmZzZXQiOjAsInlhd19yaWdodCI6MCwiYm9keV9hbW91bnQiOjAsImZvcmNlX2xjIjpmYWxzZSwieWF3IjowLCJ5YXdfbGVmdCI6MCwiZGVmZW5zaXZlX3BpdGNoX29mZnNldCI6MCwib3ZlcnJpZGUiOmZhbHNlfV1d"

cfg_system.save_config = function(id)
    if id == 1 then return end
    if configs_db.cfg_list[id] == nil then
        print("Error: config with id "..id.." does not exist.")
        return
    end

    if configs_db.cfg_list[id][2] == nil then
        print("Error: second part of config with id "..id.." does not exist.")
        return
    end
    
    local raw = package:save()
    configs_db.cfg_list[id][2] = base64.encode(json.stringify(raw))
    database.write(lua_db.config, configs_db)
    database.flush()
end

cfg_system.create_config = function(name)
    if type(name) ~= 'string' then return end

    if name == nil or name == '' or name == ' ' then
        print('Wrong Name')
        return
    end

    for i= #configs_db.menu_list, 1, -1 do
        if configs_db.menu_list[i] == name then
            print('Another config has the same name')
            return
        end
    end

    if #configs_db.cfg_list > 7 then
        print('Maximum number of configs: 8')
        return
    end

    local completed = {name, ''}
    table.insert(configs_db.cfg_list, completed)
    table.insert(configs_db.menu_list, name)
    database.write(lua_db.config, configs_db)
    database.flush()
end

cfg_system.remove_config = function(id)
    if id == 1 then return end
    local item = configs_db.cfg_list[id][1]

    for i= #configs_db.cfg_list, 1, -1 do
        if configs_db.cfg_list[i][1] == item then
            table.remove(configs_db.cfg_list, i)
            table.remove(configs_db.menu_list, i)
        end
    end

    database.write(lua_db.config, configs_db)
    database.flush()
end

cfg_system.load_config = function(id)
    if configs_db.cfg_list[id][2] == nil or configs_db.cfg_list[id][2] == '' then
        print("Problem with: "..id.." Config")
        return
    end

    if id > #configs_db.cfg_list then
        print("Problem with: "..id.." Config")
        return
    end

    package:load(json.parse(base64.decode(configs_db.cfg_list[id][2])))
end

lua_items.main.create:set_callback(function() 
    cfg_system.create_config(lua_items.main.name:get())
    lua_items.main.list:update(configs_db.menu_list)
end)

lua_items.main.load:set_callback(function() 
    cfg_system.load_config(lua_items.main.list:get() + 1)
    lua_items.main.list:update(configs_db.menu_list)
end)

lua_items.main.accept:set_callback(function() 
    cfg_system.save_config(lua_items.main.list:get() + 1)
end)

lua_items.main.accept2:set_callback(function() 
    cfg_system.remove_config(lua_items.main.list:get() + 1)
    lua_items.main.list:update(configs_db.menu_list)
end)

lua_items.main.import:set_callback(function() 
    local clean = string.match(clipboard.get(), "[%w%+%/]+%=*")
    package:load(json.parse(base64.decode(clean)))
end)

lua_items.main.export:set_callback(function() 
    clipboard.set(base64.encode(json.stringify(package:save())))
end)
lua_items.main.list:update(configs_db.menu_list)

client.set_event_callback("setup_command", function(cmd)
    aa_helpers.setup(cmd)

    if lua_items.select.unsafe_charge:get() then
        misc_helpers.unsafe_charge(cmd)
    elseif charge_state then
        ui.set(ref.aimbot, true)
    end

    if lua_items.select.fast_ladder:get() then
        misc_helpers.fastladder(cmd)
    end

    if lua_items.select.fps_boost:get() and not lua_items.select.fps_always:get() then
        misc_helpers.fps_boost(cmd.quick_stop)
    end

    if lua_items.select.scout_airstop:get() and lua_items.select.scout_airstop_bind:get() then
        rage_helpers.air_qs(cmd)
    end

    if lua_items.antiaim.edgeyaw_on_fd:get() then
        if ui.get(ref.fakeduck) then
            ui.set(ref.edgeyaw, true)
        else
            ui.set(ref.edgeyaw, false)
        end
    else
        ui.set(ref.edgeyaw, false)
    end

    if lua_items.select.auto_tp:get() and lua_items.select.auto_tp_key:get() then
        misc_helpers.auto_tp(cmd)
    end

    if ui.is_menu_open() then
		cmd.in_attack = 0
        cmd.in_attack2 = 0
	end
    if lua_items.select.thirdperson:get() then
        cvar.c_mindistance:set_int(lua_items.select.thirdperson_value:get() or 150)
        cvar.c_maxdistance:set_int(lua_items.select.thirdperson_value:get() or 150)
    end

    gpt_peek( cmd )
end)


lua_items.select.thirdperson:set_callback(function(self)
    if not self:get() then
        cvar.cam_idealdist:set_float(150)
    end
end)

local offsetX = 0
local drag_watermark = dragging.new("drag_watermark", 15, 15)
local skull_logo_svg = [[
<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg"
     width="32" height="32" viewBox="0 0 1024 1024"
     preserveAspectRatio="xMidYMid meet">
  <g fill="#ffffff"
     stroke="#ffffff"
     stroke-width="80"
     vector-effect="non-scaling-stroke"
     stroke-linejoin="round"
     stroke-linecap="round"
     transform="translate(512,512) scale(1.12) translate(-512,-512)">
    <path d="M4910 9024 c-394 -27 -814 -124 -1155 -266 -385 -160 -657 -338 -915
-597 -375 -377 -575 -765 -657 -1279 -14 -81 -18 -164 -17 -342 1 -317 30
-551 116 -960 51 -240 44 -279 -68 -410 -128 -150 -167 -237 -167 -370 -1
-108 27 -194 94 -295 38 -56 99 -119 247 -253 363 -330 464 -412 583 -472 66
-34 58 2 88 -396 18 -231 28 -372 47 -679 24 -375 27 -384 229 -563 353 -312
909 -786 991 -845 74 -53 190 -105 273 -123 62 -12 151 -14 540 -12 l466 3 80
27 c160 55 207 90 864 651 500 427 527 454 557 551 10 33 24 181 39 416 34
515 66 934 72 943 2 4 31 21 63 37 78 39 160 103 369 285 372 324 440 394 495
508 55 112 68 217 41 322 -22 81 -53 135 -141 240 -41 50 -84 107 -95 127 -27
52 -25 140 7 290 96 466 118 641 118 983 1 297 -8 384 -63 598 -89 343 -278
681 -537 956 -362 386 -944 700 -1549 835 -142 32 -325 63 -445 76 -103 11
-481 20 -570 14z m540 -375 c544 -50 1092 -253 1490 -550 380 -284 652 -676
754 -1088 43 -173 51 -238 50 -446 0 -227 -16 -384 -74 -730 -79 -474 -82
-518 -41 -637 24 -70 51 -113 140 -221 149 -180 147 -243 -10 -392 -141 -133
-456 -398 -510 -429 -49 -28 -59 -30 -218 -36 -186 -8 -258 -24 -367 -76 -188
-92 -313 -263 -331 -450 -9 -92 2 -93 161 -11 71 37 131 66 133 64 1 -2 -6
-29 -17 -61 -40 -116 -110 -482 -110 -577 l0 -35 -127 -37 c-101 -29 -346 -87
-367 -87 -2 0 -6 37 -10 83 -4 45 -14 119 -23 163 -17 91 -70 209 -93 209 -38
0 -94 -181 -112 -366 l-11 -117 -166 -6 c-91 -4 -205 -9 -253 -12 l-86 -5 -6
53 c-3 29 -8 89 -12 133 -7 95 -43 239 -70 286 -69 119 -142 -42 -162 -356
l-7 -110 -120 1 c-66 1 -181 5 -256 9 l-135 7 -12 126 c-18 189 -71 357 -112
357 -37 0 -94 -181 -109 -348 -4 -54 -11 -100 -14 -103 -14 -14 -458 98 -481
122 -8 7 -16 51 -20 103 -12 155 -63 402 -106 512 -11 27 -20 52 -20 54 0 3
62 -26 138 -63 75 -38 143 -67 150 -65 17 6 15 63 -4 136 -44 173 -167 314
-345 396 -100 47 -171 61 -351 70 -204 10 -185 1 -438 217 -238 204 -347 309
-372 358 -42 83 -20 158 80 276 82 96 130 176 154 253 29 96 21 236 -30 537
-74 429 -86 547 -86 825 -1 226 1 261 22 360 83 387 260 700 559 987 435 417
1143 692 1883 732 93 5 357 -3 480 -15z m-1579 -6023 c74 -18 189 -44 257 -56
l122 -23 0 -42 c0 -133 80 -385 122 -385 28 0 90 199 107 343 5 43 11 81 14
83 2 2 64 0 138 -6 74 -5 186 -10 250 -10 l116 0 12 -101 c21 -189 65 -314
111 -314 20 0 30 10 47 45 30 59 61 185 70 285 l8 80 170 6 c94 4 211 10 261
14 l91 7 6 -84 c7 -91 26 -174 59 -258 37 -96 52 -100 92 -22 34 68 55 143 72
261 8 58 16 106 17 107 1 1 47 9 102 18 55 10 164 33 241 52 78 18 143 34 146
34 7 0 1 -398 -7 -410 -9 -14 -537 -468 -671 -576 -156 -125 -198 -145 -337
-157 -62 -5 -272 -7 -467 -4 -282 4 -364 8 -398 20 -96 34 -136 66 -715 567
-86 74 -158 144 -161 155 -5 18 -15 405 -11 405 1 0 62 -15 136 -34z"/>
    <path d="M2874 6429 c3 -17 39 -86 80 -154 l74 -124 -6 -133 c-15 -415 135
-756 417 -942 140 -93 287 -136 469 -136 252 0 464 90 672 287 37 34 75 63 85
63 9 0 64 -12 121 -27 65 -17 108 -23 113 -17 8 8 41 346 41 422 0 19 -5 32
-12 32 -7 -1 -44 -39 -83 -86 -38 -47 -82 -94 -96 -105 -46 -33 -16 -47 -859
413 -546 298 -996 538 -1010 538 -9 0 -11 -10 -6 -31z"/>
    <path d="M7150 6364 c-173 -90 -517 -275 -1258 -676 -364 -197 -375 -202 -402
-188 -11 6 -51 53 -90 105 -79 105 -87 114 -97 89 -6 -16 10 -296 24 -407 7
-56 -7 -55 160 -17 l102 24 68 -65 c206 -198 417 -289 673 -289 498 0 843 348
891 902 6 79 7 149 0 215 l-10 97 60 99 c91 150 112 207 76 207 -7 0 -95 -44
-197 -96z"/>
    <path d="M5014 4910 c-104 -59 -159 -146 -272 -431 -84 -211 -102 -268 -102
-327 0 -89 62 -162 154 -183 78 -17 144 12 246 108 l80 75 68 -63 c127 -119
224 -150 319 -101 86 45 118 125 93 234 -18 78 -136 380 -183 472 -48 93 -140
196 -201 225 -64 31 -138 28 -202 -9z"/>
  </g>
</svg>
]]

local watermark_logo = renderer.load_svg(skull_logo_svg, 32, 32)
--old icon
--[[local watermark_logo = renderer.load_svg(
    '<?xml version="1.0" encoding="UTF-8" standalone="no"?><svg xmlns:ffdec="https://www.free-decompiler.com/flash" xmlns:xlink="http://www.w3.org/1999/xlink" ffdec:objectType="frame" height="33.5px" width="59.75px" xmlns="http://www.w3.org/2000/svg"><g transform="matrix(1.0, 0.0, 0.0, 1.0, 0.0, 0.0)"><use ffdec:characterId="311" height="33.5" transform="matrix(1.0, 0.0, 0.0, 1.0, 0.0, 0.0)" width="59.75" xlink:href="#shape0"/></g><defs><g id="shape0" transform="matrix(1.0, 0.0, 0.0, 1.0, 0.0, 0.0)"><path d="M59.1 1.65 L59.3 1.65 59.6 1.7 59.55 2.9 59.75 4.55 59.45 5.6 59.15 6.55 58.85 7.65 58.25 9.55 57.9 10.5 57.65 10.8 57.5 10.9 34.45 10.9 33.75 11.05 32.2 12.15 Q31.45 12.9 30.8 14.35 30.05 15.75 30.05 18.25 L30.05 18.8 29.95 18.8 28.95 19.05 26.75 19.35 24.0 19.5 21.4 19.05 20.5 19.7 Q19.9 20.35 19.85 21.1 L19.55 22.95 18.95 26.0 18.45 28.95 18.1 30.45 18.9 32.7 18.75 32.7 13.95 33.25 9.4 33.5 4.65 33.25 4.3 33.2 3.7 32.7 Q3.4 32.2 3.4 30.9 L3.55 28.85 Q3.75 27.65 4.3 26.05 L5.6 22.2 7.75 17.15 7.75 16.95 7.8 16.6 7.85 15.95 Q7.85 14.95 7.4 13.9 7.0 12.9 5.35 12.6 L4.5 12.55 2.75 12.45 1.0 12.4 0.15 12.4 0.0 12.25 0.0 12.1 Q0.0 11.85 0.15 11.75 0.3 11.2 1.2 10.65 2.05 10.1 4.3 9.55 L4.65 8.95 4.95 7.65 4.9 7.15 4.65 6.5 4.3 6.1 3.55 4.65 3.55 3.7 4.5 3.45 4.75 3.6 5.05 3.8 6.75 3.8 6.95 3.4 7.15 3.05 8.65 1.7 8.95 1.6 9.3 1.4 9.3 0.65 9.35 0.0 11.2 0.0 12.5 1.3 14.7 1.25 15.45 0.85 24.5 0.8 24.75 1.15 25.1 1.4 36.85 1.6 37.0 1.7 37.2 1.8 37.85 1.8 37.9 1.65 37.95 1.5 38.15 1.3 51.35 1.4 51.4 1.65 51.45 1.9 51.45 2.05 52.15 2.05 52.25 1.7 52.45 1.5 55.05 1.5 55.5 1.25 56.2 0.8 Q56.55 0.55 56.95 0.45 L57.5 0.3 57.9 0.7 58.05 1.3 58.6 1.5 59.0 1.6 59.1 1.65 M27.4 11.65 L23.5 11.65 Q23.0 11.65 22.65 11.95 22.35 12.3 22.35 12.8 L22.35 16.45 22.65 17.3 23.5 17.6 27.4 17.6 Q27.9 17.6 28.25 17.3 L28.65 16.45 28.65 12.8 Q28.65 12.3 28.25 11.95 27.9 11.65 27.4 11.65" fill="#ffffff" fill-rule="evenodd" stroke="none"/></g></defs></svg>',
        32, 32)
        ]]
local keybinds = {
    alpha = 0,
    anim_w = 0,
    anim_h = 0,
    m_active = { },
    sorted_active = { },
    references = { },
    hotkey_modes = { 'holding', 'toggled', 'disabled' },
    icon_texture = renderer.load_svg('<svg t="1754780873347" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="8986" width="128" height="128"><path d="M96 224c-35.008 0-64 28.992-64 64v448c0 35.008 28.992 64 64 64h832c35.008 0 64-28.992 64-64V288c0-35.008-28.992-64-64-64z m0 64h832v448H96z m64 64v64h64v-64z m128 0v64h64v-64z m128 0v64h64v-64z m128 0v64h64v-64z m128 0v64h64v-64z m128 0v64h64v-64zM160 480v64h128v-64z m192 0v64h64v-64z m128 0v64h64v-64z m128 0v64h64v-64z m128 0v64h128v-64zM160 608v64h128v-64z m192 0v64h320v-64z m384 0v64h128v-64z" p-id="8987" fill="#ffffff"></path></svg>', 64, 64),
    title_font = nil,
    drag_area = dragging.new('Keybinds', center[1]-300, center[2]+100),
}

function keybinds:item_count(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end

function keybinds:create_item(tab, container, name, arg, cname)
    local ref = { ui.reference(tab, container, name) }
    local collected = { }
    for i=1, #ref do
        if i <= arg then
            collected[i] = ref[i]
        end
    end
    self.references[cname or name] = collected
end

client.set_event_callback('paint', function()

        -- helper: draw tri-color continuous line along top then right edge as a single gradient over total length
    local function draw_tricolor_L(x, y, total_w, top_thick, right_h, right_thick, c1, c2, c3)
        local total_len = total_w + right_h
        if total_len <= 0 then return end
        local mid = total_len / 2
        for i = 0, total_w - 1 do
            local rr,gg,bb,aa
            local s = i
            if s <= mid then
                rr,gg,bb,aa = lerp_color(c1, c2, s / mid)
            else
                rr,gg,bb,aa = lerp_color(c2, c3, (s - mid) / (total_len - mid))
            end
            renderer.rectangle(x + i, y, 1, top_thick, rr, gg, bb, aa)
        end
        for j = 0, right_h - 1 do
            local s = total_w + j
            local rr,gg,bb,aa
            if s <= mid then
                rr,gg,bb,aa = lerp_color(c1, c2, s / mid)
            else
                rr,gg,bb,aa = lerp_color(c2, c3, (s - mid) / (total_len - mid))
            end
            renderer.rectangle(x + total_w - right_thick, y + j, right_thick, 1, rr, gg, bb, aa)
        end
    end

    -- helper: draw diagonal tri-color gradient rectangle (top-left -> bottom-right)
    local function draw_tricolor_diag_rect(x, y, w, h, c1, c2, c3)
        if w <= 0 or h <= 0 then return end
        local diag_len = w + h
        local mid = diag_len / 2
        for i = 0, w - 1 do
            for j = 0, h - 1 do
                local s = i + j
                local rr,gg,bb,aa
                if s <= mid then
                    rr,gg,bb,aa = lerp_color(c1, c2, s / mid)
                else
                    rr,gg,bb,aa = lerp_color(c2, c3, (s - mid) / (diag_len - mid))
                end
                renderer.rectangle(x + i, y + j, 1, 1, rr, gg, bb, aa)
            end
        end
    end
    local lp = entity.get_local_player()
    if not lp then return end
    if not entity.is_alive(lp) then return end

    if lua_items.select.damage_ind:get() then
        visuals_helpers.damage_override()
    end
    if lua_items.select.velocity_warning:get() then
        visuals_helpers.velocity_ind()
    end
    if lua_items.select.Style_Panel:get() then
        visuals_helpers.panel_t()
    end
    if lua_items.select.Cross_indicator:get() then
        visuals_helpers.cross_indicator()
    end
    if lua_items.select.AA_debug:get() then
        visuals_helpers.screen_aa_debug()
    end
    if lua_items.select.defensive_warning:get() then
        visuals_helpers.defensive_ind()
    end
    if lua_items.select.manual_ind:get() then
        visuals_helpers.manual_arrows()
    end
    if lua_items.select.custom_scope:get() then
        visuals_helpers.custom_scope()
        ui.set(ref.scope, false)
    end

    visuals_helpers.aa_debug()

 --[[   if lua_items.select.debug_panels:get() then
        visuals_helpers.debug_panel()
    end
]]

    if lua_items.select.kibit_hitmarker:get() then
        visuals_helpers.kibit_mark()
    end

    if lua_items.select.auto_tp:get() and lua_items.select.auto_tp_key:get() then
        if tp_state == 'ACT' then
            renderer.indicator(200, 200, 200, 255, 'LC')
        elseif tp_state == 'TP' then
            renderer.indicator(0, 200, 0, 255, 'LC')
        else
            renderer.indicator(200, 0, 0, 255, 'LC')
        end
    end

    if lua_items.select.ai_peek:get() then
        render_peeking_points()
        if not ui.get(quick_peek_assist[ 2 ]) then return end
        get_closest_enemy()
        render_screen_bar()
    end

    --if lua_items.select.debug_panels:get() == 'Alternative' then
        local gradient_text_anim=function(b,c,d,e,f,g,h,i,j,k,l)local m,n,o,p=c,d,e,f;local g,h,i,j=g,h,i,j;k=k or 1;l=l or 0;l=l+3;local q=''local r=b:len()local s=globals.curtime()local t=s*k%l-2;for u=1,r do local v=b:sub(u,u)local w=(u-1)/(r-1)local x=w-t;if x>1 then x=1*2-x end;local c,d,e,f=m,n,o,p;local y=g-c;local z=h-d;local A=i-e;local B=j-f;if x>=0 and x<=1 then c=c+y*x;d=d+z*x;e=e+A*x;f=f+B*x end;q=q..('\a%02x%02x%02x%02x%s'):format(c,d,e,f,v)end;return q end
    --local r, g, b, a = lua_items.select.debug_panels:get_color()
        --renderer.text(center[1], screen[2] - 27, r, g, b, a,  "bc", 0, "‧.°‧.‧⋆✦⋆‧.‧°.‧")
    --renderer.text(center[1], screen[2] - 20, 255,188,239,255,  "bc", 0, '‧₊‧.°.⋆✦⋆.°.‧₊‧')

    renderer.text(center[1] + 5, screen[2] - 10, 255, 255, 255, 255, "bcd", nil, "EvØLut1Øn"..gradient_text_anim("", 155,088,139,155, 255,188,239,255, 4, 0 ))
    --end

if lua_items.select.widgets_list:get('Watermark') then

        local x, y = drag_watermark:get()

        local fps = ' ' .. math.floor(1.0 / globals.frametime() * 1.4) .. " fps"
        local ping = ' ' .. string.format('%.0f', client.latency() * 1000) .. " ms"

        local r, g, b, a = lua_items.select.widgets_list:get_color()
        
        local name = " Evolution "
        local build = " Dev"
        local user = ' ' .. username
        
        local name_width = renderer.measure_text("a", name)
        local build_width = renderer.measure_text("a", build)
        local user_width = renderer.measure_text("a", user)
        local fps_width = renderer.measure_text("a", fps)
        local ping_width = renderer.measure_text("a", ping)
        local active_elements_width = name_width + build_width + fps_width + ping_width + 42
    
        local icon_area_width = 25
        local text_area_width = name_width + build_width + fps_width + ping_width + 42
        local total_w = icon_area_width + text_area_width
        local total_h = 23
        drag_watermark:drag(total_w, total_h)

        local text_y = y + 6

        renderer.blur(x, y, total_w, total_h)
        local wm_mode = lua_items.select.widgets_color and lua_items.select.widgets_color:get() or 'Static'
        if wm_mode == 'Rainbow' then
            draw_tricolor_diag_rect(x, y, icon_area_width, total_h,
                {59,175,222, 255}, {202,70,205, 255}, {201,227,58, 255})
        else
        renderer.rectangle(x, y, icon_area_width, total_h, r, g, b, 255)
        end
        if wm_mode == 'Rainbow' then
            local top_thick, right_thick = 1, 1
            renderer.rectangle(x + icon_area_width, y + top_thick, text_area_width - right_thick, total_h - top_thick, 0, 0, 0, 50)
        else
        renderer.rectangle(x + icon_area_width, y, text_area_width, total_h, 0, 0, 0, 50)
        end
        if wm_mode == 'Rainbow' then
            local top_thick = 2
            local right_thick = 2
            draw_tricolor_L(x, y, total_w, top_thick, total_h, right_thick,
                {55,177,218, 255}, {202,70,205, 255}, {201,227,58, 255})
        end
        if wm_mode ~= 'Rainbow' then rect_line(x, y, total_w, total_h, {r, g, b, 255}) end

        renderer.texture(watermark_logo, x + 4, y + 8, 18, 11, 255, 255, 255, 255, 'f')
        
        local current_x = x + icon_area_width + 6
        
        renderer.text(current_x, text_y, 255, 255, 255, 255, 'ab', 0, name)
        current_x = current_x + name_width + 8
        
        renderer.text(current_x, text_y, 255, 255, 255, 255, 'ab', 0, build)
        current_x = current_x + build_width + 12
        
        renderer.text(current_x, text_y, 255, 255, 255, 255, 'ab', 0, fps)
        current_x = current_x + fps_width + 10
        
        renderer.text(current_x, text_y, 255, 255, 255, 255, 'ab', 0, ping)
        
end

if lua_items.select.widgets_list:get('Keybinds') then
    local kb = keybinds

    local smooth = lua_items.select.keybinds_speed:get() * 0.01

    local frames = 12 * globals.frametime() * smooth
    local lerp_speed = 10 * globals.frametime() * smooth

    for c_name, c_ref in pairs(kb.references) do
        local is_hotkey_triggered, state = false, { ui.get(c_ref[#c_ref]) }
        local is_hotkey_on, hotkey_mode = state[1], state[2]
        if hotkey_mode ~= 0 then
    if hotkey_mode == 3 then
        is_hotkey_triggered = not is_hotkey_on
    else
        is_hotkey_triggered = is_hotkey_on
    end
end
        local should_be_active = false
        if is_hotkey_triggered then
            if #c_ref == 1 then
                should_be_active = true
            elseif #c_ref > 1 and ui.get(c_ref[1]) then
                should_be_active = true
            end
        end
        if should_be_active then
            if kb.m_active[c_name] == nil then
                local active_items_count_before = kb:item_count(kb.m_active)
                local total_h = 28 + (active_items_count_before * 18)
                kb.m_active[c_name] = {
                    alpha = 0,
                    anim_y = total_h,
                    target_y = total_h
                }
            end
            kb.m_active[c_name].mode = kb.hotkey_modes[hotkey_mode] or 'toggle'
            kb.m_active[c_name].alpha = math.min(1, kb.m_active[c_name].alpha +
                frames)
        elseif kb.m_active[c_name] ~= nil then
            kb.m_active[c_name].alpha = math.max(0, kb.m_active[c_name].alpha -
                frames)
            if kb.m_active[c_name].alpha < 0.01 then
                kb.m_active[c_name] = nil
            end
        end
    end

    kb.sorted_active = {}
    for name, _ in pairs(kb.m_active) do table.insert(kb.sorted_active, name) end
    table.sort(kb.sorted_active)
    local item_h = 20
    for i, name in ipairs(kb.sorted_active) do
        local item = kb.m_active[name]
        if item then item.target_y = (i - 1) * item_h end
    end
    for name, item in pairs(kb.m_active) do
        item.anim_y = item.anim_y + (item.target_y - item.anim_y) * lerp_speed
    end

    local active_items_count = #kb.sorted_active
    if active_items_count > 0 then
        kb.alpha = math.min(1, kb.alpha + frames)
    else
        kb.alpha = math.max(0, kb.alpha - frames)
    end

    local target_w, target_h = 0, 0
    if active_items_count > 0 then
        local header_h, padding = 28, 10
        local icon_w = 30
        local title_text = "KEYBINDS"
        local full_title_w = renderer.measure_text(kb.title_font or 'a',
            title_text)
        local max_content_w = full_title_w + padding * 2
        for _, name in ipairs(kb.sorted_active) do
            local item = kb.m_active[name]
            if item then
                local mode_text = '[' .. item.mode .. ']'
                local name_w = renderer.measure_text('a', name)
                local mode_w = renderer.measure_text('a', mode_text)
                max_content_w = math.max(max_content_w,
                    name_w + mode_w + padding * 3)
            end
        end
        target_w = icon_w + max_content_w
        target_h = header_h + (active_items_count * item_h)
    end

    kb.anim_w = kb.anim_w + (target_w - kb.anim_w) * lerp_speed
    kb.anim_h = kb.anim_h + (target_h - kb.anim_h) * lerp_speed

    if kb.alpha < 0.01 and kb.anim_w < 1 and kb.anim_h < 1 then return end

    local x, y = kb.drag_area:get()
    local r, g, b = lua_items.select.widgets_list:get_color()
    local alpha = math.floor(kb.alpha * 255)
    kb.drag_area:drag(kb.anim_w, kb.anim_h)

    local header_h = 28
    local icon_w = 30
    local mode = lua_items.select.widgets_color and lua_items.select.widgets_color:get() or 'Static'

    renderer.blur(x, y, kb.anim_w, kb.anim_h)
    if mode == 'Rainbow' then
        draw_tricolor_diag_rect(x, y, icon_w, header_h,
            {59,175,222, alpha}, {202,70,205, alpha}, {201,227,58, alpha})
    else
    renderer.rectangle(x, y, icon_w, header_h, r, g, b, alpha)
    end
    if mode == 'Rainbow' then
        local top_thick, right_thick = 1, 1
        renderer.rectangle(x + icon_w, y + top_thick, kb.anim_w - icon_w - right_thick, header_h - top_thick, 18, 18, 18, alpha * 0.3)
    else
    renderer.rectangle(x + icon_w, y, kb.anim_w - icon_w, header_h, 18, 18, 18, alpha * 0.3)
    end
    if mode == 'Rainbow' then
        local top_thick = 2
        local right_thick = 2
        draw_tricolor_L(x, y, kb.anim_w, top_thick, header_h, right_thick,
            {55,177,218, alpha}, {202,70,205, alpha}, {201,227,58, alpha})
    end
    if kb.anim_h > header_h then
        renderer.rectangle(x, y + header_h, kb.anim_w, kb.anim_h - header_h, 18,
            18, 18, alpha * 0.3)
    end
    if mode ~= 'Rainbow' then rect_line(x, y, kb.anim_w, header_h, { r, g, b, alpha }) end

    if kb.anim_w > 40 then
        local _, title_h = renderer.measure_text(kb.title_font or 'a', "A")

        local icon_size = 14
        local icon_x = x + (icon_w - icon_size) / 2
        local icon_y = y + (header_h - icon_size) / 2
        renderer.texture(kb.icon_texture, x + 5, y + 4, 20, 20, 255, 255, 255,
            alpha, 'f')

        local title_text = "KEYBINDS"
        local padding = 10
        local available_w = kb.anim_w - icon_w - (padding * 2)
        local text_to_render = title_text

        if renderer.measure_text(kb.title_font or 'a', text_to_render) >
            available_w then
            for i = #text_to_render, 1, -1 do
                local sub = string.sub(text_to_render, 1, i) .. "..."
                if renderer.measure_text(kb.title_font or 'a', sub) <=
                    available_w then
                    text_to_render = sub
                    break
                end

                if i == 1 then
                    text_to_render = string.sub(title_text, 1, 1)
                end
            end
        end

        renderer.text(x + icon_w + padding, y + (header_h - title_h) / 2, 255,
            255, 255, alpha, kb.title_font or 'ab', 0, text_to_render)
    end

    local item_h = 18
    local body_y, body_h = y + header_h, kb.anim_h - header_h
    if body_h > 1 then
        local _, item_font_h = renderer.measure_text('a', 'A')
        for _, name in ipairs(kb.sorted_active) do
            local item = kb.m_active[name]
            if item then
                local item_alpha = math.floor(kb.alpha * item.alpha * 255)
                local text_y = body_y + item.anim_y + (item_h - item_font_h) / 2

                if item_alpha > 0 and text_y >= body_y and
                    (text_y + item_font_h) <= (body_y + body_h) then
                    local mode_text = '[' .. item.mode .. ']'
                    local mode_w = renderer.measure_text('a', mode_text)
                    renderer.text(x + 10, text_y, 255, 255, 255, item_alpha,
                        'a', 0, name)
                    renderer.text(x + kb.anim_w - mode_w - 10, text_y, 200, 200,
                        200, item_alpha, 'a', 0, mode_text)
                end
            end
        end
    end
end






end)

keybinds:create_item('RAGE', 'Aimbot', 'Double tap', 2, 'Double Tap')
keybinds:create_item('RAGE', 'Aimbot', 'Force safe point', 1, 'Safe Point')
keybinds:create_item('RAGE', 'Other', 'Quick peek assist', 2, 'Auto Peek')
keybinds:create_item('RAGE', 'Aimbot', 'Force body aim', 1, 'Force Body Aim')
keybinds:create_item('RAGE', 'Other', 'Duck peek assist', 1, 'Duck Peek Assist')
keybinds:create_item('AA', 'Anti-aimbot angles', 'Freestanding', 2, 'Freestanding')
keybinds:create_item('AA', 'Other', 'Slow motion', 2, 'Slow Motion')
keybinds:create_item('AA', 'Other', 'On shot anti-aim', 2, 'On Shot Anti-Aim')
keybinds:create_item('AA', 'Other', 'Fake peek', 2, 'Fake Peek')
keybinds:create_item('MISC', 'Movement', 'Z-Hop', 2, 'Z-Hop')
keybinds:create_item('MISC', 'Movement', 'Pre-speed', 2, 'Pre-Speed')
keybinds:create_item('MISC', 'Movement', 'Blockbot', 2, 'Blockbot')
keybinds:create_item('MISC', 'Movement', 'Jump at edge', 2, 'Jump At Edge')
keybinds:create_item('MISC', 'Miscellaneous', 'Last second defuse', 1, 'Last Second Defuse')
keybinds:create_item('MISC', 'Miscellaneous', 'Free look', 1, 'Free Look')
keybinds:create_item('MISC', 'Miscellaneous', 'Ping spike', 2, 'Ping Spike')
keybinds:create_item('MISC', 'Miscellaneous', 'Automatic grenade release', 2, 'Grenade Release')

lua_items.select.custom_scope:set_callback(function(self)
    if self:get() then
        ui.set(ref.scope, true)
        s_length = 0
    end
end)

client.set_event_callback('paint_ui', function()
    hide_original_menu(false, lua_items.main.tab:get() == " Features" )
    if lua_items.select.custom_scope:get() then
        ui.set(ref.scope, true)
    end
    misc_helpers.ragebot_logs()
    if lua_items.select.clantag:get() then
        misc_helpers.set_clan()
    end
end)

local pred_state = false

client.set_event_callback('paint', function()
    if lua_items.select.predict:get() and lua_items.select.predict_key:get() then
        if is_vulnerable() and not pred_state then
            client.delay_call(0.1, function()
            end)
            pred_state = true
        elseif not is_vulnerable() and pred_state then
            client.delay_call(0.2, function()
            end)
            client.delay_call(0.3, function()
            end)
            pred_state = false
        end
    elseif pred_state then
        client.delay_call(0.1, function()
        end)
        pred_state = false
    end
end)

client.set_event_callback('round_start', function()
    pred_state = false
end)

client.set_event_callback('shutdown', function()
return
end)



client.set_event_callback('shutdown', function()
    local played_seconds = client.unix_time() - start_time
    user_info[3] = user_info[3] + played_seconds
    database.write(lua_db.user, user_info)
    database.flush()
    cvar.cl_interp:set_int(0.015625)
    cvar.cl_interpolate:set_int(1)
    cvar.cl_interp_ratio:set_int(2)
    cvar.cl_clock_correction:set_int(1)
    cvar.cam_idealdist:set_int(150)
    cvar.con_filter_enable:set_int(0)
    cvar.con_filter_text:set_string("")
    cvar.viewmodel_offset_x:set_float(view_cvars.viewmodel_offset_x)
    cvar.viewmodel_offset_y:set_float(view_cvars.viewmodel_offset_y)
    cvar.viewmodel_offset_z:set_float(view_cvars.viewmodel_offset_z)
    cvar.fov_cs_debug:set_int(0)

    cvar.r_3dsky:set_int(fps_cvars.r_3dsky)

    cvar.fog_enable:set_int(fps_cvars.fog_enable)
    cvar.fog_enable_water_fog:set_int(fps_cvars.fog_enable_water_fog)
    cvar.fog_enableskybox:set_int(fps_cvars.fog_enableskybox)

    cvar.r_shadows:set_int(fps_cvars.r_shadows)

    cvar.violence_hblood:set_int(fps_cvars.violence_hblood)
    cvar.violence_ablood:set_int(fps_cvars.violence_ablood)

    cvar.r_decals:set_int(fps_cvars.r_decals)

    cvar.mat_postprocess_enable:set_int(fps_cvars.mat_postprocess_enable)

    cvar.cl_disable_ragdolls:set_int(fps_cvars.cl_disable_ragdolls)

    cvar.r_eyegloss:set_int(fps_cvars.r_eyegloss)
    cvar.r_eyemove:set_int(fps_cvars.r_eyemove)
    cvar.r_eyeshift_x:set_int(fps_cvars.r_eyeshift_x)
    cvar.r_eyeshift_y:set_int(fps_cvars.r_eyeshift_y)
    cvar.r_eyeshift_z:set_int(fps_cvars.r_eyeshift_z)
    cvar.r_eyesize:set_int(fps_cvars.r_eyesize)

    cvar.r_drawparticles:set_int(fps_cvars.r_drawparticles)

    cvar.cl_detail_avoid_radius:set_int(fps_cvars.cl_detail_avoid_radius)
    cvar.cl_detail_max_sway:set_int(fps_cvars.cl_detail_max_sway)
    cvar.dsp_slow_cpu:set_int(fps_cvars.dsp_slow_cpu)
    cvar.func_break_max_pieces:set_int(fps_cvars.func_break_max_pieces)
    cvar.r_drawtracers:set_int(fps_cvars.r_drawtracers)
    cvar.r_dynamic:set_int(fps_cvars.r_dynamic)
    cvar.muzzleflash_light:set_int(fps_cvars.muzzleflash_light)
    cvar.mat_hdr_enabled:set_int(fps_cvars.mat_hdr_enabled)

    client.exec("con_filter_enable 0")
    hide_original_menu(true, true)
    misc_helpers.fps_boost(false)
    client.set_clan_tag('')
    database.write(lua_db.config, configs_db)
end)

client.set_event_callback('on_player_spawn', function(e)
    reset_reso_date(e)
end)

client.set_event_callback('net_update_end', function()
    if lua_items.select.resolver:get() then
        rage_helpers.jitter_resolver()
    end
end)

client.set_event_callback("level_init", function()
    alive_players = {}
    queue = {}
    queue2 = {}
    misc_helpers.filter(lua_items.select.filter_console:get())
end)

client.set_event_callback("round_start", function()
    alive_players = {}
    rage_helpers.erase_player_data()
    rage_helpers.reset_plist()
    queue = {}
    queue2 = {}
    misc_helpers.filter(lua_items.select.filter_console:get())
end)

client.set_event_callback("player_say", function(e)
    if lua_items.select.enemy_chat:get() then
        misc_helpers.onPlaySay(e)
    end
end)

client.set_event_callback("player_chat", function(e)
    if lua_items.select.enemy_chat:get() then
        misc_helpers.onPlayChat(e)
    end
end)

client.set_event_callback("round_end_upload_stats", misc_helpers.buybot)

local zoom_offset = 0

client.set_event_callback('override_view', function(e)
    local lp = entity.get_local_player()
    if not lp then return end
    if not lua_items.select.animated_zoom:get() then return end

    local scoped = entity.get_prop(lp, "m_bIsScoped") == 1
    local weapon = entity.get_player_weapon(lp)
    local zoomlevel = entity.get_prop(weapon, "m_zoomLevel")

    local value = 0

    if scoped then
        if zoomlevel == 1 then
            value = lua_items.select.animated_step:get()
        else
            value = lua_items.select.animated_step:get() * 2
        end
    else
        value = 0
    end

    zoom_offset = math.lerp(zoom_offset, scoped and value or 0, 0.2)

    e.fov = ui.get(ref.fov) - zoom_offset
end)


local strafer = pui.reference('MISC', 'Movement', 'Air strafe')
local function jumpscout1(cmd)
    if not menu.select.jumpscout1:get() then return end
        local vel = vector(entity.get_prop(entity.get_local_player(), "m_vecVelocity")):length2d()
        --ui_set(aa_refs.air_strafe, not (cmd.in_jump and (vel < 10)) or ui_is_menu_open())
        strafer:override(vel > 35)
    end

local phrases_kill = {
    [1] = {'X'},

}

local phrases_dead = {
    [1] = {'X'},
}

client.set_event_callback("player_death", function(e)
    if not lua_items.select.trashtalk:get() then return end
    local victim_userid, attacker_userid = e.userid, e.attacker
    if victim_userid == nil or attacker_userid == nil then
        return
    end

    local victim_entindex = client.userid_to_entindex(victim_userid)
    local attacker_entindex = client.userid_to_entindex(attacker_userid)

    local function send_delayed_messages(phrases)
        for i, phrase in ipairs(phrases) do
            client.delay_call(i*2, function() client.exec("say " .. phrase) end)
        end
    end

    if attacker_entindex == entity.get_local_player() and entity.is_enemy(victim_entindex) then
        local phrase_set = phrases_kill[math.random(1, #phrases_kill)]
        send_delayed_messages(phrase_set)
    end

    if attacker_entindex ~= entity.get_local_player() and victim_entindex == entity.get_local_player() then
        local phrase_set = phrases_dead[math.random(1, #phrases_dead)]
        send_delayed_messages(phrase_set)
    end
end)


client.set_event_callback('aim_miss', aim_miss)
client.set_event_callback('aim_hit', aim_hit)
client.set_event_callback('aim_fire', function(e)
    cache.last_seen = 0
    console_logs.on_aim_fire(e)
end)
client.set_event_callback('aim_miss', console_logs.on_aim_miss)
client.set_event_callback('aim_hit', console_logs.on_aim_hit)

client.set_event_callback("pre_render", function()
    if not lua_items.select.anims:get() then return end
    local self = entity.get_local_player()
    if not self then return end
    local self_index = c_entity.new(self)
    local self_anim_state = self_index:get_anim_state()
    if not self_anim_state then return end
    local x_velocity = entity.get_prop(self, "m_vecVelocity[0]")

    if lua_items.select.anims_ground:get() == 'Static' then
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", lua_items.select.anims_ground_amount:get()/100, 0)
        ui.set(ref.legs, 'Always Slide')
    elseif lua_items.select.anims_ground:get() == 'Jitter' then
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", globals.tickcount() % 4 > 1 and lua_items.select.anims_ground_amount:get()/100 or 1, 0)
        ui.set(ref.legs, 'Always Slide')
    elseif lua_items.select.anims_ground:get() == 'Jitter Slide' then
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", math.random(lua_items.select.anims_ground_amount:get(), 100)/100, 1)
        ui.set(ref.legs, 'Always Slide')
    elseif lua_items.select.anims_ground:get() == 'MoonWalk' then
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", 1, 7)
        ui.set(ref.legs, 'Never Slide')
    end

    if lua_items.select.anims_air:get() == 'Static' then
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", lua_items.select.anims_air_amount:get()/100, 6)
    elseif lua_items.select.anims_air:get() == 'Jitter' then
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", globals.tickcount() % 4 > 1 and lua_items.select.anims_air_amount:get()/100 or 1, 6)
    elseif lua_items.select.anims_air:get() == 'Better Jitter' then
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", math.random(lua_items.select.anims_air_amount:get(), 100)/100, 6)
        entity.set_prop(entity.get_local_player(), "m_flPoseParameter", math.random(0, 10)/10, 3)
    elseif lua_items.select.anims_air:get() == 'MoonWalk' then
        local self_anim_overlay_6 = self_index:get_anim_overlay(6)
        if not self_anim_overlay_6 then return end
    
        if math.abs(x_velocity) >= 3 then
            self_anim_overlay_6.weight = 1
        end
    end

    local self_anim_overlay = self_index:get_anim_overlay(12)
    if not self_anim_overlay then return end

    if lua_items.select.move_lean:get() == 'Static' then
        local x_velocity = entity.get_prop(self, "m_vecVelocity[0]")
        if math.abs(x_velocity) >= 3 then
            self_anim_overlay.weight = lua_items.select.move_lean_amount:get()/100
        end
    elseif lua_items.select.move_lean:get() == 'Jitter' then
        self_anim_overlay.weight = math.random(lua_items.select.move_lean_amount:get()/100, 100)/100
    end
end)
----------------------------------------------------------------
-- Logs widget (watermark/keybinds style, independent draw hook)
-- Insert your SVG between the double brackets below. If left empty,
-- the icon area will be hidden automatically.
local LOGS_ICON_SVG = [[
]] -- << INSERT YOUR ICON SVG CONTENT HERE >>

local logs_widget = logs_widget or {
    alpha = 0,
    anim_w = 0,
    anim_h = 0,
    max_items = 6,
    line_height = 16,
    padding = 10,
    items = { },
    -- Will be initialized lazily on first draw to ensure 'center'/'dragging' exist.
    drag_area = nil,
    icon_texture = nil,
    title_font = nil,
}

function logs_widget:collect_items()
    self.items = {}
    if logs ~= nil then
        local count = 0
        -- Newest first
        for i = #logs, 1, -1 do
            local entry = logs[i]
            -- Expected entry shape: { text, alpha, time, color }
            local text = entry and entry[1] and tostring(entry[1]) or nil
            local color = entry and entry[4] or nil
            if text then
                table.insert(self.items, {text, color})
                count = count + 1
            end
            if count >= self.max_items then break end
        end
    end
end

function logs_widget:draw()
    -- Guard: required globals must exist
    if not lua_items or not lua_items.select or not lua_items.select.widgets_list then return end

    -- Lazy init drag area and icon texture
    if not self.drag_area then
        local sx, sy = client.screen_size()
        local cx = (center and center[1]) or (sx / 2)
        local cy = (center and center[2]) or (sy / 2)
        self.drag_area = dragging.new('Logs', cx - 300, cy + 140)
        if LOGS_ICON_SVG and #LOGS_ICON_SVG > 0 then
            self.icon_texture = renderer.load_svg(LOGS_ICON_SVG, 64, 64)
        end
    end

    self:collect_items()
    local item_count = #self.items
    local frames = 12 * globals.frametime()
    local lerp_speed = 10 * globals.frametime()

    if item_count == 0 then
        self.alpha = math.max(0, self.alpha - frames)
        self.anim_w = self.anim_w + (0 - self.anim_w) * lerp_speed
        self.anim_h = self.anim_h + (0 - self.anim_h) * lerp_speed
        return
    else
        self.alpha = math.min(1, self.alpha + frames)
    end

    local title_text = "LOGS"
    local header_h, padding = 28, self.padding
    local icon_w = self.icon_texture and 30 or 0

    local max_content_w = renderer.measure_text(self.title_font or 'a', title_text) + padding * 2
    for i=1,item_count do
        local w = renderer.measure_text(self.title_font or 'a', (self.items[i] and self.items[i][1]) or "")
        if w + padding * 2 > max_content_w then
            max_content_w = w + padding * 2
        end
    end

    local target_w = icon_w + max_content_w
    local target_h = header_h + (item_count * self.line_height)

    self.anim_w = self.anim_w + (target_w - self.anim_w) * lerp_speed
    self.anim_h = self.anim_h + (target_h - self.anim_h) * lerp_speed

    if self.alpha < 0.01 and self.anim_w < 1 and self.anim_h < 1 then return end

    local x, y = self.drag_area:get()
    -- Header/body color border uses same source as keybinds/watermark
    local r, g, b = lua_items.select.widgets_list:get_color()
    local alpha = math.floor(self.alpha * 255)

    -- Header + body background (same look as keybinds panel)
    renderer.rectangle(x, y, self.anim_w, header_h, 18, 18, 18, math.floor(alpha * 0.3))
    if self.anim_h > header_h then
        renderer.rectangle(x, y + header_h, self.anim_w, self.anim_h - header_h, 18, 18, 18, math.floor(alpha * 0.3))
    end
    if rect_line then
        rect_line(x, y, self.anim_w, header_h, { r, g, b, alpha })
    else
        -- Fallback border if rect_line helper is not available
        renderer.rectangle(x, y, self.anim_w, 1, r, g, b, alpha)
        renderer.rectangle(x, y + header_h - 1, self.anim_w, 1, r, g, b, alpha)
        renderer.rectangle(x, y, 1, header_h, r, g, b, alpha)
        renderer.rectangle(x + self.anim_w - 1, y, 1, header_h, r, g, b, alpha)
    end

    -- Title and optional icon
    if self.anim_w > 40 then
        if self.icon_texture then
            renderer.texture(self.icon_texture, x + 5, y + 4, 20, 20, 255, 255, 255, alpha, 'f')
        end
        local available_w = self.anim_w - icon_w - (padding * 2)
        local text_to_render = title_text
        if renderer.measure_text(self.title_font or 'a', text_to_render) > available_w then
            for i = #text_to_render, 1, -1 do
                local sub = string.sub(text_to_render, 1, i) .. "..."
                if renderer.measure_text(self.title_font or 'a', sub) <= available_w then
                    text_to_render = sub
                    break
                end
            end
        end
        local tx = x + padding + (self.icon_texture and (icon_w - 20) or 0)
        renderer.text(tx, y + 6, 255, 255, 255, alpha, self.title_font or 'a', 0, text_to_render)
    end

    -- Render items (color taken from each entry's color to preserve hit/miss tuning)
    local base_y = y + header_h + 2
    for i=1,item_count do
        local line = self.items[i] and self.items[i][1] or ""
        local col = self.items[i] and self.items[i][2] or {255,255,255}
        local cr, cg, cb = unpack(col)
        renderer.text(x + padding, base_y + (i-1) * self.line_height, cr, cg, cb, alpha, '', 0, line)
    end

    self.drag_area:drag(self.anim_w, self.anim_h)
end

-- Independent draw hook (kept minimal to avoid touching existing loops)
client.set_event_callback('paint', function()
    if lua_items and lua_items.select and lua_items.select.widgets_list and lua_items.select.widgets_list:get('Logs') then
        logs_widget:draw()
    end
end)
----------------------------------------------------------------
