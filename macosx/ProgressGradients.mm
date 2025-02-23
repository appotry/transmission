/******************************************************************************
 * Copyright (c) 2007-2012 Transmission authors and contributors
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *****************************************************************************/

#import "ProgressGradients.h"
#import "NSApplicationAdditions.h"

@implementation ProgressGradients (Private)

+ (NSGradient*)progressGradientForRed:(CGFloat)redComponent green:(CGFloat)greenComponent blue:(CGFloat)blueComponent
{
    CGFloat const alpha = [NSUserDefaults.standardUserDefaults boolForKey:@"SmallView"] ? 0.27 : 1.0;

    NSColor* baseColor = [NSColor colorWithCalibratedRed:redComponent green:greenComponent blue:blueComponent alpha:alpha];

    NSColor* color2 = [NSColor colorWithCalibratedRed:redComponent * 0.95 green:greenComponent * 0.95 blue:blueComponent * 0.95
                                                alpha:alpha];

    NSColor* color3 = [NSColor colorWithCalibratedRed:redComponent * 0.85 green:greenComponent * 0.85 blue:blueComponent * 0.85
                                                alpha:alpha];

    return [[NSGradient alloc] initWithColorsAndLocations:baseColor, 0.0, color2, 0.5, color3, 0.5, baseColor, 1.0, nil];
}

@end

@implementation ProgressGradients

+ (NSGradient*)progressWhiteGradient
{
    if ([NSApp isDarkMode])
    {
        return [[self class] progressGradientForRed:0.1 green:0.1 blue:0.1];
    }
    else
    {
        return [[self class] progressGradientForRed:0.95 green:0.95 blue:0.95];
    }
}

+ (NSGradient*)progressGrayGradient
{
    if ([NSApp isDarkMode])
    {
        return [[self class] progressGradientForRed:0.35 green:0.35 blue:0.35];
    }
    else
    {
        return [[self class] progressGradientForRed:0.7 green:0.7 blue:0.7];
    }
}

+ (NSGradient*)progressLightGrayGradient
{
    if ([NSApp isDarkMode])
    {
        return [[self class] progressGradientForRed:0.2 green:0.2 blue:0.2];
    }
    else
    {
        return [[self class] progressGradientForRed:0.87 green:0.87 blue:0.87];
    }
}

+ (NSGradient*)progressBlueGradient
{
    if ([NSApp isDarkMode])
    {
        return [[self class] progressGradientForRed:0.35 * 2.0 / 3.0 green:0.67 * 2.0 / 3.0 blue:0.98 * 2.0 / 3.0];
    }
    else
    {
        return [[self class] progressGradientForRed:0.35 green:0.67 blue:0.98];
    }
}

+ (NSGradient*)progressDarkBlueGradient
{
    if ([NSApp isDarkMode])
    {
        return [[self class] progressGradientForRed:0.616 * 2.0 / 3.0 green:0.722 * 2.0 / 3.0 blue:0.776 * 2.0 / 3.0];
    }
    else
    {
        return [[self class] progressGradientForRed:0.616 green:0.722 blue:0.776];
    }
}

+ (NSGradient*)progressGreenGradient
{
    if ([NSApp isDarkMode])
    {
        return [[self class] progressGradientForRed:0.44 * 2.0 / 3.0 green:0.89 * 2.0 / 3.0 blue:0.40 * 2.0 / 3.0];
    }
    else
    {
        return [[self class] progressGradientForRed:0.44 green:0.89 blue:0.40];
    }
}

+ (NSGradient*)progressLightGreenGradient
{
    if ([NSApp isDarkMode])
    {
        return [[self class] progressGradientForRed:0.62 * 3.0 / 4.0 green:0.99 * 3.0 / 4.0 blue:0.58 * 3.0 / 4.0];
    }
    else
    {
        return [[self class] progressGradientForRed:0.62 green:0.99 blue:0.58];
    }
}

+ (NSGradient*)progressDarkGreenGradient
{
    if ([NSApp isDarkMode])
    {
        return [[self class] progressGradientForRed:0.627 * 2.0 / 3.0 green:0.714 * 2.0 / 3.0 blue:0.639 * 2.0 / 3.0];
    }
    else
    {
        return [[self class] progressGradientForRed:0.627 green:0.714 blue:0.639];
    }
}

+ (NSGradient*)progressRedGradient
{
    if ([NSApp isDarkMode])
    {
        return [[self class] progressGradientForRed:0.902 * 2.0 / 3.0 green:0.439 * 2.0 / 3.0 blue:0.451 * 2.0 / 3.0];
    }
    else
    {
        return [[self class] progressGradientForRed:0.902 green:0.439 blue:0.451];
    }
}

+ (NSGradient*)progressYellowGradient
{
    if ([NSApp isDarkMode])
    {
        return [[self class] progressGradientForRed:0.933 * 0.8 green:0.890 * 0.8 blue:0.243 * 0.8];
    }
    else
    {
        return [[self class] progressGradientForRed:0.933 green:0.890 blue:0.243];
    }
}

@end
