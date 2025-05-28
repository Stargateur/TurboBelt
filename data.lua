require("transport-belts")
require("particles")
require("explosions")
require("corpses")

local item_sounds = require("__base__.prototypes.item_sounds")
local kg = 1000

data:extend({ {
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
    prerequisites = { "utility-science-pack", "logistics-3" },
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
