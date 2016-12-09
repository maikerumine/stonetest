dofile(minetest.get_modpath("mobs").."/api.lua")

--Andrey created mob for his world needs


mobs:register_mob("mobs:griefer_ghost", {
	type = "monster",
	hp_max = 20,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_oerkki.x",
	textures = {"mobs_oerkki.png"},
	visual_size = {x=5, y=5},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 1,
	drops = {
		{name = "default:junglegrass",
		chance = 20,
		min = 1,
		max = 2,
		},
		{name = "default:grass_1",
		chance = 20,
		min = 1,
		max = 2,
		},
		{name = "default:cactus",
		chance = 30,
		min = 1,
		max = 2,
		},
		{name = "bones:bones",
			chance = 5,
			min = 0,
			max=1,
		},
	},
	armor = 100,
	drawtype = "front",
	light_resistant = true,
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	lifetimer=30,
	animation = {
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 36,
		run_start = 37,
		run_end = 49,
		punch_start = 37,
		punch_end = 49,
		speed_normal = 15,
		speed_run = 15,
	},
	follow="",
	jump=true,

})
--function mobs:register_spawn_near(name, nodes, max_light, min_light, tries)
mobs:register_spawn_near("mobs:griefer_ghost", "default:stone", 4, -1, 2)

mobs:register_mob("mobs:stone_monster", {
	type = "monster",
	hp_max = 15,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster.png"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 1,
	damage = 2,
	drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 2,
		max = 5,},
		{name = "default:papyrus",
		chance = 30,
		min = 2,
		max = 5,
		},
		{name = "bones:bones",
			chance = 5,
			min = 0,
			max=1,
		},
	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	lifetimer=300,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	}
})
--function mobs:register_spawn(name, nodes, max_light, min_light, chance, active_object_count, max_height, min_height, spawn_func)
--mobs:register_spawn("mobs:stone_monster", "default:stone", 3, -1, 9000, 20 500, 0) --was48
mobs:register_spawn("mobs:stone_monster", "default:stone", 3, -1, 9000, 48, 500, 0) --was48

minetest.register_node("mobs:cursed_stone", {
	description = "Cursed stone",
	tiles = {
		"mobs_cursed_stone_top.png",
		"mobs_cursed_stone_bottom.png",
		"mobs_cursed_stone.png",
		"mobs_cursed_stone.png",
		"mobs_cursed_stone.png",
		"mobs_cursed_stone.png"
	},
	is_ground_content = false,
	groups = {cracky=1, level=2},
	drop = 'default:goldblock',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'mobs:cursed_stone',
	recipe = {
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
		{'default:obsidian', 'default:goldblock', 'default:obsidian'},
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
	}
})
--function mobs:register_spawn_near(name, nodes, max_light, min_light, tries)
--mobs:register_spawn("mobs:griefer_ghost", "mobs:cursed_stone", 4, -1, 2, 16,500, -500)  --was40
mobs:register_spawn("mobs:griefer_ghost", "mobs:cursed_stone", 4, -1, 2, 16,40, -3500)  --was40


-------------------------
--BAD NPC
-------------------------
mobs:register_mob("mobs:badplayer1", {
	type = "monster",
	--hp_min = 35,
	hp_max = 20,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	--mesh = "3d_armor_character.b3d",
	mesh = "character.x",
	textures = {"badplayer_100.png"},
	--[[
	textures = {
	{"badplayer_1.png",
	"3d_armor_trans.png",
	minetest.registered_items["default:sword_steel"].inventory_image,}
	},
	]]		
			
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 2.5,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:jungletree",
		chance = 7,
		min = 0,
		max = 2,},
		{name = "default:sword_mese",
		chance = 5,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 0,
			max=3,},

	},
	light_resistant = true,
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	lifetimer=300,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
})
mobs:register_spawn("mobs:badplayer1", "default:cobble", 4, -1, 9000, 3, 500, -60) --was48
--mobs:register_spawn("mobs:badplayer1", "group:cracky", 4, -1, 9000, 3, 500, -60) --was48



if minetest.setting_get("log_mods") then
	minetest.log("action", "mobs loaded")
end
