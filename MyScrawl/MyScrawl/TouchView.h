//
//  TouchView.h
//  MyScrawl
//
//  Created by Wang Frank on 12-7-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TouchView : UIView
{
    NSMutableArray *points;
    UIColor *current;
}
@property (retain) NSMutableArray *points;

@end
