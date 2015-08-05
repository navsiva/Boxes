//
//  Box.h
//  boxes
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-05.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, strong) NSString *name;


@property (nonatomic, assign) float width;
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float depth;

-(instancetype)initWithHeight:(float)height width:(float)width depth:(float)depth;

-(float)volume;

-(BOOL)biggerThan:(Box *)otherBox;

-(Box *)biggest:(Box *)otherBox;

-(Box *)smallest:(Box *)otherBox;




@end
