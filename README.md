Cordova Plugin Change-Icon
======

This plugin only works for iOs > 10.3. 
It is not currently possible to do such a thing on Android.

Based on https://medium.com/@same7mabrouk/ios-10-3-alternate-app-icons-2abd7b4c0a38

# Installation

 Please read this medium :

https://medium.com/@thibaut_choose/how-to-use-alternateicons-with-ionic-cordova-with-ios-10-3-ca1fad7279b1

### Uses cases and limitations

See  https://ikiwitech.com/2017/05/08/change-your-ios-application-icon-runtime/


## Functions

 `ChangeIcon.reset(Function success, Function failure)`
To reset and go back to the default icon

`ChangeIcon.getCurrent(Function success, Function failure)`
To get the current icon used

`ChangeIcon.change(String iconName ,Function success, Function failure)`
To change the current icon