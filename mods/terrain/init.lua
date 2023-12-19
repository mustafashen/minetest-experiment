
minetest.register_node('terrain:stone', {
  description = "mapgen_stone",
	tiles = {"stone.png"},
  groups = { oddly_breakable_by_hand = 1, cracky = 1 },
  is_ground_content = true
})

minetest.register_node("terrain:water_source", {
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "water.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 5.0,
			},
		},
		{
			name = "water.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 5.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 0,
	liquidtype = "source",
	liquid_alternative_flowing = "terrain:water_flowing",
	liquid_alternative_source = "terrain:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {},
})

minetest.register_node("terrain:water_flowing", {
	drawtype = "flowingliquid",
	waving = 3,
	special_tiles = {
		{
			name = "water_flow.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1,
			},
		},
		{
			name = "water_flow.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 0,
	liquidtype = "flowing",
	liquid_alternative_flowing = "terrain:water_flowing",
	liquid_alternative_source = "terrain:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {},
})


minetest.register_node("terrain:river_water_source", {
	drawtype = "liquid",
	tiles = {
		{
			name = "water.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "water.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 0,
	liquidtype = "source",
	liquid_alternative_flowing = "terrain:river_water_flowing",
	liquid_alternative_source = "terrain:river_water_source",
	liquid_viscosity = 1,
	-- Not renewable to avoid horizontal spread of water sources in sloping
	-- rivers that can cause water to overflow riverbanks and cause floods.
	-- River water source is instead made renewable by the 'force renew'
	-- option used in the 'bucket' mod by the river water bucket.
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {},
})

minetest.register_node("terrain:river_water_flowing", {
	drawtype = "flowingliquid",
	special_tiles = {
		{
			name = "water_flow.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1,
			},
		},
		{
			name = "water_flow.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 0,
	liquidtype = "flowing",
	liquid_alternative_flowing = "terrain:river_water_flowing",
	liquid_alternative_source = "terrain:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {},
})


-- Mapgen aliases
minetest.register_alias('mapgen_stone', 'terrain:stone')
minetest.register_alias('mapgen_water_source', 'terrain:water_source')
minetest.register_alias('mapgen_river_water_source', 'terrain:river_water_source')

