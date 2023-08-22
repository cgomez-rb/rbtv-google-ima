# rbtv-google-ima
Contains the framework Google Interactive Media Ads for both iOS and tvOS.
To be able to update this repository, please search the Podspec file for the version you want to update for GoogleIMA library (either iOS or tvOS) and copy the url where to download the zip and paste it in the Package manifest.
Then download the zip file, and run the command: `swift package compute-checksum name-of-the-zip.zip`, the value returned must be copied and pasted to the checksum property in the Package manifest.
Since each framework has its own version, this repository will start from `1.0.0`, using the latest version the app was using when we were using Cocoapods.
