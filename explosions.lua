require("util")

local sounds = require("__base__.prototypes.entity.sounds")
local explosion_animations = require("__base__/prototypes/entity/explosion-animations")

data:extend({ {
  type = "explosion",
  name = "turbo-transport-belt-explosion-base",
  icon = "__TurboBelt__/graphics/icons/turbo-transport-belt.png",
  flags = { "not-on-map" },
  hidden = true,
  height = 0,
  animations = explosion_animations.small_dust_explosion(),
  sound = sounds.small_explosion,
  created_effect =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-trivial-smoke",
          repeat_count = 10,
          smoke_name = "small-dusty-explosion-smoke",
          offset_deviation = { { -0.4, -0.4 }, { 0.4, 0.4 } },
          initial_height = 0,
          speed_from_center = 0.008,
          speed_from_center_deviation = 0.03
        },
        {
          type = "create-particle",
          repeat_count = 1,
          particle_name = "turbo-transport-belt-metal-particle-medium",
          offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
          initial_height = 0.1,
          initial_height_deviation = 0.5,
          initial_vertical_speed = 0.09,
          initial_vertical_speed_deviation = 0.05,
          speed_from_center = 0.04,
          speed_from_center_deviation = 0.05
        },
        {
          type = "create-particle",
          repeat_count = 4,
          particle_name = "turbo-transport-belt-metal-particle-small",
          offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
          initial_height = 0.1,
          initial_height_deviation = 0.5,
          initial_vertical_speed = 0.071,
          initial_vertical_speed_deviation = 0.05,
          speed_from_center = 0.03,
          speed_from_center_deviation = 0.05
        },
        {
          type = "create-particle",
          repeat_count = 20,
          particle_name = "transport-belt-wooden-splinter-particle-medium",
          offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
          initial_height = 0.1,
          initial_height_deviation = 0.5,
          initial_vertical_speed = 0.08,
          initial_vertical_speed_deviation = 0.016,
          speed_from_center = 0.04,
          speed_from_center_deviation = 0.05
        },
        {
          type = "create-particle",
          repeat_count = 5,
          particle_name = "turbo-transport-belt-mechanical-component-particle-medium",
          offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
          initial_height = 0.1,
          initial_height_deviation = 0.32,
          initial_vertical_speed = 0.041,
          initial_vertical_speed_deviation = 0.042,
          speed_from_center = 0.01,
          speed_from_center_deviation = 0.05
        }
      }
    }
  }
},
  {
    type = "explosion",
    name = "turbo-transport-belt-explosion",
    icon = "__TurboBelt__/graphics/icons/turbo-transport-belt.png",
    flags = { "not-on-map" },
    hidden = true,
    subgroup = "belt-explosions",
    order = "b-c-a",
    animations = util.empty_sprite(),
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-explosion",
            entity_name = "turbo-transport-belt-explosion-base",
            offsets = { { 0, 0.3 } },
            offset_deviation = { { -0.25, -0.25 }, { 0.25, 0.25 } },
          },
        }
      }
    }
  },

  {
    type = "explosion",
    name = "turbo-underground-belt-explosion-base",
    icon = "__TurboBelt__/graphics/icons/turbo-underground-belt.png",
    flags = { "not-on-map" },
    hidden = true,
    height = 0,
    animations = explosion_animations.small_dust_explosion(),
    sound = sounds.small_explosion,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-trivial-smoke",
            repeat_count = 10,
            smoke_name = "small-dusty-explosion-smoke",
            offset_deviation = { { -0.4, -0.4 }, { 0.4, 0.4 } },
            initial_height = 0,
            speed_from_center = 0.008,
            speed_from_center_deviation = 0.03
          },
          {
            type = "create-particle",
            repeat_count = 10,
            particle_name = "express-underground-belt-metal-particle-medium",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.081,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 25,
            particle_name = "turbo-underground-belt-metal-particle-small",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.43,
            initial_vertical_speed = 0.087,
            initial_vertical_speed_deviation = 0.048,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 2,
            particle_name = "turbo-underground-belt-metal-particle-medium-green",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.042,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.02,
            speed_from_center_deviation = 0.05
          }
        }
      }
    }
  },
  {
    type = "explosion",
    name = "turbo-underground-belt-explosion",
    icon = "__TurboBelt__/graphics/icons/turbo-underground-belt.png",
    flags = { "not-on-map" },
    hidden = true,
    subgroup = "belt-explosions",
    order = "b-f-a",
    animations = util.empty_sprite(),
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-explosion",
            entity_name = "turbo-underground-belt-explosion-base",
            offsets = { { 0, 0.3 } },
            offset_deviation = { { -0.25, -0.25 }, { 0.25, 0.25 } },
          },
        }
      }
    }
  },

  {
    type = "explosion",
    name = "turbo-splitter-explosion",
    icon = "__TurboBelt__/graphics/icons/turbo-splitter.png",
    flags = { "not-on-map" },
    hidden = true,
    subgroup = "belt-explosions",
    order = "b-i-a",
    height = 0,
    animations = explosion_animations.small_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.small_explosion,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 13,
            particle_name = "turbo-splitter-metal-particle-medium",
            offset_deviation = { { -0.5, -0.5977 }, { 0.5, 0.5977 } },
            initial_height = 0.3,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.047,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 25,
            particle_name = "express-splitter-metal-particle-small",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.6,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.049,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 3,
            particle_name = "express-splitter-long-metal-particle-medium",
            offset_deviation = { { -0.6953, -0.5977 }, { 0.6953, 0.5977 } },
            initial_height = 0.4,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.072,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.03,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 2,
            particle_name = "turbo-splitter-metal-particle-big",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.05,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 3,
            particle_name = "express-splitter-mechanical-component-particle-medium",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.029,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          }
        }
      }
    }
  }
})
