return {
  version = "1.4",
  luaversion = "5.1",
  tiledversion = "1.4.3",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 32,
  height = 22,
  tilewidth = 8,
  tileheight = 8,
  nextlayerid = 5,
  nextobjectid = 610,
  properties = {},
  tilesets = {
    {
      name = "tiles-overworld",
      firstgid = 1,
      filename = "../../../../../tiled/new_tilesets/tiles-overworld.tsx",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 36,
      image = "../../graphics/tiles-overworld.png",
      imagewidth = 288,
      imageheight = 128,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 8
      },
      properties = {},
      terrains = {},
      tilecount = 576,
      tiles = {}
    },
    {
      name = "collide8",
      firstgid = 577,
      filename = "../../../../../tiled/new_tilesets/collide8.tsx",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "../../graphics/collider8.png",
      imagewidth = 8,
      imageheight = 8,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 8
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 32,
      height = 22,
      id = 2,
      name = "Water_layer",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339,
        374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375,
        338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339,
        374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375,
        338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339,
        374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375,
        338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339,
        374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375, 374, 375,
        338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339, 338, 339,
        483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484, 483, 484,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 32,
      height = 22,
      id = 1,
      name = "Ground_layer",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
        12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
        12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
        12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 32,
      height = 22,
      id = 3,
      name = "Collision_layer",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88,
        123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124,
        87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88,
        123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124,
        87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88,
        123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124,
        87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88, 87, 88,
        123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124, 123, 124
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "Collide",
      visible = false,
      opacity = 0.5,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 534,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 535,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 536,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 537,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 538,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 539,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 540,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 541,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 542,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 543,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 544,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 545,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 546,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 547,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 548,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 549,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 550,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 551,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 552,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 553,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 554,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 555,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 556,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 557,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 558,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 559,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 560,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 561,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 562,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 563,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 564,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 565,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 88,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 566,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 96,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 567,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 568,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 112,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 573,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 574,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 575,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 576,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 577,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 578,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 579,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 580,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 581,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 582,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 583,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 584,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 585,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 586,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 587,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 588,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 589,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 590,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 591,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 592,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 593,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 594,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 595,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 596,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 597,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 598,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 599,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 600,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 601,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 602,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 603,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 604,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 605,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 606,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 112,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 607,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 608,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 96,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        },
        {
          id = 609,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 88,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 577,
          visible = true,
          properties = {}
        }
      }
    }
  }
}