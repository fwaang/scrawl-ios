//
//  HelloWorldViewController.m
//  MyScrawl
//
//  Created by Wang Frank on 12-6-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldViewController.h"
#import "TouchView.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController
@synthesize MyCanvas;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.userInteractionEnabled = YES;
    self.title = @"Simple Draw";
    
    TouchView *tv = [[TouchView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 240.0f, 240.0f)];
    tv.backgroundColor = [UIColor blackColor];
    tv.center = CGPointMake(160.0f, 140.0f);
    [self.view addSubview:tv];
    //[tv.release];
    
    // tv->current = [UIColor whiteColor];
}

- (void)viewDidUnload
{
    [self setMyCanvas:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
