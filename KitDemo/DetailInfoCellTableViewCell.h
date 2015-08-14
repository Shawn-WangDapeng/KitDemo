//
//  DetailInfoCellTableViewCell.h
//  KitDemo
//
//  Created by 王鹏 on 8/13/15.
//  Copyright (c) 2015 dianping.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+Utile.h"
#import "UIView+Layout.h"
#import "TicketInfo.h"
@interface DetailInfoCellTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *addressLabel;
@property (nonatomic, strong) UILabel *upTimeLabel;
@property (nonatomic, strong) UILabel *downAirportLabel;
@property (nonatomic, strong) UILabel *flightNameLabel;
@property (nonatomic, strong) UILabel *typeLabel;
@property (nonatomic, strong) UILabel *priceLabel;
@property (nonatomic, strong) UILabel *ticketStatusLabel;


- (void)configCellInfo:(TicketInfo *)ticketInfo;
@end
