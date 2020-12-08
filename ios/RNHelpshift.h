// @import Helpshift

#import "HelpshiftInbox.h"
#import "HelpshiftSupport.h"

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RNHelpshift : RCTEventEmitter<RCTBridgeModule, HelpshiftSupportDelegate, HelpshiftInboxDelegate>

@end
