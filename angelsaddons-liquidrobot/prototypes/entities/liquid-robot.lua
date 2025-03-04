local sounds = require("__base__/prototypes/entity/sounds")

data:extend(
  {
    {
      type = "item",
      name = "empty-liquid-bot",
      icon = "__angelsaddons-liquidrobot__/graphics/icons/bot-ico.png",
      icon_size = 32,
      flags = {},
      subgroup = "liquid-bot-items",
      order = "a",
      place_result = "empty-liquid-bot",
      stack_size = 10
    },
    {
      type = "logistic-robot",
      name = "empty-liquid-bot",
      icon = "__angelsaddons-liquidrobot__/graphics/icons/bot-ico.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
      minable = {mining_time = 0.1, result = "empty-liquid-bot"},
      max_health = 100,
      collision_box = {{0, 0}, {0, 0}},
      selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
      max_payload_size = 1,
      speed = 0.02,
      max_energy = "300kJ",
      energy_per_tick = "0.005kJ",
      speed_multiplier_when_out_of_energy = 0.8,
      energy_per_move = "0.1kJ",
      min_to_charge = 0.2,
      max_to_charge = 0.95,
      idle = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = {0, 0},
        --scale = 0.5,
        direction_count = 16
      },
      idle_with_cargo = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = {0, 0},
        --scale = 0.5,
        direction_count = 16
      },
      in_motion = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = {0, 0},
        --scale = 0.5,
        direction_count = 16,
        y = 80
      },
      in_motion_with_cargo = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = {0, 0},
        --scale = 0.5,
        direction_count = 16,
        y = 80
      },
      shadow_idle = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = {0, 0},
        direction_count = 16
      },
      shadow_idle_with_cargo = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = {0, 0},
        direction_count = 16
      },
      shadow_in_motion = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = {0, 0},
        direction_count = 16
      },
      shadow_in_motion_with_cargo = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = {0, 0},
        direction_count = 16
      },
      working_sound = sounds.flying_robot(0.5),
      cargo_centered = {0.0, 0}
    }
  }
)
