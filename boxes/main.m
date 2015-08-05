//
//  main.m
//  boxes
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-05.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Box *box1 = [[Box alloc] initWithHeight:(10) width:(8) depth:(5)];
        box1.name = @"Cardboad box";
        
        
        Box *box2 = [[Box alloc] initWithHeight:(18) width:(3) depth:(1)];
        box2.name = @"Plastic box";
        
        
        Box *biggestBox = [box2 biggest:box1];
        Box *smallestBox = [box2 smallest:box1];
        
        
        float boxFitFactor = [biggestBox volume] / [smallestBox volume];
        
        NSLog(@"The biggest box is the %@ with volume %f m^3 that is %i times bigger than %@ with volume %f m^3", biggestBox.name, [biggestBox volume], (int)boxFitFactor, smallestBox.name, [smallestBox volume]);
        
    }
    return 0;
}
