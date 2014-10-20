//
//  DictationLanguageRefresher.m
//  DictationLanguageRefresher
//
//  Created by Karsten Fluegge on 10/20/14.
//  Copyright (c) 2014 René Fouquet. All rights reserved.
//

#import "DictationLanguageRefresher.h"
#import <AppKit/NSRunningApplication.h>

@implementation DictationLanguageRefresher

// This implements the example protocol. Replace the body of this class with the implementation of this service's protocol.
- (void)upperCaseString:(NSString *)aString withReply:(void (^)(NSString *))reply {
    NSString *response = [aString uppercaseString];
    reply(response);
}
- (void)RefreshLanguage{
    NSLog(@"RefreshLanguage!!!");
    NSArray* ironwoods=[NSRunningApplication runningApplicationsWithBundleIdentifier: @"com.apple.inputmethod.ironwood"];
    if (ironwoods!=nil && [ironwoods count]>0) {
        int pid=[[ironwoods objectAtIndex:0] processIdentifier];
        
        // Kill it with fire:
        NSTask *kill=[NSTask launchedTaskWithLaunchPath:@"/bin/kill" arguments:[NSArray arrayWithObjects:@"-hup",[NSString stringWithFormat:@"%i",pid], nil]];
        [kill waitUntilExit];
        if([kill terminationStatus]!=0){
            [NSException raise:@"App Sandbox restriction" format:@"failed"];
        }else
            NSLog(@"RefreshLanguage OK!!!");    }
    
    NSLog(@"inputmethod.ironwood NOT FOUND!!");
//    return 333;
}

@end
