//
//  Box.m
//  boxes
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-05.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "Box.h"

@implementation Box

-(instancetype)initWithHeight:(float)height width:(float)width depth:(float)depth
{
    self = [super init];
    if (self) {
        
        _height = height;
        _width = width;
        _depth = depth;
    }
    return self;
}

-(float)volume {
    
    return self.height * self.width * self.depth;
}


-(BOOL)biggerThan:(Box *)otherBox{
    
    return [self volume] > [otherBox volume];
    
}


-(Box *)biggest:(Box *)otherBox{
    
    if ([self biggerThan:otherBox]){
        
        return self;
    }
    else {
        
        return otherBox;
    }
    
    
}

-(Box *)smallest:(Box *)otherBox{
    
    if ([self biggerThan:otherBox]){
        
        return otherBox;
    }
    else {
        
        return self;
    }
    
    
}





@end
