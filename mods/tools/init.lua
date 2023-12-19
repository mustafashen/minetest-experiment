
minetest.override_item("", {
	wield_scale = {x=1,y=10,z=2},
	tool_capabilities = {
		full_punch_interval = 10,
		max_drop_level = 0,
		groupcaps = {
			oddly_breakable_by_hand = {times={[1]=3.50}, uses=0}
		},
		damage_groups = {unarmed=1},
	}
})

minetest.register_tool("tools:pick_wood", {
	description = "Wooden Pickaxe",
	inventory_image = "default_tool_woodpick.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=0.1}, uses=10, maxlevel=1},
		},
		damage_groups = {unarmed=2},
	},
})

minetest.register_craft({
	output = "tools:pick_wood",
	recipe = {
		{"terrain:stone"}
	}
})
