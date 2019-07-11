/**
 * @providesModule react-native-helpshift
 * @flow
 */
import { Platform, NativeModules, NativeEventEmitter } from 'react-native';

const RNHelpshift = Platform.OS === 'ios' ? NativeModules.RNHelpshift : NativeModules.Helpshift;

export function showFAQs(options = {}) {
  if (Platform.OS === 'ios') {
    RNHelpshift.showFAQs(options);
  } else {
    RNHelpshift.showFAQ();
  }
}

export function showConversation(options = {}) {
  if (Platform.OS === 'ios') {
    RNHelpshift.showConversation(options);
  } else {
    RNHelpshift.showConversation();
  };
};

export function setUser(userId, name, email) {
  RNHelpshift.setUserIdentifier(userId, name, email);
}

export function initialize(api_key, domain_name, app_id) {
  RNHelpshift.initialize(api_key, domain_name, app_id);
}

export function requestUnreadMessagesCount(remote = true) {
  RNHelpshift.requestUnreadMessagesCount(remote);
}

export const emitter = new NativeEventEmitter(RNHelpshift);

