#import "React/RCTBridgeModule.h"
#import "HelpshiftSupport.h"
#import <React/RCTEventEmitter.h>

@interface RNHelpshift : RCTEventEmitter<RCTBridgeModule, HelpshiftSupportDelegate>

@end