# Copyright (c) 2017 Andri Lim
#
# Distributed under the MIT license
# (See accompanying file LICENSE.txt)
#
#-----------------------------------------

when defined(MACOSX):
  const FT_LIB_NAME* = "libfreetype(-6|.6|).dylib"
elif defined(UNIX):
  const FT_LIB_NAME* = "libfreetype.so.6"
else:
  const FT_LIB_NAME* = "libfreetype-6.dll"

when defined(windows):
  {.pragma: ftimport, cdecl, importc, dynlib: FT_LIB_NAME.}
  {.pragma: ftcallback, cdecl.}
else:
  {.pragma: ftimport, cdecl, importc, dynlib: FT_LIB_NAME.}
  {.pragma: ftcallback, cdecl.}
