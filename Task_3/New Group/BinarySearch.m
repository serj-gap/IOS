//
//  BinarySearch.m
//  Task-3 (Sorted)
//
//  Created by Sergey Titov on 5/14/20.
//  Copyright © 2020 Sergey Titov. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch {

 int totalBytes;
 }

- (instancetype)init {
    self = [super init];
    if (self) {
        totalBytes = 0;
    }
    return self;
}

- (NSInteger)binarySearch:(NSNumber *)searchItem minIndex:(NSInteger)minIndex maxIndex:(NSInteger)maxIndex in:(NSMutableArray *)array {
   
    if (maxIndex < minIndex) {
        return NSNotFound;
    }
    
    NSInteger midlIndex = (minIndex + maxIndex) / 2;
    NSNumber *itemAtmidlIndex = [array objectAtIndex:midlIndex];
    
    NSComparisonResult comparison = [searchItem compare:itemAtmidlIndex];
    if (comparison == NSOrderedSame) {
        return midlIndex;
    } else if (comparison == NSOrderedAscending) {
        return [self binarySearch:searchItem minIndex:minIndex maxIndex:midlIndex - 1 in:array];
    } else {
        return [self binarySearch:searchItem minIndex:midlIndex + 1 maxIndex:maxIndex in:array];
    }
}

- (int)getTotalBytes {
    return totalBytes;
    
}

@end
