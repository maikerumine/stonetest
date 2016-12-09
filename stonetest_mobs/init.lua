dofile(minetest.get_modpath("stonetest_mobs").."/api.lua")

--Andrey created mob for his world needs
--maikerumine edited Andrey's mobs for his world needs.

mobs:register_mob("stonetest_mobs:griefer_ghost", {
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
		{name = "default:obsidian",
		chance = 30,
		min = 1,
		max = 2,
		},
	},

	bone_drops = {
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
		{name = "default:obsidian",
		chance = 30,
		min = 1,
		max = 2,
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
mobs:register_spawn_near("stonetest_mobs:griefer_ghost", "default:stone", 4, -1, 2)

mobs:register_mob("stonetest_mobs:stone_monster", {
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
		{name = "default:torch",
		chance = 3,
		min = 2,
		max = 5,},
	},
	
	bone_drops = {
		{name = "default:mossycobble",
		chance = 3,
		min = 2,
		max = 5,},
		{name = "default:torch",
		chance = 3,
		min = 2,
		max = 5,},
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
mobs:register_spawn("stonetest_mobs:stone_monster", "default:stone", 3, -1, 9000, 48, 500, 0) --was48

mobs:register_mob("stonetest_mobs:desert_stone_monster", {
	type = "monster",
	hp_max = 35,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {"mobs_stone_monster.png^[colorize:red:48"},
	visual_size = {x=3, y=2.6},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2.8,
	damage = 2,
	
	drops = {
		{name = "default:desert_cobble",
		chance = 3,
		min = 2,
		max = 5,},
		{name = "default:iron_lump",
		chance = 3,
		min = 2,
		max = 5,},
	},
	
	bone_drops = {
		{name = "default:desert_cobble",
		chance = 3,
		min = 2,
		max = 5,},
		{name = "default:iron_lump",
		chance = 3,
		min = 2,
		max = 5,},
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
mobs:register_spawn("stonetest_mobs:desert_stone_monster", "default:desert_stone", 3, -1, 9000, 48, 500, 0) --was48


-------------------------
--BAD NPC
-------------------------
mobs:register_mob("stonetest_mobs:Flowermon", {
	type = "monster",
	--hp_min = 35,
	hp_max = 30,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {
	"character_32.png",
	"3d_armor_trans.png",
	minetest.registered_items["default:sword_steel"].inventory_image,
	},	
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
	bone_drops = {
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
	armor = 80,
	drawtype = "front",
	water_damage = 5,
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
mobs:register_spawn("stonetest_mobs:Flowermon", "default:sandstonebrick", 4, -1, 6000, 1, 500, -60) --was48


mobs:register_mob("stonetest_mobs:jack", {
	type = "monster",
	hp_max = 25,
	collisionbox = {-0.75, -0.75, -0.75, 0.75, 0.75, 0.75},
	visual_size = {x=1.5, y=1.5},

	textures = {
	"default_stone_brick.png",  --top
	"default_stone_brick.png",	--bottom
	"default_stone_brick.png",	--side
	"default_stone_brick.png",	--side
	"default_stone_brick.png^default_bush_stem.png",	--front
	"default_stone_brick.png"	--rear
	},
	visual = "cube",
	--blood_texture ="default_stone_brick.png",
	--rotate = 270,
	makes_footstep_sound = true,
	walk_velocity = .8,
	run_velocity = 3.1,
	jump = true,
	damage = 3,
	armor = 100,
	drops = {
		{name = "default:stone",
		chance = 2,
		min = 1,
		max = 4,},
		{name = "default:apple",
		chance = 3,
		min = 0,
		max = 5,},
	},
	bone_drops = {
		{name = "default:stone",
		chance = 2,
		min = 1,
		max = 4,},
		{name = "default:apple",
		chance = 3,
		min = 0,
		max = 5,},	
	},
	
	animation = {
		speed_normal = 24,
		speed_run = 48,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		hurt_start = 64,
		hurt_end = 86,
		death_start = 88,
		death_end = 118,
	},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 10,
	light_damage = 10,
	view_range = 16,
	attack_type = "dogfight",
	lifetimer=300,
	--[[
	on_die =function(self, pos)
		lavasmall = minetest.add_entity(self.object:getpos(), "mobs:stone_monster")
		lavasmall = minetest.add_entity(self.object:getpos(), "mobs:stone_monster")
			ent = lavasmall:get_luaentity()
			end
			]]
})
mobs:register_spawn("stonetest_mobs:jack",  "default:cobble", 4, -1, 9000, 2, 500, 0)

--[[
minetest.register_node("stonetest_mobs:cursed_stone", {
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
	output = 'stonetest_mobs:cursed_stone',
	recipe = {
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
		{'default:obsidian', 'default:goldblock', 'default:obsidian'},
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
	}
})
]]

--function mobs:register_spawn_near(name, nodes, max_light, min_light, tries)
--mobs:register_spawn("mobs:griefer_ghost", "mobs:cursed_stone", 4, -1, 2, 16,500, -500)  --was40
mobs:register_spawn("stonetest_mobs:griefer_ghost", "mobs:cursed_stone", 4, -1, 2, 16,40, -500)  --was40


if minetest.setting_get("log_mods") then
	minetest.log("action", "mobs loaded")
end
