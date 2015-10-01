//
//  CustomTableView.m
//  TableHeight
//
//  Created by SH on 2015. 10. 1..
//  Copyright © 2015년 cpromise1@naver.com. All rights reserved.
//

#import "CustomTableView.h"

@implementation CustomTableView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)reloadData{
    [super reloadData];
    
    NSInteger cntOfData = [self numberOfRowsInSection:0];
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    float height = cell.frame.size.height*cntOfData;
    
    if (height < self.superview.frame.size.height) {
        height = self.superview.frame.size.height;
    }
    
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
}


- (NSInteger)getContentHeight{
    NSInteger cntOfData = [self numberOfRowsInSection:0];
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    NSInteger height = cell.frame.size.height*cntOfData;
    
    if (height < self.superview.frame.size.height) {
        height = self.superview.frame.size.height;
    }
    
    return height+self.frame.origin.y;
}

@end