# Copyright (c) 2017 Andri Lim
#
# Distributed under the MIT license
# (See accompanying file LICENSE.txt)
#
#-----------------------------------------

import freetype, fttypes, ftimage
include ftimport

proc FT_Outline_Get_BBox*(outline: ptr FT_Outline; abbox: ptr FT_BBox): FT_Error {.ftimport.}
