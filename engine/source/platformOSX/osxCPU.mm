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

#include "platformOSX/platformOSX.h"
#include "console/console.h"

#import <CoreFoundation/CoreFoundation.h>

//-----------------------------------------------------------------------------
void Processor::init()
{
   // get OSX version and display it in the console.
   // Gestalt has been deprecated since OSX Mountain Lion, and has pretty much
   // stopped working on OSX Yosemite. Because of this, we have to make use of
   // NSProcessInfo now.
   // Availability: Mac OS 10.2 or greater.
   NSString *osVersionString = [[NSProcessInfo processInfo] operatingSystemVersionString];
   Con::printf("Mac OSX Version: %s", [osVersionString UTF8String]);
   
   Con::printf("CPU initialization:");
   Con::printf("   Todo");
}
