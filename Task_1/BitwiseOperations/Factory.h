//
//  Factory.h
//  BitwiseOperations
//
//  Created by Sergey Titov on 5/15/20.
//  Copyright © 2020 Sergey Titov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


typedef enum {
    
    FactoryLocationFrance      = 1 << 0,
    FactoryLocationGermani     = 1 << 1,
    FactoryLocationChina       = 1 << 2,
    FactoryLocationVietnam     = 1 << 3,
    FactoryLocationCanada      = 1 << 4,
    FactoryLocation_U_S_A      = 1 << 5
}FactoryLocation;

@interface Factory : NSObject


@end

NS_ASSUME_NONNULL_END
