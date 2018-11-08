/**
* react-native-pulsate-sdk-react.d.ts
*
* Type definition file for the react native pulsate package
*/

declare module 'react-native-pulsate-sdk-react' {
    interface PulsateManager {
        Pulsate: {
            setAuthorizationData(appid: string, appkey: string, gcmid: string): void;
            startPulsateSession(successCallback: () => string, errorCallback: () => string): void;
            startPulsateSessionForAlias(alias: string, successCallback: () => string, errorCallback: () => string): void;
        }        
    }

    var PulsateManager: PulsateManager;
    export = PulsateManager;
}