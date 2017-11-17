# cordova-plugin-handlefile

Based on: https://github.com/lhdmulder/cordova-plugins-OpenIn

Add to the app's info.plist the following (example for opening PDF's):

    <key>CFBundleDocumentTypes</key>
    <array>
      <dict>
        <key>CFBundleTypeName</key>
        <string>PDF</string>
        <key>LSHandlerRank</key>
        <string>Alternate</string>
        <key>LSItemContentTypes</key>
        <array>
          <string>com.adobe.pdf</string>
        </array>
      </dict>
    </array>
