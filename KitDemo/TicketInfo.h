//
//  TicketInfo.h
//  KitDemo
//
//  Created by 王鹏 on 8/13/15.
//  Copyright (c) 2015 dianping.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TicketInfo : NSObject
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *upTime;
@property (nonatomic, strong) NSString *downAirport;
@property (nonatomic, strong) NSString *flightName;
@property (nonatomic, strong) NSString *ticketType;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, assign) BOOL ticketStatus;

- (id)initWithAddredd:(NSString *)address upTime:(NSString *)upTime flightName:(NSString *)flightName price:(NSString *)price ticketStatus:(BOOL)ticketStatus downAirport:(NSString *)downAirport ticketType:(NSString *)ticketType;
@end
