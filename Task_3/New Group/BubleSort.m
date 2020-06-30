//
//  BubleSort.m
//  Task-3 (Sorted)
//
//  Created by Sergey Titov on 5/14/20.
//  Copyright © 2020 Sergey Titov. All rights reserved.
//

#import "BubleSort.h"

@implementation BubleSort
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

- (NSMutableArray *)bubbleSortArray:(NSMutableArray *)unsortedArray {
    NSMutableArray *resultArray = [NSMutableArray arrayWithArray:unsortedArray];
    
    
    for (int i = 0; i < [resultArray count] - 1; i++) {
        
        totalBytesUsed += sizeof(i);
        
        for (int j = 0; j < [resultArray count] - i - 1; j++) {
            
            totalBytesUsed += sizeof(j);
            
            if ([resultArray objectAtIndex:j] > [resultArray objectAtIndex:j + 1]) {
                [resultArray exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
            }
           
        }
    }
  
   totalBytesUsed += sizeof(resultArray);
    return resultArray;
}

- (int)getTotalBytes {
    return totalBytesUsed;
}
@end
