
--dofile(minetest.get_modpath("mobs").."/api.lua")
stonetest_mobs = {}
local modpath = minetest.get_modpath("stonetest_mobs")
stonetest_mobs.modpath = modpath

--local path = minetest.get_modpath("stonetest_mobs")

--if mobs.mod and mobs.mod == "redo" then
if mobs then
	dofile(minetest.get_modpath("mobs").."/api.lua")
	--dofile(minetest.get_modpath("mobs").."/flowerspawn.lua")
	dofile(minetest.get_modpath("stonetest_mobs").."/init_redo.lua")
	dofile(minetest.get_modpath("stonetest_mobs").."/mob_stone_monster.lua")
	dofile(minetest.get_modpath("stonetest_mobs").."/mob_desert_stone_monster.lua")
	dofile(minetest.get_modpath("stonetest_mobs").."/mob_griefer_ghost.lua")
	dofile(minetest.get_modpath("stonetest_mobs").."/mob_just_test_griefer.lua")
	dofile(minetest.get_modpath("stonetest_mobs").."/mob_jack.lua")
	else

	dofile(minetest.get_modpath("stonetest_mobs").."/api.lua")
	dofile(minetest.get_modpath("stonetest_mobs").."/init_justtest.lua")
end


if minetest.setting_get("log_mods") then
	minetest.log("action", "mobs loaded")
end

--[[

if flowers then
	dofile(modpath.."/flowers.lua")
end

]]