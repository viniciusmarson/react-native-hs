#import "RCTBridgeModule.h"
#import <React/RCTEventEmitter.h>

#import "HelpshiftSupport.h"
#import "HelpshiftInbox.h"

@interface RNHelpshift : RCTEventEmitter<RCTBridgeModule, HelpshiftSupportDelegate, HelpshiftInboxDelegate>

@end
