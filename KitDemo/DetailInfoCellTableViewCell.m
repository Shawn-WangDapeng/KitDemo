//
//  DetailInfoCellTableViewCell.m
//  KitDemo
//
//  Created by 王鹏 on 8/13/15.
//  Copyright (c) 2015 dianping.com. All rights reserved.
//

#import "DetailInfoCellTableViewCell.h"


@implementation DetailInfoCellTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _addressLabel = [[UILabel alloc] init];
        _addressLabel.textColor = [UIColor colorWithHexString:@"333333"];
        _addressLabel.backgroundColor = [UIColor clearColor];
        _addressLabel.font = [UIFont boldSystemFontOfSize:18.0f];
        [self.contentView addSubview:_addressLabel];
        
        _upTimeLabel = [UILabel new];
        _upTimeLabel = [[UILabel alloc] init];
        _upTimeLabel.textColor = [UIColor colorWithIntRed:146 green:146 blue:146];
        _upTimeLabel.backgroundColor = [UIColor clearColor];
        _upTimeLabel.font = [UIFont systemFontOfSize:14.0f];
        [self.contentView addSubview:_upTimeLabel];
        
        _downAirportLabel = [[UILabel alloc] init];
        _downAirportLabel.textColor = [UIColor colorWithIntRed:146 green:146 blue:146];
        _downAirportLabel.backgroundColor = [UIColor clearColor];
        _downAirportLabel.font = [UIFont systemFontOfSize:14.0f];
        [self.contentView addSubview:_downAirportLabel];
        
        _flightNameLabel = [UILabel new];
        _flightNameLabel = [[UILabel alloc] init];
        _flightNameLabel.textColor = [UIColor colorWithIntRed:146 green:146 blue:146];
        _flightNameLabel.backgroundColor = [UIColor clearColor];
        _flightNameLabel.font = [UIFont systemFontOfSize:14.0f];
        [self.contentView addSubview:_flightNameLabel];
        
        _typeLabel = [[UILabel alloc] init];
        _typeLabel.textColor = [UIColor colorWithIntRed:146 green:146 blue:146];
        _typeLabel.backgroundColor = [UIColor clearColor];
        _typeLabel.font = [UIFont systemFontOfSize:16.0f];
        [self.contentView addSubview:_typeLabel];
        
        _priceLabel = [[UILabel alloc] init];
        _priceLabel.textColor = [UIColor colorWithIntRed:255 green:69 blue:0];
        _priceLabel.backgroundColor = [UIColor clearColor];
        _priceLabel.font = [UIFont systemFontOfSize:14.0f];
        [self.contentView addSubview:_priceLabel];
        
        _ticketStatusLabel = [[UILabel alloc] init];
        _ticketStatusLabel.textColor = [UIColor whiteColor];
        _ticketStatusLabel.backgroundColor = [UIColor colorWithIntRed:27 green:169 blue:186];
        _ticketStatusLabel.font = [UIFont systemFontOfSize:14.0f];
        _ticketStatusLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_ticketStatusLabel];
    }
    
    return self;
}

- (CGFloat)cellLeftMargin {
    return 14.0f;
}

- (CGFloat)cellRightMargin {
    return 15.0f;
}

- (CGFloat)cellTopMargin {
    return 14.0f;
}

- (CGFloat)labelMargin {
    return 3.0f;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.addressLabel sizeToFit];
    self.addressLabel.left = [self cellLeftMargin];
    self.addressLabel.top = [self cellTopMargin];
    
    [self.typeLabel sizeToFit];
    self.typeLabel.left = self.addressLabel.right;
    self.typeLabel.bottom = self.addressLabel.bottom;
    
    [self.upTimeLabel sizeToFit];
    self.upTimeLabel.left = [self cellLeftMargin];
    self.upTimeLabel.top = self.addressLabel.bottom + [self labelMargin];
    
    [self.downAirportLabel sizeToFit];
    self.downAirportLabel.left = [self cellLeftMargin];
    self.downAirportLabel.top = self.upTimeLabel.bottom + [self labelMargin];
    
    [self.flightNameLabel sizeToFit];
    self.flightNameLabel.left = [self cellLeftMargin];
    self.flightNameLabel.top = self.downAirportLabel.bottom + [self labelMargin];
    
    [self.priceLabel sizeToFit];
    self.priceLabel.top = self.downAirportLabel.bottom + [self labelMargin];
    self.priceLabel.right = self.contentView.width - [self cellRightMargin];
    
    [self.ticketStatusLabel sizeToFit];
    self.ticketStatusLabel.width = self.ticketStatusLabel.width + 10;
    self.ticketStatusLabel.height = self.ticketStatusLabel.height + 4;
    self.ticketStatusLabel.right = self.contentView.right;
    self.ticketStatusLabel.top = [self cellTopMargin];
    
}

- (void)configCellInfo:(TicketInfo *)ticketInfo {
    self.addressLabel.text = ticketInfo.address;
    self.upTimeLabel.text = ticketInfo.upTime;
    self.downAirportLabel.text = ticketInfo.downAirport;
    self.flightNameLabel.text = ticketInfo.flightName;
    self.ticketStatusLabel.backgroundColor = ticketInfo.ticketStatus ? [UIColor colorWithIntRed:27 green:169 blue:186] : [UIColor colorWithIntRed:146 green:146 blue:146];
    self.ticketStatusLabel.text = ticketInfo.ticketStatus ? @"出票完成" : @"已退款";
    self.priceLabel.text = ticketInfo.price;
    self.typeLabel.text = ticketInfo.ticketType;
}

@end
