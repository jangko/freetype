# Copyright (c) 2017 Andri Lim
#
# Distributed under the MIT license
# (See accompanying file LICENSE.txt)
#
#-----------------------------------------

import freetype
include ftimport

proc FT_GlyphSlot_Embolden*(slot: FT_GlyphSlot) {.ftimport.}

proc FT_GlyphSlot_Oblique*(slot: FT_GlyphSlot) {.ftimport.}
