//
//  LinearSearch.h
//  Task-3 (Sorted)
//
//  Created by Sergey Titov on 5/14/20.
//  Copyright © 2020 Sergey Titov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LinearSearch : NSObject

- (instancetype)init;
- (NSInteger)linearSearchFor:(NSNumber *)num in:(NSMutableArray *)array;
- (int)getTotalBytes;

@end

NS_ASSUME_NONNULL_END
