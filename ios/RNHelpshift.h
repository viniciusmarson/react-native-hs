@import Helpshift;

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RNHelpshift : RCTEventEmitter<RCTBridgeModule, HelpshiftSupportDelegate, HelpshiftInboxDelegate>

@end
