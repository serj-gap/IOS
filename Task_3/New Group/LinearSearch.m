//
//  LinearSearch.m
//  Task-3 (Sorted)
//
//  Created by Sergey Titov on 5/14/20.
//  Copyright © 2020 Sergey Titov. All rights reserved.
//

#import "LinearSearch.h"

@implementation LinearSearch

 {
    int totalBytesUsed;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        totalBytesUsed = 0;
    }
    return self;
}

- (NSInteger)linearSearchFor:(NSNumber *)num in:(NSMutableArray *)array {
    NSInteger temp = 0;
    for (NSNumber *number in array) {
        NSComparisonResult result = [number compare:num];
        if (result == NSOrderedSame) {
            return temp;
        } else {
            temp += 1;
            totalBytesUsed += sizeof(temp);
        }
    }
    return -1;
}

- (int)getTotalBytes {
    return totalBytesUsed;
}

@end
