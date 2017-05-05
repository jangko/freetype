# Copyright (c) 2017 Andri Lim
#
# Distributed under the MIT license
# (See accompanying file LICENSE.txt)
#
#-----------------------------------------

import fttypes, ftsystem
include ftimport

proc FT_Stream_OpenLZW*(stream: FT_Stream; source: FT_Stream): FT_Error {.ftimport.}
