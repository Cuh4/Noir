--------------------------------------------------------
-- [Noir] Services - Vehicle Service
--------------------------------------------------------

--[[
    ----------------------------

    CREDIT:
        Author: @Cuh4 (GitHub)
        GitHub Repository: https://github.com/cuhHub/Noir

    License:
        Copyright (C) 2024 Cuh4

        Licensed under the Apache License, Version 2.0 (the "License");
        you may not use this file except in compliance with the License.
        You may obtain a copy of the License at

            http://www.apache.org/licenses/LICENSE-2.0

        Unless required by applicable law or agreed to in writing, software
        distributed under the License is distributed on an "AS IS" BASIS,
        WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
        See the License for the specific language governing permissions and
        limitations under the License.

    ----------------------------
]]

-------------------------------
-- // Main
-------------------------------

--[[
    
]]
---@class NoirVehicleService: NoirService
---@field OnGroupSpawn NoirEvent Fired when a vehicle group is spawned (arguments: NoirVehicleGroup)
---@field OnVehicleSpawn NoirEvent Fired when a vehicle is spawned (arguments: NoirVehicle)
---
---@field OnGroupDespawn NoirEvent Fired when a vehicle group is despawned (arguments: NoirGroup)
---@field OnVehicleDespawn NoirEvent Fired when a vehicle is despawned (arguments: NoirVehicleGroup)
---
---@field OnGroupLoad NoirEvent Fired when a vehicle group is loaded (all vehicles loaded) (arguments: NoirVehicleGroup)
---@field OnVehicleLoad NoirEvent Fired when a vehicle is loaded (arguments: NoirVehicle)
---
---@field OnGroupUnload NoirEvent Fired when a vehicle group is unloaded (all vehicles unloaded) (arguments: NoirVehicleGroup)
---@field OnVehicleUnload NoirEvent Fired when a vehicle is unloaded (arguments: NoirVehicle)
---
---@field Groups table<integer, NoirVehicleGroup>
---@field Vehicles table<integer, NoirVehicle>
Noir.Services.VehicleService = Noir.Services:CreateService("VehicleService")

function Noir.Services.VehicleService:ServiceInit()
    -- Create events
    self.OnGroupSpawn = Noir.Libraries.Events:Create()
    self.OnVehicleSpawn = Noir.Libraries.Events:Create()

    self.OnGroupDespawn = Noir.Libraries.Events:Create()
    self.OnVehicleDespawn = Noir.Libraries.Events:Create()

    self.OnGroupLoad = Noir.Libraries.Events:Create()
    self.OnVehicleLoad = Noir.Libraries.Events:Create()

    self.OnGroupUnload = Noir.Libraries.Events:Create()
    self.OnVehicleUnload = Noir.Libraries.Events:Create()

    -- Create attributes
    self.Groups = {}
    self.Vehicles = {}
end

function Noir.Services.VehicleService:ServiceStart()
    -- Listen for groups spawning
    ---@param group_id integer
    ---@param peer_id integer
    ---@param x number
    ---@param y number
    ---@param z number
    ---@param cost number
    Noir.Callbacks:Connect("onGroupSpawn", function(group_id, peer_id, x, y, z, cost)

    end)

    -- Listen for vehicles spawning
    ---@param vehicle_id integer
    ---@param peer_id integer
    ---@param x number
    ---@param y number
    ---@param z number
    ---@param cost number
    ---@param group_id integer
    Noir.Callbacks:Connect("onVehicleSpawn", function(vehicle_id, peer_id, x, y, z, cost, group_id)

    end)

    -- Listen for vehicles despawning
    ---@param vehicle_id integer
    ---@param peer_id integer
    Noir.Callbacks:Connect("onVehicleDespawn", function(vehicle_id, peer_id)

    end)

    -- Listen for vehicles loading
    ---@param vehicle_id integer
    Noir.Callbacks:Connect("onVehicleLoad", function(vehicle_id)

    end)

    -- Listen for vehicles unloading
    ---@param vehicle_id integer
    Noir.Callbacks:Connect("onVehicleUnload", function(vehicle_id)

    end)
end