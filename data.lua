require("transport-belts")
require("particles")
require("explosions")
require("corpses")

local item_sounds = require("__base__.prototypes.item_sounds")
local kg = 1000

data:extend({
  {
    type = "recipe",
    name = "turbo-transport-belt",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients =
    {
      { type = "item",  name = "uranium-238",            amount = 5 },
      { type = "item",  name = "express-transport-belt", amount = 1 },
      { type = "fluid", name = "lubricant",              amount = 20 }
    },
    results = { { type = "item", name = "turbo-transport-belt", amount = 1 } }
  },
  {
    type = "recipe",
    name = "turbo-underground-belt",
    category = "crafting-with-fluid",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      { type = "item",  name = "uranium-238",              amount = 40 },
      { type = "item",  name = "express-underground-belt", amount = 2 },
      { type = "fluid", name = "lubricant",                amount = 40 }
    },
    results = { { type = "item", name = "turbo-underground-belt", amount = 2 } }
  },
  {
    type = "recipe",
    name = "turbo-splitter",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      { type = "item",  name = "express-splitter", amount = 1 },
      { type = "item",  name = "uranium-238",      amount = 15 },
      { type = "item",  name = "processing-unit",  amount = 2 },
      { type = "fluid", name = "lubricant",        amount = 80 }
    },
    results = { { type = "item", name = "turbo-splitter", amount = 1 } }
  },
  {
    type = "recipe",
    name = "turbo-loader",
    enabled = false,
    hidden = true,
    energy_required = 20,
    ingredients =
    {
      { type = "item", name = "turbo-transport-belt", amount = 5 },
      { type = "item", name = "express-loader",       amount = 1 }
    },
    results = { { type = "item", name = "turbo-loader", amount = 1 } }
  },
  {
    type = "item",
    name = "turbo-transport-belt",
    icon = "__TurboBelt__/graphics/icons/turbo-transport-belt.png",
    subgroup = "belt",
    color_hint = { text = "4" },
    order = "a[transport-belt]-d[turbo-transport-belt]",
    inventory_move_sound = item_sounds.transport_belt_inventory_move,
    pick_sound = item_sounds.transport_belt_inventory_pickup,
    drop_sound = item_sounds.transport_belt_inventory_move,
    place_result = "turbo-transport-belt",
    stack_size = 100,
    weight = 20 * kg
  },
  {
    type = "item",
    name = "turbo-underground-belt",
    icon = "__TurboBelt__/graphics/icons/turbo-underground-belt.png",
    subgroup = "belt",
    color_hint = { text = "4" },
    order = "b[underground-belt]-d[turbo-underground-belt]",
    inventory_move_sound = item_sounds.mechanical_inventory_move,
    pick_sound = item_sounds.mechanical_inventory_pickup,
    drop_sound = item_sounds.mechanical_inventory_move,
    place_result = "turbo-underground-belt",
    stack_size = 50,
    weight = 40 * kg
  },
  {
    type = "item",
    name = "turbo-splitter",
    icon = "__TurboBelt__/graphics/icons/turbo-splitter.png",
    subgroup = "belt",
    color_hint = { text = "4" },
    order = "c[splitter]-d[turbo-splitter]",
    inventory_move_sound = item_sounds.mechanical_inventory_move,
    pick_sound = item_sounds.mechanical_inventory_pickup,
    drop_sound = item_sounds.mechanical_inventory_move,
    place_result = "turbo-splitter",
    stack_size = 50,
    weight = 40 * kg
  },
  {
    type = "item",
    name = "turbo-loader",
    icon = "__TurboBelt__/graphics/icons/turbo-loader.png",
    hidden = true,
    subgroup = "belt",
    color_hint = { text = "4" },
    order = "d[loader]-d[turbo-loader]",
    inventory_move_sound = item_sounds.mechanical_inventory_move,
    pick_sound = item_sounds.mechanical_inventory_pickup,
    drop_sound = item_sounds.mechanical_inventory_move,
    place_result = "turbo-loader",
    stack_size = 50
  },
  {
    type = "technology",
    name = "turbo-transport-belt",
    icon = "__TurboBelt__/graphics/technology/turbo-transport-belt.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "turbo-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "turbo-underground-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "turbo-splitter"
      },
    },
    prerequisites = { "utility-science-pack", "logistics-3", "uranium-processing" },
    unit =
    {
      count = 500,
      ingredients =
      {
        { "automation-science-pack", 1 },
        { "logistic-science-pack",   1 },
        { "chemical-science-pack",   1 },
        { "production-science-pack", 1 },
        { "utility-science-pack",    1 }
      },
      time = 60
    }
  }
})

if mods["aai-loaders"] then
  local recipe = {
      crafting_category = "crafting-with-fluid",
      ingredients = {
        { type = "item",  name = "aai-express-loader", amount = 1 },
        { type = "item",  name = "uranium-238",        amount = 30 },
        { type = "item",  name = "processing-unit",    amount = 4 },
        { type = "fluid", name = "lubricant",          amount = 160 }
      },
      energy_required = 2
    }
  local turbo_specs = {
    name = "turbo",
    transport_belt = "turbo-transport-belt",
    color = { 155, 182, 0 },
    fluid = "lubricant",
    fluid_per_minute = "0.25",
    technology = {
      prerequisites = { "turbo-transport-belt", "aai-express-loader", "processing-unit" },
      unit = {
        count = 500,
        ingredients = data.raw.technology["turbo-transport-belt"].unit.ingredients,
        time = 15
      }
    },
    recipe = recipe,
  }

  AAILoaders.make_tier(turbo_specs)
end

if mods["deadlock-beltboxes-loaders"] then
	-- add the upgrade for t3 only if space age is present and we're gonna be loading t4
	if data.raw["loader-1x1"]["express-transport-belt-loader"] then
		data.raw["loader-1x1"]["express-transport-belt-loader"].next_upgrade = "turbo-transport-belt-loader"
	end
	if data.raw.furnace["express-transport-belt-beltbox"] then
		data.raw.furnace["express-transport-belt-beltbox"].next_upgrade = "turbo-transport-belt-beltbox"
	end

	-- tier 4
	deadlock.add_tier({
		transport_belt      = "turbo-transport-belt",
		colour              = {r=160, g=190, b=80},
		underground_belt    = "turbo-underground-belt",
		splitter            = "turbo-splitter",
		technology          = "turbo-transport-belt",
		order               = "d",
		loader_ingredients  = {
			{name = "express-transport-belt-loader", type = "item", amount = 1},
			{name = "uranium-238", type = "item", amount = 20},
			{name = "lubricant", type = "fluid", amount = 20},
		},
		loader_category     = "crafting-with-fluid",
		beltbox_ingredients = {
			{name = "express-transport-belt-beltbox", type = "item", amount = 1},
			{name = "uranium-238", type = "item", amount = 15},
			{name = "iron-gear-wheel", type = "item", amount = 15},
			{name = "lubricant", type = "fluid", amount = 100},
		},
		beltbox_category    = "crafting-with-fluid",
		beltbox_technology  = "deadlock-stacking-4",
	})
	if data.raw.technology["deadlock-stacking-4"] then
		table.insert(data.raw.technology["deadlock-stacking-4"].prerequisites, "deadlock-stacking-3")
	end
end