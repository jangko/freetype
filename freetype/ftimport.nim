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

when defined(emscripten):
  {.passL: "-sUSE_FREETYPE=1".}
  {.pragma: ftimport, cdecl, importc.}
elif defined(freetypeStatic):
  when defined(vcc):
    {.link: "freetype.lib".}
  else:
    {.passL: "-lfreetype".}
  
  {.pragma: ftimport, cdecl, importc.}
else:
  {.pragma: ftimport, cdecl, importc, dynlib: FT_LIB_NAME.}

{.pragma: ftcallback, cdecl.}
