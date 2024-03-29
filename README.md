# react-native-hs

Native Bindings for the [Helpshift][helpshift] Library.  Available for iOS and Android.

## Installation (iOS)

1. `npm install --save react-native-hs`
2. `cd ios && pod install`
3. Follow the steps on the [Helpshift SDK to complete installation](https://developers.helpshift.com/ios/getting-started/). 


## Installation (Android)

1. `npm install --save react-native-hs`

register module in MainApplication.java
```java

import com.bahikhata.helpshift.HelpShiftPackage;

public List<ReactPackage> createAdditionalReactPackages() {
      return Arrays.<ReactPackage>asList(
              ...,
              new HelpShiftPackage()
      );
    }
```

## Usage

The method names are named the same as in the [iOS SDK][sdk]. Only a few methods are implemented now - I welcome collaboration, pull requests, etc. 

### FAQ (Android and iOS)
```js
import * as Helpshift from 'react-native-hs';
Helpshift.showFAQs({ 'withTagsMatching' : {'operator' : 'or', 'tags' : ['iPhone', 'iPad']}});
```

### CHAT (Android and iOS)
```js
import * as Helpshift from 'react-native-hs';
Helpshift.showConversation();
```

### Initialize (Android)
```js
import * as Helpshift from 'react-native-hs';
Helpshift.initialize(api_key, domain_name, app_id); //Initialize helpshift sdk.
```

### Set User (Android)
```js
import * as Helpshift from 'react-native-hs';
Helpshift.setUser(userId, name, email); //Set Tracking Parameters.
```

[helpshift]: http://helpshift.com