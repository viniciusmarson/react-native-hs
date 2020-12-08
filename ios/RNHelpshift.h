#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@import Helpshift

@interface RNHelpshift : RCTEventEmitter<RCTBridgeModule, HelpshiftSupportDelegate, HelpshiftInboxDelegate>

@end
