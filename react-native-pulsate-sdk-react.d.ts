/**
* react-native-pulsate-sdk-react.d.ts
*
* Type definition file for the react native pulsate package
*/

declare module 'react-native-pulsate-sdk-react' {
    interface PulsateManager {
        Pulsate: {
            setAuthorizationData(APP_ID: string, APP_KEY:string, GCM_ID:string): void;
            startPulsateSession(successCallback: callback, errorCallback: callback): void;
            startPulsateSessionForAlias(alias: string, successCallback: callback, errorCallback: callback): void;
        }        
    }

    var PulsateManager: PulsateManager;
    export = PulsateManager;
}