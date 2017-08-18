//
//  ViewController.m
//  Weather
//
//  Created by SSY on 2017/8/4.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import "ViewController.h"
#import "WeatherTodayCell.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UIImageView       *backgroundImageView;
@property (nonatomic, strong) UICollectionView  *contentCollectionView;
@property (nonatomic, strong) NSMutableArray    *locationDatasArr;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.locationDatasArr = [@[@1, @2, @3, @4] mutableCopy];
    [self initUI];
    
    [[NetHelper sharedInstance] getWeather:@"beijing" completion:^(NSError *error, CityWeatherModel *dict) {
        NSLog(@"");
    }];
}

- (void)initUI {
    
    self.backgroundImageView = ({
        UIImageView *imageView = [[UIImageView alloc] init];
        [self.view addSubview:imageView];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        imageView.backgroundColor = [UIColor redColor];
        imageView;
    });
    [self.backgroundImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view);
        make.height.equalTo(self.view);
        make.center.equalTo(self.view);
    }];
    
    self.contentCollectionView = ({
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.itemSize = CGSizeMake(CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame));
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        [self.view addSubview:collectionView];
        collectionView.delegate = self;
        collectionView.dataSource = self;
        [collectionView registerClass:[WeatherTodayCell class] forCellWithReuseIdentifier:@"cell"];
        collectionView.pagingEnabled = YES;
        collectionView;
    });
    [self.contentCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view);
        make.height.equalTo(self.view);
        make.center.equalTo(self.view);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Collection View About
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.locationDatasArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    WeatherTodayCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}


#pragma mark - Lazy load
- (NSMutableArray *)locationDatasArr {
    if (!_locationDatasArr) {
        _locationDatasArr = [[NSMutableArray alloc] init];
    }
    return _locationDatasArr;
}

@end
