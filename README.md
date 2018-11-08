
# react-native-pulsate-sdk-react

## Getting started

`$ npm install react-native-pulsate-sdk-react --save`

### Mostly automatic installation

`$ react-native link react-native-pulsate-sdk-react`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-pulsate-sdk-react` and add `RNPulsateSdkReact.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPulsateSdkReact.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPulsateSdkReactPackage;` to the imports at the top of the file
  - Add `new RNPulsateSdkReactPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-pulsate-sdk-react'
  	project(':react-native-pulsate-sdk-react').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-pulsate-sdk-react/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-pulsate-sdk-react')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNPulsateSdkReact.sln` in `node_modules/react-native-pulsate-sdk-react/windows/RNPulsateSdkReact.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Pulsate.Sdk.React.RNPulsateSdkReact;` to the usings at the top of the file
  - Add `new RNPulsateSdkReactPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNPulsateSdkReact from 'react-native-pulsate-sdk-react';

// TODO: What to do with the module?
RNPulsateSdkReact;
```
  