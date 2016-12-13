dofile(minetest.get_modpath("mobs").."/api.lua")

dofile(minetest.get_modpath("stonetest_mobs").."/mob_stone_monster.lua")
dofile(minetest.get_modpath("stonetest_mobs").."/mob_desert_stone_monster.lua")
dofile(minetest.get_modpath("stonetest_mobs").."/mob_griefer_ghost.lua")
dofile(minetest.get_modpath("stonetest_mobs").."/mob_just_test_griefer.lua")
dofile(minetest.get_modpath("stonetest_mobs").."/mob_jack.lua")

	
if minetest.setting_get("log_mods") then
	minetest.log("action", "Just Test 2 mobs-init loaded")
end
