--------------------------------------------------------
-- [Noir] Classes - Vehicle
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
    A class that represents a vehicle for the built-in VehicleService.
]]
---@class NoirVehicle: NoirClass
---@field New fun(self: NoirVehicle, vehicle_id: integer, peer_id: integer, x: number, y: number, z: number, cost: number, group_id: number): NoirPlayer
---@field ID integer
---@field Owner NoirPlayer
---@field SpawnPosition SWMatrix
---@field Cost number
---@field ParentGroup NoirVehicleGroup
Noir.Classes.VehicleClass = Noir.Class("NoirVehicle")

--[[
    Initializes vehicle class objects.
]]
---@param vehicle_id integer
---@param peer_id integer
---@param x number
---@param y number
---@param z number
---@param cost number
---@param group_id integer
function Noir.Classes.VehicleClass:Init(vehicle_id, peer_id, x, y, z, cost, group_id)
    self.ID = vehicle_id
    self.Owner = Noir.Services.PlayerService:GetPlayer(peer_id)
    self.SpawnPosition = SWMatrix(x, y, z)
    self.Cost = cost
    self.ParentGroup = Noir.Services.VehicleService:GetVehicleGroup(group_id)
end

--[[
    Serializes this player for g_savedata.
]]
---@return NoirSerializedPlayer
function Noir.Classes.VehicleClass:_Serialize()
    return {
        Name = self.Name,
        ID = self.ID,
        Steam = self.Steam,
        Admin = self.Admin,
        Auth = self.Auth,
        Permissions = self.Permissions
    }
end

--[[
    Deserializes a player from g_savedata into a player class object.
]]
---@param serializedPlayer NoirSerializedPlayer
---@return NoirPlayer
function Noir.Classes.PlayerClass.VehicleClass(serializedPlayer)
    local player = Noir.Classes.PlayerClass:New(
        serializedPlayer.Name,
        serializedPlayer.ID,
        serializedPlayer.Steam,
        serializedPlayer.Admin,
        serializedPlayer.Auth,
        serializedPlayer.Permissions
    )

    return player
end

-------------------------------
-- // Intellisense
-------------------------------

--[[
    Represents a vehicle class that has been serialized.
]]
---@class NoirSerializedVehicle
---@field ID integer The vehicle ID
---@field 