//
//  CallBackObject.m
//  CallBacks
//
//  Created by j on 6/6/13.
//  Copyright (c) 2013 j. All rights reserved.
//

#import "CallBackObject.h"

@implementation CallBackObject


-(void) countWithCompletion:( void (^)(NSString *s) )completion
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,
                                             (unsigned long)NULL), ^(void) {
        
        int d = 0;
        while (d < 100000000)
            d++;
        
        completion([NSString stringWithFormat:@"%d", d]);

    });
}

-(void) countWithTypeDefCompletion:(CompletionBlock)completion
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,
                                             (unsigned long)NULL), ^(void) {
        
        int d = 0;
        while (d < 100000000)
            d++;
        
        completion(d);
        
    });
}

@end
