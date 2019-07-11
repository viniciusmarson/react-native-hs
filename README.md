# react-native-helpshift (unofficial bindings)

Native Bindings for the [Helpshift][helpshift] Library. Only available on iOS right now.

## Installation (iOS)

1. `npm install --save react-native-helpshift`
2. `react-native link react-native-helpshift`
3. Add Localytics to your ios/podfile file `pod 'Helpshift', '~> 6.2'`
4. `cd ios && pod install`
5. Follow the steps on the [Helpshift SDK to complete installation](https://developers.helpshift.com/ios/getting-started/). 


## Installation (Android)

1. `npm install --save react-native-helpshift`
2. `react-native link react-native-helpshift`


```java
...
include(':helpshift')
project(':helpshift').projectDir = new File(rootProject.projectDir, '../node_modules/helpshift/android')
```

In android/app/build.gradle
```java
...
dependencies{
	...
	compile project(':helpshift')
}
```

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
import * as Helpshift from 'react-native-helpshift';
Helpshift.showFAQs({ 'withTagsMatching' : {'operator' : 'or', 'tags' : ['iPhone', 'iPad']}});
```

### CHAT (Android and iOS)
```js
import * as Helpshift from 'react-native-helpshift';
Helpshift.showConversation();
```

### Initialize (Android)
```js
import * as Helpshift from 'react-native-helpshift';
Helpshift.initialize(api_key, domain_name, app_id); //Initialize helpshift sdk.
```

### Set User (Android)
```js
import * as Helpshift from 'react-native-helpshift';
Helpshift.setUser(userId, name, email); //Set Tracking Parameters.
```

[helpshift]: http://helpshift.com