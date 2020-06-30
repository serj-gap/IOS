//
//  main.m
//  BitwiseOperations
//
//  Created by Sergey Titov on 5/15/20.
//  Copyright © 2020 Sergey Titov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Factory.h"

int main(int argc, char * argv[]) {
   
    @autoreleasepool {
        
        FactoryLocation factoryLocation = FactoryLocationChina |                                                     FactoryLocationVietnam;
        
     switch (factoryLocation) {
            case FactoryLocationChina | FactoryLocationVietnam:
                NSLog(@"The factory location is Europ");
                break;
            case FactoryLocationGermani | FactoryLocationFrance:
                NSLog(@"The factory location is Asia");
            case FactoryLocationCanada | FactoryLocation_U_S_A:
                NSLog(@"The factory location is America");
            default:
                break;
        }
    }
   
}
