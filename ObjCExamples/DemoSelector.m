//
//  DemoSelector.m
//  ObjCExamples
//
//  Created by Nguyen Thanh Duc on 10/23/15.
//  Copyright © 2015 Nguyen Thanh Duc. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;


@end

@implementation DemoSelector
- (void)viewDidLoad {
    [super viewDidLoad];
    //[self performSelector:@selector(hideSlider) withObject:nil afterDelay:2];
    
}
- (IBAction)onCrunchData:(id)sender {
    //[self performSelectorInBackground:@selector(doCrunchData) withObject:nil];
    //[self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:false];
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"apple": @"tao", @"lemon": @"chanh"} waitUntilDone: true];

}
-(void)processData: (NSDictionary*) data {
    for (NSString* key in [data allKeys]) {
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    }
}

-(void)doCrunchData {
    [NSThread sleepForTimeInterval:3];
}
-(void)hideSlider {
    self.slider.hidden = true;
}



@end
