//
//  ViewController.m
//  CallBacks
//
//  Created by j on 6/6/13.
//  Copyright (c) 2013 j. All rights reserved.
//

#import "ViewController.h"
#import "CallBackObject.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize label1;
@synthesize label2;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Do any additional setup after loading the view, typically from a nib.

    CallBackObject *cbo = [[CallBackObject alloc] init];
        
    [cbo countWithCompletion:^(NSString *s) {
    
        //self.label1.text = s;
        [self performSelectorOnMainThread:@selector(setLabel1Text:) withObject:s waitUntilDone:NO];
        
    }];
    
    
    [cbo countWithTypeDefCompletion:^(int i) {
        
        self.label2.text = [NSString stringWithFormat:@"%d", i];
        
    }];
}


-(void) setLabel1Text:(NSString *)txt
{
    self.label1.text = txt;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
