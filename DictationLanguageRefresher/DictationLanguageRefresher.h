//
//  DictationLanguageRefresher.h
//  DictationLanguageRefresher
//
//  Created by Karsten Fluegge on 10/20/14.
//  Copyright (c) 2014 René Fouquet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DictationLanguageRefresherProtocol.h"

// This object implements the protocol which we have defined. It provides the actual behavior for the service. It is 'exported' by the service to make it available to the process hosting the service over an NSXPCConnection.
@interface DictationLanguageRefresher : NSObject <DictationLanguageRefresherProtocol>
@end
