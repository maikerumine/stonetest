	
-------------------------
--BAD NPC
-------------------------
mobs:register_mob("stonetest_mobs:Flowermon", {
	type = "monster",
	docile_by_day = true,
	passive = false,
	attack_type = "dogfight",
	specific_attack =  {"player","mobs:griefer_ghost"},
	--local specific_attack = function(list, what)
	--'attack_specific' has a table of entity names that monsters can attack {"player", "mobs_animal:chicken"}
	pathfinding = 1,
	reach = 2,
	hp_min = 25,
	hp_max = 40,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {{
	"character_32.png",
	"3d_armor_trans.png",
	--"herobrines_blody_gost_by_lovehart.png",
	minetest.registered_items["default:sword_steel"].inventory_image,
	}},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 2.5,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "flowers:flower_rose",
		chance = 27,
		min = 0,
		max = 1,},
		{name = "flowers:flower_tulip",
		chance = 27,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_yellow",
		chance = 27,
		min = 0,
		max = 1,},
		{name = "flowers:flower_geranium",
		chance = 27,
		min = 0,
		max = 1,},
		{name = "flowers:flower_viola",
		chance = 27,
		min = 0,
		max = 1,},
		{name = "flowers:flower_dandelion_white",
		chance = 27,
		min = 0,
		max = 1,},
	},

	light_resistant = true,
	armor = 60,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	lifetimer=300,
	group_attack = true,
	fear_height = 3,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
})
--mobs:spawn_specfic(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height, day_toggle, on_spawn)
mobs:spawn_specific("stonetest_mobs:Flowermon",{ "default:cobble"}, {"air"},
	0, 6, 35, 3000, 1, -50, 31000)
	

	
if minetest.setting_get("log_mods") then
	minetest.log("action", "Just Test 2 mobs loaded")
end
