# Copyright (c) 2017 Andri Lim
#
# Distributed under the MIT license
# (See accompanying file LICENSE.txt)
#
#-----------------------------------------

import freetype
include ftimport

proc FT_Get_Font_Format*(face: FT_Face): ptr cchar {.ftimport.}

proc FT_Get_X11_Font_Format*(face: FT_Face): ptr cchar {.ftimport.}
