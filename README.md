# iOS paging scroll view (PageTheScroll)

A UIKit app with a horizontally paging `UIScrollView`: one centred icon per page, laid out in code.

The view controller adds the icons once in `viewDidLoad` and positions them in `viewDidLayoutSubviews`, so the pages stay centred after rotation and don't get added again each time the screen appears.

## Running

Open `PageTheScroll/PageTheScroll.xcodeproj` in Xcode and run it on an iOS 15+ simulator or device. The project uses Swift 5.

CI builds the app for the iOS Simulator on every push.
