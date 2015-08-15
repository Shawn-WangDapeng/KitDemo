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

- (instancetype)init {
    self = [self initWithNibName:nil bundle:nil];
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self initTickeInfo];
    }
    return self;
}

- (void)loadView {
    self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    self.detailTableView = [[UITableView alloc] init];
    self.detailTableView.frame = CGRectMake(0, 120, SCREEN_WIDTH, SCREEN_HEIGHT);
    self.detailTableView.delegate = self;
    self.detailTableView.dataSource = self;
    [self.detailTableView setSeparatorColor:[UIColor colorWithIntRed:207 green:214 blue:214]];
    [self.view addSubview:self.detailTableView];
    
    UIImageView *titleImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fullTitle2"]];
    titleImgView.frame = CGRectMake(-2, 0, [[UIScreen mainScreen] bounds].size.width + 4, 120);
    [self.view addSubview:titleImgView];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self initTickeInfo];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
//    self.view.backgroundColor = [UIColor whiteColor];
//    UIImageView *titleImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fullTitle2"]];
//    titleImgView.frame = CGRectMake(-2, 0, [[UIScreen mainScreen] bounds].size.width + 4, 120);
//    [self.view addSubview:titleImgView];
//    
//    _detailTableView = [[UITableView alloc] init];
//    _detailTableView.frame = CGRectMake(0, 120, SCREEN_WIDTH, SCREEN_HEIGHT);
//    _detailTableView.delegate = self;
//    _detailTableView.dataSource = self;
//    [self.view addSubview:_detailTableView];
}

- (void)initTickeInfo {
    _ticketInfoArr = [[NSMutableArray alloc] initWithCapacity:10];
    TicketInfo *ticket1 = [[TicketInfo alloc]init];
    ticket1.address = @"上海 - 北京";
    ticket1.upTime = @"起飞时间: 2015-06-07 19:50";
    ticket1.downAirport = @"起降机场: 虹桥机场 - 首都国际机场";
    ticket1.flightName = @"航班:  春秋航空9C8965";
    ticket1.ticketType = @"(单程)";
    ticket1.ticketStatus = YES;
    ticket1.price = @"￥487";
    
    TicketInfo *ticket2 = [[TicketInfo alloc] initWithAddredd:@"上海 - 北京" upTime:@"起飞时间:  2015-06-07 19:50" flightName:@"航班:        春秋航空9C8965" price:@"￥537" ticketStatus:NO downAirport:@"起降机场:  虹桥机场 - 首都国际机场" ticketType:@"(单程)"];
    
    TicketInfo *ticketGo = [[TicketInfo alloc] initWithAddredd:@"上海 - 北京" upTime:@"起飞时间:  2015-08-22 09:30" flightName:@"航班:         东航MU5153" price:@"￥489" ticketStatus:YES downAirport:@"起降机场:  虹桥机场 - 首都机场" ticketType:@"(单程)"];
    
    TicketInfo *ticketBackNextDay = [[TicketInfo alloc] initWithAddredd:@"北京 - 上海" upTime:@"起飞时间:  2015-08-23 18：30" flightName:@"航班:         联航KN5955" price:@"￥577" ticketStatus:NO downAirport:@"起降机场:  南苑机场 - 虹桥机场" ticketType:@"(单程)"];
    
    TicketInfo *ticketBackCurrentDay = [[TicketInfo alloc] initWithAddredd:@"北京 - 上海" upTime:@"起飞时间:  2015-08-22 17：30" flightName:@"航班:         国航CA1855" price:@"￥550" ticketStatus:YES downAirport:@"起降机场:  首都机场 - 虹桥机场" ticketType:@"(单程)"];
   
    TicketInfo *ticketBackHarbin = [[TicketInfo alloc] initWithAddredd:@"哈尔滨 - 上海" upTime:@"起飞时间:  2015-06-07 19：50" flightName:@"航班:         吉祥航空HO1168" price:@"￥479" ticketStatus:NO downAirport:@"起降机场:  太平机场 - 浦东机场" ticketType:@"(单程)"];
    
    TicketInfo *ticketToHarbin = [[TicketInfo alloc] initWithAddredd:@"上海 - 哈尔滨" upTime:@"起飞时间:  2015-06-05 08：40" flightName:@"航班:         春秋航空9C8965" price:@"￥486" ticketStatus:NO downAirport:@"起降机场:  浦东机场 - 太平机场" ticketType:@"(单程)"];
    
    
    [_ticketInfoArr addObject:ticketBackCurrentDay];
    [_ticketInfoArr addObject:ticketBackNextDay];
    [_ticketInfoArr addObject:ticketGo];
    [_ticketInfoArr addObject:ticketBackHarbin];
    [_ticketInfoArr addObject:ticketToHarbin];
    
//    for (NSUInteger i = 0; i < 10; i ++) {
//        if (i % 2 == 0) {
//            [_ticketInfoArr addObject:ticket2];
//        } else {
//            [_ticketInfoArr addObject:ticket1];
//        }
//    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return [self.ticketInfoArr count];
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (![[self.ticketInfoArr objectAtIndex:indexPath.row] ticketStatus]) return 180;
    return 110;
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
