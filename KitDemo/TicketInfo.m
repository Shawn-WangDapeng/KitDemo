//
//  TicketInfo.m
//  KitDemo
//
//  Created by 王鹏 on 8/13/15.
//  Copyright (c) 2015 dianping.com. All rights reserved.
//

#import "TicketInfo.h"

@implementation TicketInfo
@synthesize address = _address, upTime = _upTime, flightName = _flightName, price = _price, ticketType = _ticketType, downAirport = _downAirport, ticketStatus = _ticketStatus;
- (void)setAddress:(NSString *)address {
    _address = address;
}

- (void)setUpTime:(NSString *)upTime {
    _upTime = upTime;
}

- (void)setFlightName:(NSString *)flightName {
    _flightName = flightName;
}

- (void)setPrice:(NSString *)price {
    _price = price;
}

- (void)setTicketStatus:(BOOL)ticketStatus {
    _ticketStatus = ticketStatus;
}

- (void)setDownAirport:(NSString *)downAirport {
    _downAirport = downAirport;
}

- (void)setTicketType:(NSString *)ticketType {
    _ticketType = ticketType;
}

- (NSString *)address {
    return _address;
}

- (NSString *)upTime {
    return _upTime;
}

- (NSString *)flightName {
    return _flightName;
}

- (NSString *)downAirport {
    return _downAirport;
}

- (NSString *)ticketType {
    return _ticketType;
}

- (NSString *)price {
    return _price;
}

- (BOOL)ticketStatus {
    return _ticketStatus;
}
@end
