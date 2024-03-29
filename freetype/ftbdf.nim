# Copyright (c) 2017 Andri Lim
#
# Distributed under the MIT license
# (See accompanying file LICENSE.txt)
#
#-----------------------------------------

import fttypes, freetype
include ftimport

type
  INNER_C_UNION_3982941592* {.union.} = object
    atom*: ptr cchar
    integer*: FT_Int32
    cardinal*: FT_UInt32

  BDF_PropertyType* = enum
    BDF_PROPERTY_TYPE_NONE = 0, BDF_PROPERTY_TYPE_ATOM = 1,
    BDF_PROPERTY_TYPE_INTEGER = 2, BDF_PROPERTY_TYPE_CARDINAL = 3

  BDF_Property* = ptr BDF_PropertyRec

  BDF_PropertyRec* = object
    typ*: BDF_PropertyType
    u*: INNER_C_UNION_3982941592

proc FT_Get_BDF_Charset_ID*(face: FT_Face; acharset_encoding: ptr cstring;
                           acharset_registry: ptr cstring): FT_Error {.ftimport.}
proc FT_Get_BDF_Property*(face: FT_Face; prop_name: cstring;
                         aproperty: var BDF_PropertyRec): FT_Error {.ftimport.}
