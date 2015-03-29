//-----------------------------------------------------------------------------
// Copyright (c) 2013 GarageGames, LLC
// Portions Copyright (c) 2015 Jeff Hutchinson
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.
//-----------------------------------------------------------------------------

//------------------------------------------------------------------------------
// initializeCanvas
// Constructs and initializes the default canvas window.
//------------------------------------------------------------------------------

$canvasCreated = false;

function initializeCanvas(%windowName) {
   // Don't duplicate the canvas.
   if ($canvasCreated) {
      error("Cannot instantiate more than one canvas!");
      return;
   }

   videoSetGammaCorrection($pref::OpenGL::gammaCorrection);

   if (!createCanvas(%windowName)) {
      error("Canvas creation failed. Shutting down.");
      quit();
   }

   if ($pref::Video::windowedRes !$= "")
      %resolution = $pref::Video::windowedRes;
   else
      %resolution = $pref::Video::defaultResolution;

   // set the screen mode based on preferences.
   %width = getWord(%resolution, 0);
   %height = getWord(%resolution, 1);
   %bpp = getWord(%resolution, 2);
   %fullScreen = (($platform $= "windows" || $platform $= "macos")) ? !!($pref::Video::fullScreen) : false;
   setScreenMode(%width, %height, %bpp, %fullScreen);
   
   // set vertical sync status
   setVerticalSync(!$pref::Video::disableVerticalSync);

   $canvasCreated = true;
}

//------------------------------------------------------------------------------
// resetCanvas
// Forces the canvas to redraw itself.
//------------------------------------------------------------------------------

function resetCanvas() {
   if (isObject(Canvas))
      Canvas.repaint();
}