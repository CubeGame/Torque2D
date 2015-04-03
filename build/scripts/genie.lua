-------------------------------------------------------------------------------
-- genie.lua
-- Main entry point for the project generator
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

solution "Torque2DSolution"
   startproject "Engine"
   configurations { "Release", "Debug" }
   language "C++"

   -- Platform support
   if os.get() == "windows" then
      -- Torque2D officially supports x32 and x64 on windows
      platforms { "x32", "x64" }
   elseif os.get() == "macosx" then
      -- Universal32 is a FAT binary of Intel x86 and PowerPC32
      platforms { "x32" } --, "x64", "universal32" }
   else
      -- Torque2D doesn't officially support x64 on Unix/GNU_Linux
      platforms { "x32" }
   end

   -- Set location of build files
   BUILD_LOCATION = "";
   if os.get() == "windows" then
      BUILD_LOCATION = "../Windows";
   elseif os.get() == "macosx" then
      BUILD_LOCATION = "../OSX";
   elseif os.get() == "linux" then
      BUILD_LOCATION = "../GNU_Linux";
   elseif os.get() == "bsd" then
      BUILD_LOCATION = "../BSD";
   else
      BUILD_LOCATION = "../Unspecified";
   end
   print (BUILD_LOCATION);
   location (BUILD_LOCATION)

   -- Main engine project
   dofile("engine.lua");

   -- Libraries
   group "Libraries"
   dofile("jpeg.lua");
   dofile("png.lua");
   dofile("zlib.lua");