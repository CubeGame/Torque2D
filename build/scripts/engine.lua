-------------------------------------------------------------------------------
-- engine.lua
--
-- References were used from Andrew Mac's Torque6 engine, which is under
-- the same license (MIT)
-- https://github.com/andr3wmac/Torque6
-- Copyright (c) 2015 Andrew Mac
--
-- Copyright (c) 2015 Jeff Hutchinson
-- Copyright (c) 2015 Adric Blake
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to
-- deal in the Software without restriction, including without limitation the
-- rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
-- sell copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-- FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
-- IN THE SOFTWARE.
-------------------------------------------------------------------------------

project "Engine"
   targetname "Engine"
   language "C++"
   kind "WindowedApp"
   targetdir "../../"

   includedirs {
      "../../engine/source",
      "../../engine/lib/ljpeg",
      "../../engine/lib/lpng",
      "../../engine/lib/zlib",
   }

   files {
      "../../engine/source/algorithm/**",
      "../../engine/source/audio/**",
      "../../engine/source/collection/**",
      "../../engine/source/component/**",
      "../../engine/source/console/**",
      "../../engine/source/debug/**",
      "../../engine/source/delegates/**",
      "../../engine/source/game/**",
      "../../engine/source/graphics/**",
      "../../engine/source/gui/**",
      "../../engine/source/input/**",
      "../../engine/source/io/**",
      "../../engine/source/math/*.cpp",
      "../../engine/source/math/*.cc",
      "../../engine/source/math/*.h",
      "../../engine/source/memory/**",
      "../../engine/source/messaging/**",
      "../../engine/source/network/**",
      "../../engine/source/platform/**",
      "../../engine/source/sim/**",
      "../../engine/source/string/**",
      "../../engine/source/utility/**",
      "../../engine/source/torqueConfig.h",
   }

   links {
      "JPEG",
      "PNG",
      "zlib",
   }

   -- Platform specific files for Windows
   configuration "windows"
      includedirs {
         "../../engine/lib/openal/win32",
      }
      files {
         "../../engine/source/platformWin32/**",
         "../../engine/source/**.asm",
      }
      removefiles {
         "../../engine/source/platform/platformNetAsync.unix.cc",
      }

   -- Platform specific files for OSX
   configuration "macosx"
      files {
         "../../engine/source/platformOSX/**",
         "../../engine/source/**.mm",
         "../../engine/source/**.m",
      }
      removefiles {
      	"../../engine/source/math/mMathAMD.cc",
      	"../../engine/source/math/mMathSSE.cc",
      }

   -- Platform specific files for BSD and Linux based systems
   configuration "linux or bsd"
      files {
         "../../engine/source/platformX86Unix/**",
      }

   -- Platform specific files for Linux based systems
   configuration "linux"
      includedirs {
         "../../engine/lib/openal/LINUX",
      }

   -- Platform specific files for FreeBSD
   configuration "bsd"
      includedirs {
         "../../engine/lib/openal/FreeBSD"
      }

   configuration "Debug"
      targetname "Game_DEBUG"
      defines {
         "_DEBUG",
         "TORQUE_DEBUG",
         "TORQUE_ENABLE_PROFILER",
         "TORQUE_DEBUG_GUARD",
      }
      flags   { "Symbols" }

   configuration "Release"
      defines { "NDEBUG" }
      flags   { "OptimizeSpeed" }

   configuration "vs*"
      defines      { "_CRT_SECURE_NO_WARNINGS", "UNICODE" }
      flags        { "NoNativeWChar", "StaticRuntime" }
      buildoptions { "/wd4100", "/wd4800" }

   configuration "windows"
      targetdir "../Windows"
      links {
         "COMCTL32",
         "COMDLG32",
         "USER32",
         "ADVAPI32",
         "GDI32",
         "RPCRT4",
         "WINMM",
         "WSOCK32",
         "vfw32",
         "Imm32",
         "shell32",
         "shlwapi",
         "ole32",
         "opengl32",
      }

   configuration "linux"
      links { "dl" }

   configuration "macosx"
      defines { }
      links {
      	"AppKit.framework",
         "Cocoa.framework",
         "CoreData.framework",
         "CoreServices.framework",
         "Foundation.framework",
         "OpenAL.framework",
         "OpenGL.framework",
      }

   	-- Include the plist and language files
   	files {
   		"../../engine/resources/**",
   	}

   configuration { "macosx", "gmake" }
      buildoptions {"-mmacosx-version-min=10.4" }
      linkoptions  {"-mmacosx-version-min=10.4" }