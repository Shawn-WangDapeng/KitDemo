//
//  DetailInfoViewController.m
//  KitDemo
//
//  Created by 王鹏 on 8/13/15.
//  Copyright (c) 2015 dianping.com. All rights reserved.
//

#import "DetailInfoViewController.h"
#import "DetailInfoCellTableViewCell.h"
#import "TicketInfo.h"

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
@interface DetailInfoViewController ()
@property (nonatomic, strong) UITableView *detailTableView;
@property (nonatomic, strong) NSMutableArray *ticketInfoArr;
@end

@implementation DetailInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTickeInfo];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *titleImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fullTitle2"]];
    titleImgView.frame = CGRectMake(-2, 0, [[UIScreen mainScreen] bounds].size.width + 4, 120);
    [self.view addSubview:titleImgView];
    
    _detailTableView = [[UITableView alloc] init];
    _detailTableView.frame = CGRectMake(0, 120, SCREEN_WIDTH, SCREEN_HEIGHT);
    _detailTableView.delegate = self;
    _detailTableView.dataSource = self;
    [self.view addSubview:_detailTableView];
}

- (void)initTickeInfo {
    _ticketInfoArr = [[NSMutableArray alloc] initWithCapacity:10];
    TicketInfo *ticket1 = [[TicketInfo alloc]init];
    ticket1.address = @"上海 - 北京";
    ticket1.upTime = @"起飞时间：2015-06-07 19：50";
    ticket1.downAirport = @"起降机场：虹桥机场 - 首都国际机场";
    ticket1.flightName = @"航班：  春秋航空9C8965";
    ticket1.ticketType = @"(单程)";
    ticket1.ticketStatus = YES;
    ticket1.price = @"￥487";
    TicketInfo *ticket2 = [[TicketInfo alloc]init];
    ticket2.address = @"上海 - 北京";
    ticket2.upTime = @"起飞时间：2015-06-07 19：50";
    ticket2.downAirport = @"起降机场：虹桥机场 - 首都国际机场";
    ticket2.flightName = @"航班：  春秋航空9C8965";
    ticket2.ticketType = @"(单程)";
    ticket2.ticketStatus = NO;
    ticket2.price = @"￥487";
    for (NSUInteger i = 0; i < 10; i ++) {
        if (i % 2 == 0) {
            [_ticketInfoArr addObject:ticket2];
        } else {
            [_ticketInfoArr addObject:ticket1];
        }
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.ticketInfoArr count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *reuseIdentifier = @"cell";
    DetailInfoCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell) {
        cell = [[DetailInfoCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
    [cell configCellInfo:[self.ticketInfoArr objectAtIndex:indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
