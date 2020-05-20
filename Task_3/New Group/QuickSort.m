//
//  QuickSort.m
//  Task-3 (Sorted)
//
//  Created by Sergey Titov on 5/14/20.
//  Copyright © 2020 Sergey Titov. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

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

- (NSMutableArray *) quickSortArray:(NSMutableArray *)unsortedArray {
 

 
    int count = (int)[unsortedArray count];
    totalBytesUsed += sizeof(count);
    
    if (count <= 1) {
           return unsortedArray;
       }

 
    int auxiliary = [[unsortedArray objectAtIndex: (count/2)] intValue];
    totalBytesUsed += sizeof(auxiliary);
    NSMutableArray *smallerThanArray = [NSMutableArray array];
    NSMutableArray *largerThanArray = [NSMutableArray array];
    NSMutableArray *auxiliaryArray = [NSMutableArray array];
    [auxiliaryArray addObject: @(auxiliary)];
    for (int e = 0; e < count; e++) {
        int num = [[unsortedArray objectAtIndex:e] intValue];
 
        if (num < auxiliary) {
            [smallerThanArray addObject: @(num)];
            
        } else if (num > auxiliary) {
            [largerThanArray addObject: @(num)];
            
        } else if (e != (count/2) && auxiliary == num) {
            [auxiliaryArray addObject: @(num)];
        }
    }
    
    totalBytesUsed += sizeof(smallerThanArray);
    totalBytesUsed += sizeof(largerThanArray);
    totalBytesUsed += sizeof(auxiliaryArray);
 
    NSMutableArray *returnArray = [NSMutableArray array];
    [returnArray addObjectsFromArray: [self quickSortArray: smallerThanArray]];
    [returnArray addObjectsFromArray: auxiliaryArray];
    [returnArray addObjectsFromArray: [self quickSortArray: largerThanArray]];
 
    totalBytesUsed += sizeof(returnArray);
    
    return returnArray;
}

- (int)getTotalBytes {
    return totalBytesUsed;
}

@end
