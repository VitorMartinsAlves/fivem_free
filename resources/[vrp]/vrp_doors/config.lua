local cfg = {}

cfg.list = {
	[1] = { text = true, hash = 631614199, ['x'] = 461.86, ['y'] = -993.68, ['z'] = 24.91, lock = true, perm = "policia.permissao" }, 
	[2] = { text = true, hash = 631614199, ['x'] = 461.84, ['y'] = -998.37, ['z'] = 24.91, lock = true, perm = "policia.permissao" },
	[3] = { text = true, hash = 631614199, ['x'] = 461.83, ['y'] = -1002.08, ['z'] = 24.91, lock = true, perm = "policia.permissao" },
	[4] = { text = true, hash = 2271212864, ['x'] = 468.29, ['y'] = -1014.15, ['z'] = 26.38, lock = true, perm = "policia.permissao", other = 5 },
	[5] = { text = true, hash = 2271212864, ['x'] = 468.96, ['y'] = -1014.09, ['z'] = 26.38, lock = true, perm = "policia.permissao", other = 4 },
	[6] = { text = true, hash = 185711165, ['x'] = 445.37, ['y'] = -989.77, ['z'] = 30.68, lock = true, perm = "policia.permissao", other = 7 },
	[7] = { text = true, hash = 185711165, ['x'] = 444.07, ['y'] = -989.77, ['z'] = 30.68, lock = true, perm = "policia.permissao", other = 6 },
	[8] = { text = true, hash = 3261965677, ['x'] = 445.65, ['y'] = -999.01, ['z'] = 30.73, lock = true, perm = "policia.permissao", other = 9 },
	[9] = { text = true, hash = 3261965677, ['x'] = 446.18, ['y'] = -999.01, ['z'] = 30.73, lock = true, perm = "policia.permissao", other = 8 },
	[10] = { text = true, hash = 3261965677, ['x'] = 468.24, ['y'] = -996.47, ['z'] = 24.92, lock = true, perm = "policia.permissao" },
	[11] = { text = true, hash = 3261965677, ['x'] = 472.52, ['y'] = -996.45, ['z'] = 24.92, lock = true, perm = "policia.permissao" },
	[12] = { text = true, hash = 1557126584, ['x'] = 450.05, ['y'] = -986.75, ['z'] = 30.68, lock = true, perm = "policia.permissao" },
	[13] = { text = true, hash = 3261965677, ['x'] = 476.8, ['y'] = -996.46, ['z'] = 24.92, lock = true, perm = "policia.permissao" },
	[14] = { text = true, hash = 3261965677, ['x'] = 481.08, ['y'] = -996.44, ['z'] = 24.92, lock = true, perm = "policia.permissao" },
	[15] = { text = true, hash = 3261965677, ['x'] = 476.02, ['y'] = -1003.52, ['z'] = 24.92, lock = true, perm = "policia.permissao" },
	[16] = { text = true, hash = 3261965677, ['x'] = 467.45, ['y'] = -1003.53, ['z'] = 24.92, lock = true, perm = "policia.permissao" },
	[17] = { text = true, hash = 3775898501, ['x'] = -453.49, ['y'] = 6011.35, ['z'] = 31.72, lock = true, perm = "policia.permissao" },
	[18] = { text = true, hash = 452874391, ['x'] = -451.63, ['y'] = 6006.86, ['z'] = 31.79, lock = true, perm = "policia.permissao" },
	[19] = { text = true, hash = 452874391, ['x'] = -446.45, ['y'] = 6001.66, ['z'] = 31.72, lock = true, perm = "policia.permissao" },
	[20] = { text = true, hash = 3283274690, ['x'] = -436.75, ['y'] = 5991.93, ['z'] = 31.72, lock = true, perm = "policia.permissao" },
	[21] = { text = true, hash = 631614199, ['x'] = -431.98, ['y'] = 6000.44, ['z'] = 31.72, lock = true, perm = "policia.permissao" },
	[22] = { text = true, hash = 631614199, ['x'] = -428.85, ['y'] = 5997.38, ['z'] = 31.72, lock = true, perm = "policia.permissao" },
	[23] = { text = true, hash = 3342610948, ['x'] = -441.78, ['y'] = 6004.28, ['z'] = 31.72, lock = true, perm = "policia.permissao" },
	[24] = { text = true, hash = 3342610948, ['x'] = -438.45, ['y'] = 6007.65, ['z'] = 31.72, lock = true, perm = "policia.permissao" },

	[25] = { text = true, hash = -770740285, ['x'] = 311.37, ['y'] = -599.51, ['z'] = 43.3, lock = true, perm = "paramedico.permissao" },
	[26] = { text = true, hash = -1143010057, ['x'] = 313.75, ['y'] = -580.07, ['z'] = 43.3, lock = true, perm = "paramedico.permissao", other = 27 },
	[27] = { text = true, hash = -1143010057, ['x'] = 314.89, ['y'] = -580.48, ['z'] = 43.3, lock = true, perm = "paramedico.permissao", other = 26 },
	[28] = { text = true, hash = -1143010057, ['x'] = 331.88, ['y'] = -573.56, ['z'] = 43.3, lock = true, perm = "paramedico.permissao", other = 29 },
	[29] = { text = true, hash = -1143010057, ['x'] = 332.31, ['y'] = -572.34, ['z'] = 43.3, lock = true, perm = "paramedico.permissao", other = 28 },
	[30] = { text = true, hash = -1143010057, ['x'] = 341.34, ['y'] = -587.6, ['z'] = 43.3, lock = false, perm = "paramedico.permissao", other = 31 },
	[31] = { text = true, hash = -1143010057, ['x'] = 342.6, ['y'] = -588.2, ['z'] = 43.3, lock = false, perm = "paramedico.permissao", other = 30 },
	[32] = { text = true, hash = -1143010057, ['x'] = 337.62, ['y'] = -584.79, ['z'] = 43.3, lock = false, perm = "paramedico.permissao", other = 33 },
	[33] = { text = true, hash = -1143010057, ['x'] = 338.04, ['y'] = -583.52, ['z'] = 43.3, lock = false, perm = "paramedico.permissao", other = 32 },
	[34] = { text = true, hash = -1143010057, ['x'] = 359.31, ['y'] = -582.11, ['z'] = 43.3, lock = false, perm = "paramedico.permissao", other = 35 },
	[35] = { text = true, hash = -1143010057, ['x'] = 358.86, ['y'] = -583.47, ['z'] = 43.3, lock = false, perm = "paramedico.permissao", other = 34 },
	[36] = { text = true, hash = -770740285, ['x'] = 340.07, ['y'] = -596.32, ['z'] = 43.3, lock = true, perm = "paramedico.permissao" },
	[37] = { text = true, hash = -770740285, ['x'] = 336.39, ['y'] = -592.99, ['z'] = 43.3, lock = true, perm = "paramedico.permissao" },
	[38] = { text = true, hash = -770740285, ['x'] = 310.25, ['y'] = -603.1, ['z'] = 43.3, lock = true, perm = "paramedico.permissao" },
	[39] = { text = true, hash = -1143010057, ['x'] = 337.66, ['y'] = -584.75, ['z'] = 48.23, lock = true, perm = "paramedico.permissao", other = 40 },
	[40] = { text = true, hash = -1143010057, ['x'] = 338.17, ['y'] = -583.55, ['z'] = 48.23, lock = true, perm = "paramedico.permissao", other = 39 },
	[41] = { text = true, hash = -1143010057, ['x'] = 332.89, ['y'] = -586.93, ['z'] = 48.23, lock = true, perm = "paramedico.permissao", other = 42 },
	[42] = { text = true, hash = -1143010057, ['x'] = 334.17, ['y'] = -587.4, ['z'] = 48.23, lock = true, perm = "paramedico.permissao", other = 41 },
	[43] = { text = true, hash = -1143010057, ['x'] = 337.78, ['y'] = -584.87, ['z'] = 74.27, lock = true, perm = "paramedico.permissao", other = 44 },
	[44] = { text = true, hash = -1143010057, ['x'] = 338.16, ['y'] = -583.52, ['z'] = 74.27, lock = true, perm = "paramedico.permissao", other = 43 },
	[45] = { text = true, hash = -1143010057, ['x'] = 318.92, ['y'] = -570.94, ['z'] = 28.9, lock = true, perm = "paramedico.permissao", other = 46 },
	[46] = { text = true, hash = -1143010057, ['x'] = 319.56, ['y'] = -569.76, ['z'] = 28.9, lock = true, perm = "paramedico.permissao", other = 45 },
	[47] = { text = true, hash = -1143010057, ['x'] = 328.12, ['y'] = -586.9, ['z'] = 28.9, lock = true, perm = "paramedico.permissao", other = 48 },
	[48] = { text = true, hash = -1143010057, ['x'] = 327.64, ['y'] = -588.39, ['z'] = 28.9, lock = true, perm = "paramedico.permissao", other = 47 },
	[49] = { text = true, hash = -1143010057, ['x'] = 349.92, ['y'] = -575.13, ['z'] = 28.9, lock = true, perm = "paramedico.permissao", other = 50 },
	[50] = { text = true, hash = -1143010057, ['x'] = 348.65, ['y'] = -574.72, ['z'] = 28.9, lock = true, perm = "paramedico.permissao", other = 49 },
	[51] = { text = true, hash = -770740285, ['x'] = 340.57, ['y'] = -586.72, ['z'] = 28.9, lock = true, perm = "paramedico.permissao" },

	[52] = { text = true, hash = -147325430, ['x'] = 97.62, ['y'] = 6328.11, ['z'] = 31.37, lock = true, perm = "grove.permissao" },
	[53] = { text = true, hash = -147325430, ['x'] = -1097.06, ['y'] = 4949.30, ['z'] = 218.64, lock = true, perm = "ballas.permissao" },
	[54] = { text = true, hash = -147325430, ['x'] = 1484.20, ['y'] = 6392.29, ['z'] = 23.45, lock = true, perm = "vagos.permissao" },

	[55] = { text = true, hash = 1901183774, ['x'] = -2667.61, ['y'] = 1325.91, ['z'] = 147.44, lock = true, perm = "cosanostra.permissao" },
	[56] = { text = true, hash = -147325430, ['x'] = -2667.38, ['y'] = 1330.10, ['z'] = 147.44, lock = true, perm = "cosanostra.permissao" },
	[57] = { text = true, hash = -1249591818, ['x'] = -2652.87, ['y'] = 1326.35, ['z'] = 147.45, lock = true, perm = "cosanostra.permissao" },

	[100] = { text = false, hash = 1504256620, ['x'] = -1002.85, ['y'] = -477.84, ['z'] = 50.02, lock = true, perm = "admin.permissao",  other = 101 },
	[101] = { text = false, hash = 262671971, ['x'] = -1002.85, ['y'] = -477.84, ['z'] = 50.02, lock = true, perm = "admin.permissao",  other = 100 },
	[102] = { text = false, hash = 262671971, ['x'] = -1002.85, ['y'] = -477.84, ['z'] = 50.02, lock = true, perm = "admin.permissao"},
	[103] = { text = true, hash = -658026477, ['x'] = -1500.78, ['y'] = 103.61, ['z'] = 55.68, lock = true, perm = "admin.permissao" },
	[104] = { text = false, hash = 749848321, ['x'] = 452.71, ['y'] = -982.58, ['z'] = 30.68, lock = false, perm = "admin.permissao" },
	[105] = { text = false, hash = 520341586, ['x'] = -14.12, ['y'] = -1441.47, ['z'] = 31.10, lock = true, perm = "admin.permissao" },
	[106] = { text = false, hash = 3687927243, ['x'] = -1150.05, ['y'] = -1521.69, ['z'] = 10.62, lock = true, perm = "admin.permissao" },
	[107] = { text = false, hash = 486670049, ['x'] = -106.93, ['y'] = -8.45, ['z'] = 70.52, lock = true, perm = "admin.permissao" },
	[108] = { text = false, hash = 308207762, ['x'] = 8.22, ['y'] = 539.46, ['z'] = 176.02, lock = true, perm = "admin.permissao" },
	[109] = { text = false, hash = 159994461, ['x'] = -816.94, ['y'] = 178.13, ['z'] = 72.22, lock = true, permn = "admin.permissao", other = 110 },
    [110] = { text = false, hash = -1686014385, ['x'] = -564.20, ['y'] = 276.59, ['z'] = 72.22, lock = true, perm = "admin.permissao", other = 109 },
    [111] = { text = false, hash = 132154435, ['x'] = 1973.54, ['y'] = 3815.41, ['z'] = 33.42, lock = true, perm = "admin.permissao" },
	[112] = { text = false, hash = 2264746914, ['x'] = -1002.85, ['y'] = -477.84, ['z'] = 50.02, lock = true, perm = "admin.permissao" },
}

return cfg