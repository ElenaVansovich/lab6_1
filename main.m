//
//  main.m
//  lab6
//
//  Created by Lena Vansovich on 4/10/16.
//  Copyright (c) 2016 Lena Vansovich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Analyser.h"

int main(int argc, const char * argv[])
{

    Analyser *analyser = [[Analyser alloc] init];
    
    [analyser foo:@"Hello World"];
    
    return 0;
}

