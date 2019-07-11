/**
 * @providesModule react-native-helpshift
 * @flow
 */
import { Platform, NativeModules, NativeEventEmitter } from 'react-native';

const RNHelpshift = Platform.OS === 'ios' ? NativeModules.RNHelpshift : NativeModules.Helpshift;

export function showFAQs(options = {}) {
  RNHelpshift.showFAQs(options);
}

export function showConversation(options = {}) {
  RNHelpshift.showConversation(options);
}

export function setUser(userId, name, email) {
  RNHelpshift.setUserIdentifier(userId, name, email);
}

export function initialize(api_key, domain_name, app_id) {
  RNHelpshift.setUserIdentifier(api_key, domain_name, app_id);
}

export function requestUnreadMessagesCount(remote = true) {
  RNHelpshift.requestUnreadMessagesCount(remote);
}

export const emitter = new NativeEventEmitter(RNHelpshift);

