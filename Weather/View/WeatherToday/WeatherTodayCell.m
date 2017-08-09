//
//  WeatherTodayCell.m
//  Weather
//
//  Created by SSY on 2017/8/7.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import "WeatherTodayCell.h"

@interface WeatherTodayCell()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView  *tableView;

@end

@implementation WeatherTodayCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initUI];
    }
    return self;
}

- (void)initUI {
    _tableView = ({
        UITableView *tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
        [self.contentView addSubview:tableView];
        tableView.delegate = self;
        tableView.dataSource = self;
        [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
        tableView;
    });
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = indexPath.row % 2 ? [UIColor redColor] : [UIColor yellowColor];
    return cell;
}

@end
