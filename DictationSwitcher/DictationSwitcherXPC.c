//
//  DictationSwitcherXPC.c
//  Dictation Language Switcher
//
//  Created by Karsten Fluegge on 10/20/14.
//  Copyright (c) 2014 René Fouquet. All rights reserved.
//

#include "DictationSwitcherXPC.h"


#include <xpc/xpc.h>

#include <xpc/base.h>

#include <xpc/endpoint.h>

#include <xpc/connection.h>

#include <stdlib.h> // system(cmd)

//typedef void ( *xpc_connection_handler_t)( xpc_connection_t connection);
void my_event_handler(xpc_connection_t connection){
    system("killall universalaccessd");
}

//int main(int argc, const char *argv[]) {
//    xpc_main(my_event_handler);
//    // The xpc_main() function never returns.
//    exit(EXIT_FAILURE);
//    
//}
