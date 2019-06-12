/**
 * @providesModule react-native-helpshift
 * @flow
 */
import { NativeModules, NativeEventEmitter } from 'react-native';
import invariant from 'fbjs/lib/invariant';

const RNHelpshift = NativeModules.RNHelpshift;

/*import type {
  FAQOptions,
} from './RNHelpshiftTypes';
*/

export function showFAQs(options = {}): void {
  RNHelpshift.showFAQs(options);
}

export function showConversation(options = {}): void {
  RNHelpshift.showConversation(options);
}

export function setUserIdentifier(userIdentifier): void {
  RNHelpshift.setUserIdentifier(userIdentifier);
}

export function requestUnreadMessagesCount(remote: boolean = true): void {
  RNHelpshift.requestUnreadMessagesCount(remote);
}

export const emitter = new NativeEventEmitter(RNHelpshift);

