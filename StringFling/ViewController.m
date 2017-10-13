//
//  ViewController.m
//  StringFling
//
//  Created by Hongbo Niu on 2017-10-13.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *firstName = @"Mcqueen";
    
    //NSString *allocatedString = [[NSString alloc]init];
    //Most Most of time the pointer is initialized as Literals, not like this.
    NSLog(@"Firstname: %@", firstName);
    
    //stringWithFormat
    //stringWithFormat is a static function, marked as '+'
    NSString *fullName = [NSString stringWithFormat:@"fullName: %@ %@", firstName, @"Muge"];
    NSLog(@"FullName: %@", fullName);
    
    //In swift, let fullName = "\(firstName) \(lastName)"
    //String concatenation.
    
    //stringByAppendingString is not a static function, marked with '-'
    NSString *display = [fullName stringByAppendingString:@" Niu"];
    NSLog(@"Complete full name: %@", display);
    
    //String comparason
    NSString *var1 = @"Junk";
    NSString *var2 = @"Junk";
    NSString *var3 = @"jUnk";
    
    //Here compare the address instead of the content of String
    if (var1 == var2) {
        NSLog(@"They are the same! using ==");
        //NSLog(@"var1 address: %lu, var2 address: %lu", var1, var2);
    }
    
    if ([var1.lowercaseString isEqualToString:var3.lowercaseString]){
        NSLog(@"They are the same using isEqualToString function.");
    }
    
    //caseInsensitiveCompare does not return Yes or No, it returns an enum as below:
    //typedef NS_ENUM(NSInteger, NSComparisonResult) {NSOrderedAscending = -1L, NSOrderedSame, NSOrderedDescending};
    if ([var1 caseInsensitiveCompare:var3] == NSOrderedSame){
        NSLog(@"Var1 is the same as var3 if we ignore the case");
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
