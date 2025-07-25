extends Node

enum RENDER_2D {
	NONE_NUM = 0,
	NONE_BIT = 0,
	WORLD_NUM = 1,
	WORLD_BIT = 1,
	LAYER_2_NUM = 2,
	LAYER_2_BIT = 2,
	LAYER_3_NUM = 3,
	LAYER_3_BIT = 4,
	LAYER_4_NUM = 4,
	LAYER_4_BIT = 8,
	LAYER_5_NUM = 5,
	LAYER_5_BIT = 16,
	LAYER_6_NUM = 6,
	LAYER_6_BIT = 32,
	LAYER_7_NUM = 7,
	LAYER_7_BIT = 64,
	LAYER_8_NUM = 8,
	LAYER_8_BIT = 128,
	LAYER_9_NUM = 9,
	LAYER_9_BIT = 256,
	GAME_BOUNDS_NUM = 10,
	GAME_BOUNDS_BIT = 512,
	LAYER_11_NUM = 11,
	LAYER_11_BIT = 1024,
	LAYER_12_NUM = 12,
	LAYER_12_BIT = 2048,
	LAYER_13_NUM = 13,
	LAYER_13_BIT = 4096,
	LAYER_14_NUM = 14,
	LAYER_14_BIT = 8192,
	LAYER_15_NUM = 15,
	LAYER_15_BIT = 16384,
	LAYER_16_NUM = 16,
	LAYER_16_BIT = 32768,
	LAYER_17_NUM = 17,
	LAYER_17_BIT = 65536,
	LAYER_18_NUM = 18,
	LAYER_18_BIT = 131072,
	LAYER_19_NUM = 19,
	LAYER_19_BIT = 262144,
	LAYER_20_NUM = 20,
	LAYER_20_BIT = 524288,
}

enum PHYSICS_2D {
	NONE_NUM = 0,
	NONE_BIT = 0,
	WORLD_NUM = 1,
	WORLD_BIT = 1,
	LAYER_2_NUM = 2,
	LAYER_2_BIT = 2,
	LAYER_3_NUM = 3,
	LAYER_3_BIT = 4,
	LAYER_4_NUM = 4,
	LAYER_4_BIT = 8,
	LAYER_5_NUM = 5,
	LAYER_5_BIT = 16,
	LAYER_6_NUM = 6,
	LAYER_6_BIT = 32,
	LAYER_7_NUM = 7,
	LAYER_7_BIT = 64,
	LAYER_8_NUM = 8,
	LAYER_8_BIT = 128,
	LAYER_9_NUM = 9,
	LAYER_9_BIT = 256,
	GAME_BOUNDS_NUM = 10,
	GAME_BOUNDS_BIT = 512,
	LAYER_11_NUM = 11,
	LAYER_11_BIT = 1024,
	LAYER_12_NUM = 12,
	LAYER_12_BIT = 2048,
	LAYER_13_NUM = 13,
	LAYER_13_BIT = 4096,
	LAYER_14_NUM = 14,
	LAYER_14_BIT = 8192,
	LAYER_15_NUM = 15,
	LAYER_15_BIT = 16384,
	LAYER_16_NUM = 16,
	LAYER_16_BIT = 32768,
	LAYER_17_NUM = 17,
	LAYER_17_BIT = 65536,
	LAYER_18_NUM = 18,
	LAYER_18_BIT = 131072,
	LAYER_19_NUM = 19,
	LAYER_19_BIT = 262144,
	LAYER_20_NUM = 20,
	LAYER_20_BIT = 524288,
	LAYER_21_NUM = 21,
	LAYER_21_BIT = 1048576,
	LAYER_22_NUM = 22,
	LAYER_22_BIT = 2097152,
	LAYER_23_NUM = 23,
	LAYER_23_BIT = 4194304,
	LAYER_24_NUM = 24,
	LAYER_24_BIT = 8388608,
	LAYER_25_NUM = 25,
	LAYER_25_BIT = 16777216,
	LAYER_26_NUM = 26,
	LAYER_26_BIT = 33554432,
	LAYER_27_NUM = 27,
	LAYER_27_BIT = 67108864,
	LAYER_28_NUM = 28,
	LAYER_28_BIT = 134217728,
	LAYER_29_NUM = 29,
	LAYER_29_BIT = 268435456,
	LAYER_30_NUM = 30,
	LAYER_30_BIT = 536870912,
	LAYER_31_NUM = 31,
	LAYER_31_BIT = 1073741824,
	LAYER_32_NUM = 32,
	LAYER_32_BIT = 2147483648,
}

enum NAVIGATION_2D {
	NONE_NUM = 0,
	NONE_BIT = 0,
	WORLD_NUM = 1,
	WORLD_BIT = 1,
	LAYER_2_NUM = 2,
	LAYER_2_BIT = 2,
	LAYER_3_NUM = 3,
	LAYER_3_BIT = 4,
	LAYER_4_NUM = 4,
	LAYER_4_BIT = 8,
	LAYER_5_NUM = 5,
	LAYER_5_BIT = 16,
	LAYER_6_NUM = 6,
	LAYER_6_BIT = 32,
	LAYER_7_NUM = 7,
	LAYER_7_BIT = 64,
	LAYER_8_NUM = 8,
	LAYER_8_BIT = 128,
	LAYER_9_NUM = 9,
	LAYER_9_BIT = 256,
	GAME_BOUNDS_NUM = 10,
	GAME_BOUNDS_BIT = 512,
	LAYER_11_NUM = 11,
	LAYER_11_BIT = 1024,
	LAYER_12_NUM = 12,
	LAYER_12_BIT = 2048,
	LAYER_13_NUM = 13,
	LAYER_13_BIT = 4096,
	LAYER_14_NUM = 14,
	LAYER_14_BIT = 8192,
	LAYER_15_NUM = 15,
	LAYER_15_BIT = 16384,
	LAYER_16_NUM = 16,
	LAYER_16_BIT = 32768,
	LAYER_17_NUM = 17,
	LAYER_17_BIT = 65536,
	LAYER_18_NUM = 18,
	LAYER_18_BIT = 131072,
	LAYER_19_NUM = 19,
	LAYER_19_BIT = 262144,
	LAYER_20_NUM = 20,
	LAYER_20_BIT = 524288,
	LAYER_21_NUM = 21,
	LAYER_21_BIT = 1048576,
	LAYER_22_NUM = 22,
	LAYER_22_BIT = 2097152,
	LAYER_23_NUM = 23,
	LAYER_23_BIT = 4194304,
	LAYER_24_NUM = 24,
	LAYER_24_BIT = 8388608,
	LAYER_25_NUM = 25,
	LAYER_25_BIT = 16777216,
	LAYER_26_NUM = 26,
	LAYER_26_BIT = 33554432,
	LAYER_27_NUM = 27,
	LAYER_27_BIT = 67108864,
	LAYER_28_NUM = 28,
	LAYER_28_BIT = 134217728,
	LAYER_29_NUM = 29,
	LAYER_29_BIT = 268435456,
	LAYER_30_NUM = 30,
	LAYER_30_BIT = 536870912,
	LAYER_31_NUM = 31,
	LAYER_31_BIT = 1073741824,
	LAYER_32_NUM = 32,
	LAYER_32_BIT = 2147483648,
}

enum RENDER_3D {
	NONE_NUM = 0,
	NONE_BIT = 0,
	LAYER_1_NUM = 1,
	LAYER_1_BIT = 1,
	LAYER_2_NUM = 2,
	LAYER_2_BIT = 2,
	LAYER_3_NUM = 3,
	LAYER_3_BIT = 4,
	LAYER_4_NUM = 4,
	LAYER_4_BIT = 8,
	LAYER_5_NUM = 5,
	LAYER_5_BIT = 16,
	LAYER_6_NUM = 6,
	LAYER_6_BIT = 32,
	LAYER_7_NUM = 7,
	LAYER_7_BIT = 64,
	LAYER_8_NUM = 8,
	LAYER_8_BIT = 128,
	LAYER_9_NUM = 9,
	LAYER_9_BIT = 256,
	LAYER_10_NUM = 10,
	LAYER_10_BIT = 512,
	LAYER_11_NUM = 11,
	LAYER_11_BIT = 1024,
	LAYER_12_NUM = 12,
	LAYER_12_BIT = 2048,
	LAYER_13_NUM = 13,
	LAYER_13_BIT = 4096,
	LAYER_14_NUM = 14,
	LAYER_14_BIT = 8192,
	LAYER_15_NUM = 15,
	LAYER_15_BIT = 16384,
	LAYER_16_NUM = 16,
	LAYER_16_BIT = 32768,
	LAYER_17_NUM = 17,
	LAYER_17_BIT = 65536,
	LAYER_18_NUM = 18,
	LAYER_18_BIT = 131072,
	LAYER_19_NUM = 19,
	LAYER_19_BIT = 262144,
	LAYER_20_NUM = 20,
	LAYER_20_BIT = 524288,
}

enum PHYSICS_3D {
	NONE_NUM = 0,
	NONE_BIT = 0,
	LAYER_1_NUM = 1,
	LAYER_1_BIT = 1,
	LAYER_2_NUM = 2,
	LAYER_2_BIT = 2,
	LAYER_3_NUM = 3,
	LAYER_3_BIT = 4,
	LAYER_4_NUM = 4,
	LAYER_4_BIT = 8,
	LAYER_5_NUM = 5,
	LAYER_5_BIT = 16,
	LAYER_6_NUM = 6,
	LAYER_6_BIT = 32,
	LAYER_7_NUM = 7,
	LAYER_7_BIT = 64,
	LAYER_8_NUM = 8,
	LAYER_8_BIT = 128,
	LAYER_9_NUM = 9,
	LAYER_9_BIT = 256,
	LAYER_10_NUM = 10,
	LAYER_10_BIT = 512,
	LAYER_11_NUM = 11,
	LAYER_11_BIT = 1024,
	LAYER_12_NUM = 12,
	LAYER_12_BIT = 2048,
	LAYER_13_NUM = 13,
	LAYER_13_BIT = 4096,
	LAYER_14_NUM = 14,
	LAYER_14_BIT = 8192,
	LAYER_15_NUM = 15,
	LAYER_15_BIT = 16384,
	LAYER_16_NUM = 16,
	LAYER_16_BIT = 32768,
	LAYER_17_NUM = 17,
	LAYER_17_BIT = 65536,
	LAYER_18_NUM = 18,
	LAYER_18_BIT = 131072,
	LAYER_19_NUM = 19,
	LAYER_19_BIT = 262144,
	LAYER_20_NUM = 20,
	LAYER_20_BIT = 524288,
	LAYER_21_NUM = 21,
	LAYER_21_BIT = 1048576,
	LAYER_22_NUM = 22,
	LAYER_22_BIT = 2097152,
	LAYER_23_NUM = 23,
	LAYER_23_BIT = 4194304,
	LAYER_24_NUM = 24,
	LAYER_24_BIT = 8388608,
	LAYER_25_NUM = 25,
	LAYER_25_BIT = 16777216,
	LAYER_26_NUM = 26,
	LAYER_26_BIT = 33554432,
	LAYER_27_NUM = 27,
	LAYER_27_BIT = 67108864,
	LAYER_28_NUM = 28,
	LAYER_28_BIT = 134217728,
	LAYER_29_NUM = 29,
	LAYER_29_BIT = 268435456,
	LAYER_30_NUM = 30,
	LAYER_30_BIT = 536870912,
	LAYER_31_NUM = 31,
	LAYER_31_BIT = 1073741824,
	LAYER_32_NUM = 32,
	LAYER_32_BIT = 2147483648,
}

enum NAVIGATION_3D {
	NONE_NUM = 0,
	NONE_BIT = 0,
	LAYER_1_NUM = 1,
	LAYER_1_BIT = 1,
	LAYER_2_NUM = 2,
	LAYER_2_BIT = 2,
	LAYER_3_NUM = 3,
	LAYER_3_BIT = 4,
	LAYER_4_NUM = 4,
	LAYER_4_BIT = 8,
	LAYER_5_NUM = 5,
	LAYER_5_BIT = 16,
	LAYER_6_NUM = 6,
	LAYER_6_BIT = 32,
	LAYER_7_NUM = 7,
	LAYER_7_BIT = 64,
	LAYER_8_NUM = 8,
	LAYER_8_BIT = 128,
	LAYER_9_NUM = 9,
	LAYER_9_BIT = 256,
	LAYER_10_NUM = 10,
	LAYER_10_BIT = 512,
	LAYER_11_NUM = 11,
	LAYER_11_BIT = 1024,
	LAYER_12_NUM = 12,
	LAYER_12_BIT = 2048,
	LAYER_13_NUM = 13,
	LAYER_13_BIT = 4096,
	LAYER_14_NUM = 14,
	LAYER_14_BIT = 8192,
	LAYER_15_NUM = 15,
	LAYER_15_BIT = 16384,
	LAYER_16_NUM = 16,
	LAYER_16_BIT = 32768,
	LAYER_17_NUM = 17,
	LAYER_17_BIT = 65536,
	LAYER_18_NUM = 18,
	LAYER_18_BIT = 131072,
	LAYER_19_NUM = 19,
	LAYER_19_BIT = 262144,
	LAYER_20_NUM = 20,
	LAYER_20_BIT = 524288,
	LAYER_21_NUM = 21,
	LAYER_21_BIT = 1048576,
	LAYER_22_NUM = 22,
	LAYER_22_BIT = 2097152,
	LAYER_23_NUM = 23,
	LAYER_23_BIT = 4194304,
	LAYER_24_NUM = 24,
	LAYER_24_BIT = 8388608,
	LAYER_25_NUM = 25,
	LAYER_25_BIT = 16777216,
	LAYER_26_NUM = 26,
	LAYER_26_BIT = 33554432,
	LAYER_27_NUM = 27,
	LAYER_27_BIT = 67108864,
	LAYER_28_NUM = 28,
	LAYER_28_BIT = 134217728,
	LAYER_29_NUM = 29,
	LAYER_29_BIT = 268435456,
	LAYER_30_NUM = 30,
	LAYER_30_BIT = 536870912,
	LAYER_31_NUM = 31,
	LAYER_31_BIT = 1073741824,
	LAYER_32_NUM = 32,
	LAYER_32_BIT = 2147483648,
}

enum AVOIDANCE {
	NONE_NUM = 0,
	NONE_BIT = 0,
	LAYER_1_NUM = 1,
	LAYER_1_BIT = 1,
	LAYER_2_NUM = 2,
	LAYER_2_BIT = 2,
	LAYER_3_NUM = 3,
	LAYER_3_BIT = 4,
	LAYER_4_NUM = 4,
	LAYER_4_BIT = 8,
	LAYER_5_NUM = 5,
	LAYER_5_BIT = 16,
	LAYER_6_NUM = 6,
	LAYER_6_BIT = 32,
	LAYER_7_NUM = 7,
	LAYER_7_BIT = 64,
	LAYER_8_NUM = 8,
	LAYER_8_BIT = 128,
	LAYER_9_NUM = 9,
	LAYER_9_BIT = 256,
	LAYER_10_NUM = 10,
	LAYER_10_BIT = 512,
	LAYER_11_NUM = 11,
	LAYER_11_BIT = 1024,
	LAYER_12_NUM = 12,
	LAYER_12_BIT = 2048,
	LAYER_13_NUM = 13,
	LAYER_13_BIT = 4096,
	LAYER_14_NUM = 14,
	LAYER_14_BIT = 8192,
	LAYER_15_NUM = 15,
	LAYER_15_BIT = 16384,
	LAYER_16_NUM = 16,
	LAYER_16_BIT = 32768,
	LAYER_17_NUM = 17,
	LAYER_17_BIT = 65536,
	LAYER_18_NUM = 18,
	LAYER_18_BIT = 131072,
	LAYER_19_NUM = 19,
	LAYER_19_BIT = 262144,
	LAYER_20_NUM = 20,
	LAYER_20_BIT = 524288,
	LAYER_21_NUM = 21,
	LAYER_21_BIT = 1048576,
	LAYER_22_NUM = 22,
	LAYER_22_BIT = 2097152,
	LAYER_23_NUM = 23,
	LAYER_23_BIT = 4194304,
	LAYER_24_NUM = 24,
	LAYER_24_BIT = 8388608,
	LAYER_25_NUM = 25,
	LAYER_25_BIT = 16777216,
	LAYER_26_NUM = 26,
	LAYER_26_BIT = 33554432,
	LAYER_27_NUM = 27,
	LAYER_27_BIT = 67108864,
	LAYER_28_NUM = 28,
	LAYER_28_BIT = 134217728,
	LAYER_29_NUM = 29,
	LAYER_29_BIT = 268435456,
	LAYER_30_NUM = 30,
	LAYER_30_BIT = 536870912,
	LAYER_31_NUM = 31,
	LAYER_31_BIT = 1073741824,
	LAYER_32_NUM = 32,
	LAYER_32_BIT = 2147483648,
}
