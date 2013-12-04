//
//  Mylabel.m
//  Start_project
//
//  Created by binary on 12/3/13.
//  Copyright (c) 2013 binary. All rights reserved.
//

#import "Mylabel.h"

@implementation Mylabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor =[UIColor redColor];
        self.frame=CGRectMake(10, 40, 100, 50);
        
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

@end
