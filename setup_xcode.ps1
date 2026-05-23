# 8BPGlass-iOS Xcode Setup Helper
#
# 1. Open Xcode -> File -> New -> Project -> iOS App (SwiftUI)
# 2. Set bundle identifier: com.example.8bpglass
# 3. Save the project at this root
# 4. Drag these folders into the project navigator:
#    - Native/   (ensure "Create groups" is selected)
#    - Bridge/   (ensure "Create groups" is selected)
#    - UI/       (ensure "Create groups" is selected)
#    - Resources/
# 5. Set Bridging Header:
#    - Build Settings -> Swift Compiler -> Objective-C Bridging Header
#    - Set to: Bridge/Bridging-Header.h
# 6. Set C++ Dialect:
#    - Build Settings -> C++ Language Dialect -> GNU++17
#    - Build Settings -> Compile Sources As -> Objective-C++
# 7. Add Info.plist path:
#    - Build Settings -> Info.plist File -> Resources/Info.plist
# 8. Build & Run (Cmd+R)

Write-Host "Xcode project setup instructions printed above."
Write-Host "Make sure to add all .mm, .cpp, .swift files to your Xcode target."
