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
  nextlayerid = 8,
  nextobjectid = 386,
  properties = {},
  tilesets = {
    {
      name = "dungeon_tileset",
      firstgid = 1,
      filename = "../../../../../tiled/new_tilesets/dungeon_tileset.tsx",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 64,
      image = "../../graphics/dungeon_tilesets.png",
      imagewidth = 512,
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
      tilecount = 1024,
      tiles = {}
    },
    {
      name = "collide8",
      firstgid = 1025,
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
        0, 0, 0, 0, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 0, 0, 0, 0,
        0, 0, 0, 0, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 0, 0, 0, 0,
        0, 0, 0, 0, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 427, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 491, 492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
        0, 0, 803, 815, 815, 809, 815, 815, 807, 815, 809, 815, 815, 807, 815, 815, 815, 815, 872, 815, 815, 874, 815, 872, 815, 815, 874, 815, 815, 868, 0, 0,
        0, 0, 816, 803, 815, 815, 807, 815, 809, 815, 815, 807, 815, 809, 815, 815, 815, 815, 874, 815, 872, 815, 815, 874, 815, 872, 815, 815, 868, 880, 0, 0,
        0, 0, 816, 816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 681, 682, 681, 682, 681, 682, 681, 682, 681, 682, 880, 880, 0, 0,
        0, 0, 687, 805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 746, 745, 746, 745, 746, 745, 746, 745, 746, 870, 752, 0, 0,
        0, 0, 805, 816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 681, 682, 681, 682, 681, 682, 880, 870, 0, 0,
        0, 0, 816, 687, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 746, 745, 746, 745, 746, 752, 880, 0, 0,
        0, 0, 687, 805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 681, 682, 681, 682, 870, 752, 0, 0,
        0, 0, 816, 816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 746, 745, 746, 549, 550, 0, 0,
        0, 0, 816, 816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 427, 417, 0, 0,
        0, 0, 816, 816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 491, 417, 0, 0,
        0, 0, 816, 816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 681, 682, 681, 682, 613, 614, 0, 0,
        0, 0, 751, 869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 746, 745, 746, 806, 688, 0, 0,
        0, 0, 816, 751, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 681, 682, 681, 682, 681, 682, 688, 880, 0, 0,
        0, 0, 869, 816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 746, 745, 746, 745, 746, 880, 806, 0, 0,
        0, 0, 751, 869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 681, 682, 681, 682, 681, 682, 681, 682, 681, 682, 806, 688, 0, 0,
        0, 0, 816, 816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 746, 745, 746, 745, 746, 745, 746, 745, 746, 880, 880, 0, 0,
        0, 0, 816, 867, 879, 879, 871, 879, 873, 879, 879, 871, 879, 873, 432, 428, 427, 545, 810, 879, 808, 879, 879, 810, 879, 808, 879, 879, 804, 880, 0, 0,
        0, 0, 867, 879, 879, 873, 879, 879, 871, 879, 873, 879, 879, 871, 496, 417, 417, 609, 808, 879, 879, 810, 879, 808, 879, 879, 810, 879, 879, 804, 0, 0,
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
      id = 5,
      name = "Wall_layer",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940,
        940, 929, 164, 164, 164, 801, 164, 164, 164, 164, 801, 164, 164, 813, 164, 164, 164, 164, 878, 164, 164, 866, 164, 164, 164, 164, 866, 164, 164, 164, 993, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 940,
        940, 685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 750, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 940,
        940, 811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 876, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 612, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 612, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 612, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 612, 940,
        940, 875, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 812, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 940,
        940, 749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 686, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 940,
        940, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 940,
        940, 993, 164, 164, 164, 865, 164, 164, 164, 164, 865, 164, 164, 877, 495, 495, 495, 495, 814, 164, 164, 802, 164, 164, 164, 164, 802, 164, 164, 164, 929, 940,
        940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940, 940
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "Collide",
      visible = false,
      opacity = 0.5,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 181,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 182,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 183,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 184,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 185,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 186,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 187,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 188,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 189,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 190,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 191,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 192,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 195,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 207,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 208,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 209,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 210,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 211,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 212,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 213,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 214,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 215,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 216,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 217,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 218,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 221,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 233,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 40,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 234,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 48,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 235,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 56,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 236,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 64,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 237,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 72,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 238,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 241,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 242,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 112,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 243,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 244,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 128,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 245,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 136,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 246,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 144,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 252,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 263,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 288,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 289,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 322,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 160,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 323,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 168,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 324,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 176,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 325,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 184,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 326,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 184,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 327,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 160,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 328,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 168,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 329,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 176,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 330,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 331,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 332,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 333,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 88,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 334,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 96,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 335,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 336,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 337,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 338,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 88,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 339,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 96,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 340,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 40,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 341,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 48,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 342,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 48,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 348,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 56,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 349,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 64,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 350,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 64,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 352,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 72,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 353,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 354,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 357,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 358,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 360,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 361,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 363,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 364,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 111.455,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 367,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 368,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 369,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 128,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 371,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 120,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 372,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 136,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 375,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 136,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 376,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 136,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 377,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 144,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 379,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 136,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 384,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 48,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        },
        {
          id = 385,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 48,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 1025,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "Door",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 316,
          name = "down",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 160,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 411,
          visible = true,
          properties = {}
        },
        {
          id = 317,
          name = "right",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 96,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 411,
          visible = true,
          properties = {}
        }
      }
    }
  }
}