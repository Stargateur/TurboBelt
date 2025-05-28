require("util")

data:extend({ {
  type = "corpse",
  name = "turbo-transport-belt-remnants",
  icon = "__TurboBelt__/graphics/icons/turbo-transport-belt.png",
  flags = { "placeable-neutral", "not-on-map" },
  hidden_in_factoriopedia = true,
  subgroup = "belt-remnants",
  order = "a-c-a",
  selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
  tile_width = 1,
  tile_height = 1,
  selectable_in_game = false,
  time_before_removed = 60 * 60 * 15,   -- 15 minutes
  expires = false,
  final_render_layer = "remnants",
  remove_on_tile_placement = false,
  animation = make_rotated_animation_variations_from_sheet(2,
    {
      filename = "__TurboBelt__/graphics/turbo-transport-belt/remnants/turbo-transport-belt-remnants.png",
      line_length = 1,
      width = 106,
      height = 102,
      direction_count = 4,
      shift = util.by_pixel(1, -0.5),
      scale = 0.5
    })
},
  {
    type = "corpse",
    name = "turbo-splitter-remnants",
    icon = "__TurboBelt__/graphics/icons/turbo-splitter.png",
    flags = { "placeable-neutral", "not-on-map" },
    hidden_in_factoriopedia = true,
    subgroup = "belt-remnants",
    order = "a-i-a",
    selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
    tile_width = 2,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = "__TurboBelt__/graphics/turbo-splitter/remnants/turbo-splitter-remnants.png",
      line_length = 1,
      width = 190,
      height = 190,
      direction_count = 4,
      shift = util.by_pixel(3.5, 1.5),
      scale = 0.5
    }
  },
  {
    type = "corpse",
    name = "turbo-underground-belt-remnants",
    icon = "__TurboBelt__/graphics/icons/turbo-underground-belt.png",
    flags = { "placeable-neutral", "not-on-map", "building-direction-8-way" },
    hidden_in_factoriopedia = true,
    subgroup = "belt-remnants",
    order = "a-f-a",
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = "__TurboBelt__/graphics/turbo-underground-belt/remnants/turbo-underground-belt-remnants.png",
      line_length = 1,
      width = 156,
      height = 144,
      direction_count = 8,
      shift = util.by_pixel(10.5, 3),
      scale = 0.5
    }
  }
})
