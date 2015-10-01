//
//  ViewController.m
//  MovingTable
//
//  Created by SH on 2015. 10. 1..
//  Copyright © 2015년 cpromise1@naver.com. All rights reserved.
//


#import "ViewController.h"
#import "CustomTableView.h"
#define TABLE_MARGIN_TOP 150

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property CustomTableView *tableView;

@end

@implementation ViewController{
    NSArray *list;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableView = [[CustomTableView alloc] initWithFrame:CGRectMake(0, TABLE_MARGIN_TOP, _scrollView.frame.size.width, 0)];
//    list = [[NSArray alloc] initWithObjects:@"1",nil];
        list = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",nil];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.layer.borderColor = [UIColor redColor].CGColor;
    _tableView.layer.borderWidth = 3.0f;
    [_scrollView addSubview:_tableView];
    
    _scrollView.contentSize = CGSizeMake(_scrollView.frame.size.width, [_tableView getContentHeight]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"MyCell";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [list objectAtIndex:indexPath.row];
    
    return cell;
    
}

@end
