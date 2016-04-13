//
//  Analyser.m
//  lab6
//
//  Created by Lena Vansovich on 4/10/16.
//  Copyright (c) 2016 Lena Vansovich. All rights reserved.
//

#import "Analyser.h"

@implementation Analyser

- (void)foo:(NSString *)bar
{
    NSArray *words = [bar componentsSeparatedByString:@" "];
    NSMutableDictionary *statistics = [NSMutableDictionary dictionary];
    
    for(NSString* word in words)
    {
        NSNumber *repetitions = [statistics valueForKey:word];
        if(repetitions > 0)
        {
            [statistics setObject:[[NSNumber alloc] initWithLong:([repetitions integerValue] + 1)] forKey:word];
        }
        else
        {
            [statistics setObject:[[NSNumber alloc] initWithLong:1] forKey:word];
        }
    }
    
    NSArray *sortedKeys = [statistics keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2){
            return [obj2 compare:obj1];
        }];
    int i = 0;
    for(id sortedKeys in statistics)
    {
        if(i < 5)
        {
            NSLog(@"%@ - %@", sortedKeys, statistics[sortedKeys]);
        }
        else{
            break;
        }
        i++;
    }
}

@end
