//
//  ViewController.m
//  LRSChartView
//
//  Created by lreson on 16/7/21.
//  Copyright © 2016年 lreson. All rights reserved.
//

#import "ViewController.h"
#import "LRSChartView.h"


@interface ViewController ()

@property (nonatomic, strong) LRSChartView *incomeChartLineView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createIncomeChartLineView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**创建“收益走势”图*/
-(void)createIncomeChartLineView{
    
    NSArray *tempDataArrOfY = @[@"0.2",@"4",@"0.6",@"7.2",@"0.7",@"10",@"0.8"];
    
    
    _incomeChartLineView = [[LRSChartView alloc]initWithFrame:CGRectMake(0, 40, self.view.bounds.size.width, 200)];
    _incomeChartLineView.backgroundColor = [UIColor clearColor];
    
    _incomeChartLineView.titleOfYStr = @"七日收益(元)";
    _incomeChartLineView.titleOfXStr = @"(日)";
    _incomeChartLineView.leftDataArr = tempDataArrOfY;
    _incomeChartLineView.dataArrOfY = @[@"12",@"10",@"8",@"6",@"4",@"2",@"0"];//拿到Y轴坐标
    _incomeChartLineView.dataArrOfX = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7"];//拿到X轴坐标
    [self.view addSubview:_incomeChartLineView];
    
}



@end
