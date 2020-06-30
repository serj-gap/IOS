//
//  main.m
//  Task-3 (Sorted)
//
//  Created by Sergey Titov on 5/14/20.
//  Copyright © 2020 Sergey Titov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "BinarySearch.h"
#import "BubleSort.h"
#import "LinearSearch.h"
#import "QuickSort.h"

int main(int argc, char * argv[]) {
    
    @autoreleasepool {
         /*
                      {
                      int i = 17;
                      int *addressOfI = &i;
                      NSLog(@"i stores its value at %p\n", addressOfI);
                      *addressOfI = 89;
                      
                      NSLog(@"Now i is %d\n", i);
                      NSLog(@"An int is %zu bytes\n", sizeof(i));
                      NSLog(@"A pointer is %zu bytes\n", sizeof(&i));
                      return 0; }
                      */
               
                      NSMutableArray *unsortedArray = [NSMutableArray array];
                             NSMutableArray *sortedArray = [NSMutableArray array];
                             QuickSort *quickSort = [QuickSort new];
                      BubleSort *bubbleSort = [BubleSort new];
                             
                             NSDate *startTime = [NSDate date];
                             for (int i = 0; i < 10000; i++) {
                                 [unsortedArray addObject:@(arc4random_uniform(100000) - 100000)];
                             }
                             
                            sortedArray = [quickSort quickSortArray:unsortedArray];
                             NSDate *endTime = [NSDate date];
                             
                             NSTimeInterval executionTime = [endTime timeIntervalSinceDate: startTime];
                             NSLog(@"QuickSort Timing: %f", executionTime);
                             
                              NSLog(@"QuickSort Size: %d", [quickSort getTotalBytes]);
                             printf("\n");
                             
                             startTime = [NSDate date];
                             
                             sortedArray = [bubbleSort bubbleSortArray:unsortedArray];
                             endTime = [NSDate date];
                             
                             executionTime = [endTime timeIntervalSinceDate: startTime];
                             NSLog(@"BubbleSort Timing: %f", executionTime);
                              printf("\n");
                             
                              NSLog(@"BubbleSort Size %d bytes\n", [bubbleSort getTotalBytes]);
                             
                     
                     
                  
                  
                  //-----------------Second tasck (BinarySearch && LinearSearch)---------------------//
                  
                
                          BinarySearch *binarySearch = [[BinarySearch alloc] init];
                          LinearSearch *linearSearch = [[LinearSearch alloc] init];
                          NSMutableArray *arrayOfNSNums = [NSMutableArray array];
                          
                          for (int i = 0; i < 10000; i++) {
                             
                              [arrayOfNSNums addObject:@(arc4random_uniform(10000))];
                          }
                          
                      
                          [arrayOfNSNums sortUsingComparator: ^(id obj1, id obj2) {
                              if ([obj1 intValue] > [obj2 intValue]) {
                                  return (NSComparisonResult)NSOrderedDescending;
                              } else  if ([obj1 intValue] < [obj2 intValue]) {
                                  return (NSComparisonResult)NSOrderedAscending;
                              }
                              return (NSComparisonResult)NSOrderedSame;
                          }];
                          
                          
                          NSInteger binarySearchResult = [binarySearch binarySearch:@2 minIndex:0 maxIndex:[arrayOfNSNums count] in:arrayOfNSNums];

                      NSLog(@"BinarySearch Timing: %f Result: %ld", executionTime, (long)binarySearchResult);
                          
                      NSLog(@"BinarySearch Size: %d", [binarySearch getTotalBytes]);
                          printf("\n");
                          
                          startTime = [NSDate date];
                          NSInteger linearSearchResult = [linearSearch linearSearchFor:@2 in:arrayOfNSNums];
                          endTime = [NSDate date];
                          
                          executionTime = [endTime timeIntervalSinceDate: startTime];
                      NSLog(@"LinearSearch Timing: %f Result: %ld", executionTime, (long)linearSearchResult);
                      printf("\n");
                          NSLog(@"LinearSearch Size: %d", [linearSearch getTotalBytes]);
                          printf("\n");
                      }
                      return 0;
           }

