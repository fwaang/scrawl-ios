//
//  TouchView.m
//  MyScrawl
//
//  Created by Wang Frank on 12-7-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TouchView.h"

#define POINT(X)	[[self.points objectAtIndex:X] CGPointValue]


@implementation TouchView
@synthesize points;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (BOOL) isMultipleTouchEnabled
{
    return NO;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.points = [NSMutableArray array];
    CGPoint pt = [[touches anyObject] locationInView:self];
    [self.points addObject:[NSValue valueWithCGPoint:pt]];
    [self setNeedsDisplay];
    // NSLog(@"hello");
}

// Add each point to array
- (void) touchesMoved:(NSSet *) touches withEvent:(UIEvent *) event
{
	CGPoint pt = [[touches anyObject] locationInView:self];
	[self.points addObject:[NSValue valueWithCGPoint:pt]];
	[self setNeedsDisplay];
    NSLog(@"hello");
}

- (void) drawRect:(CGRect)rect
{
    if (!self.points)
        return;
    
    if (self.points.count < 2)
        return;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 4.0f);
    current = [UIColor whiteColor];
    [current set];
    for (int i=0; i<(self.points.count - 1); i++)
    {
        CGPoint pt1 = POINT(i);
        CGPoint pt2 = POINT(i+1);
        CGContextMoveToPoint(context, pt1.x, pt1.y);
        CGContextAddLineToPoint(context, pt2.x, pt2.y);
        CGContextStrokePath(context);
    }
    
}
@end
