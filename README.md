# react-native-helpshift (unofficial bindings)
[![npm version](https://badge.fury.io/js/react-native-helpshift.svg)](https://badge.fury.io/js/react-native-helpshift)

Native Bindings for the [Helpshift][helpshift] Library. Only available on iOS right now.

## Installation

1. `npm install --save react-native-helpshift`
2. `react-native link react-native-helpshift`
3. Add Localytics to your ios/podfile file `pod 'Helpshift', '~> 6.2'`
4. `cd ios && pod install`
5. Follow the steps on the [Helpshift SDK to complete installation](https://developers.helpshift.com/ios/getting-started/). 

## Usage

The method names are named the same as in the [iOS SDK][sdk]. Only a few methods are implemented now - I welcome collaboration, pull requests, etc. 

```js
import * as Helpshift from 'react-native-helpshift';
Helpshift.showFAQs({ 'withTagsMatching' : {'operator' : 'or', 'tags' : ['iPhone', 'iPad']}});
```

[helpshift]: http://helpshift.com