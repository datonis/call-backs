//
//  CallBackObject.h
//  CallBacks
//
//  Created by j on 6/6/13.
//  Copyright (c) 2013 j. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CompletionBlock)(int);

@interface CallBackObject : NSObject

-(void) countWithCompletion:( void (^)(NSString *s) )completion;
-(void) countWithTypeDefCompletion:(CompletionBlock)completion;


@end
