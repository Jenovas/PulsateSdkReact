/**
 * @providesModule Pulsate
 */
// @flow

import { NativeModules, Platform } from 'react-native';
const RNPulsateSdkReact = NativeModules;

export const Pulsate = {
    setAuthorizationData: function (appid: string, appkey: string, gcmid: string) {
        RNPulsateSdkReact.setAuthorizationData(appid, appkey, gcmid);
    },
    startPulsateSession: function (successCallback: callback, errorCallback: callback) {
        RNPulsateSdkReact.startPulsateSession(successCallback, errorCallback);
    },
    startPulsateSessionForAlias: function (alias: string, successCallback: callback, errorCallback: callback) {
        RNPulsateSdkReact.startPulsateSessionForAlias(alias, successCallback, errorCallback);
    },
};