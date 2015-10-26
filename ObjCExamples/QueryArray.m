//
//  QueryArray.m
//  ObjCExamples
//
//  Created by Nguyen Thanh Duc on 10/10/15.
//  Copyright © 2015 Nguyen Thanh Duc. All rights reserved.
//

#import "QueryArray.h"

@interface QueryArray ()

@end

@implementation QueryArray

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray * arr1 = [NSArray new];
//    NSLog(@"%ld", arr1.count);
    
    NSArray * arrayCauThu = @[@"GK	Marc-André ter Stegen",
                       @"DF Gerard Piqué (4th captain)",
                       @"MF Ivan Rakitić",
                       @"MF Sergio Busquets (3rd captain)",
                       @"FW Pedro Rodríguez",
                       @"MF Andrés Iniesta (captain)",
                       @"FW	Luis Suárez",
                       @"FW Lionel Messi (vice-captain)",
                       @"FW Neymar", @"MF Rafinha", @"GK	Claudio Bravo", @"MF Javier Mascherano", @"DF MarcBartra", @"DF	Douglas", @"DF	Jordi Alba", @"MF	Sergi Roberto", @"DF Adriano", @"DF	Dani Alves", @"DF Thomas Vermaelen", @"DF Jérémy Mathieu", @"GK Jordi Masip", @"MF	Alex Song", @"MF Arda Turan", @"MF Aleix Vidal" ];
    //tao ra mang chua cac so khong bi trung tu 0 - 23

    for ( int i=0; i < 10; i++)
    {
        int sorandom = arc4random_uniform(24);
        NSLog(@"sorandom %d", sorandom);
        NSLog(@" arrayCauThu %@", [arrayCauThu objectAtIndex:sorandom]);
        
    }
    
    
    
}





@end
