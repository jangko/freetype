# Copyright (c) 2017 Andri Lim
#
# Distributed under the MIT license
# (See accompanying file LICENSE.txt)
#
#-----------------------------------------

import fttypes, freetype
include ftimport

type
  FT_LcdFilter* = enum
    FT_LCD_FILTER_NONE = 0, FT_LCD_FILTER_DEFAULT = 1, FT_LCD_FILTER_LIGHT = 2,
    FT_LCD_FILTER_LEGACY1 = 3, FT_LCD_FILTER_LEGACY = 16, FT_LCD_FILTER_MAX


proc FT_Library_SetLcdFilter*(library: FT_Library; filter: FT_LcdFilter): FT_Error {.ftimport.}

proc FT_Library_SetLcdFilterWeights*(library: FT_Library; weights: ptr uint8): FT_Error {.ftimport.}
