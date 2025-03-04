local sounds = require("__base__.prototypes.entity.sounds")

data:extend(
{
  {
    type = "item",
    name = "angels-construction-robot",
    icon = "__angelsindustries__/graphics/icons/construction-robot-ico.png",
    icon_size = 32,
    subgroup = "angels-cargo-bots",
    order = "a[angels-construction-robot]",
    place_result = "angels-construction-robot",
    stack_size = 50
  },
  {
    type = "construction-robot",
    name = "angels-construction-robot",
    icon = "__angelsindustries__/graphics/icons/construction-robot-ico.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "angels-construction-robot"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 1,
    speed = 0.04,
    max_energy = "1MJ",
    energy_per_tick = "0.035kJ",
    speed_multiplier_when_out_of_energy = 0.5,
    energy_per_move = "4kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_light = {intensity = 0.8, size = 3},
    idle =
    {
      filename = "__angelsindustries__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 128,
      height = 128,
      frame_count = 1,
      shift = {0, 0},
      scale = 0.5,
      direction_count = 16,
    },
    in_motion =
    {
      filename = "__angelsindustries__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 128,
      height = 128,
      frame_count = 1,
      shift = {0, 0},
      scale = 0.5,
      direction_count = 16,
      y = 128
    },
    shadow_idle =
    {
      filename = "__angelsindustries__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__angelsindustries__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16
    },
    working =
    {
      filename = "__angelsindustries__/graphics/entity/construction-robot/construction-robot-working.png",
      priority = "high",
      line_length = 2,
      width = 128,
      height = 128,
      frame_count = 2,
      shift = {0, 0},
      scale = 0.5,
      direction_count = 16,
      animation_speed = 0.3,
    },
    shadow_working =
    {
      stripes = util.multiplystripes(2,
      {
        {
          filename = "__angelsindustries__/graphics/entity/construction-robot/construction-robot-shadow.png",
          width_in_frames = 16,
          height_in_frames = 1,
        }
      }),
      priority = "high",
      width = 64,
      height = 64,
      frame_count = 2,
      shift = {0, 0},
      direction_count = 16
    },
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3,
    },
    sparks =
    {
      {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
    },
    working_sound = sounds.construction_robot(0.7),
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
  },
}
)
