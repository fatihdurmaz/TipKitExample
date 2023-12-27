# TipKitExample

![Swift](https://img.shields.io/badge/Swift-5.9%20%7C%205.8%20%7C%205.7-orange.svg)
![Platform](https://img.shields.io/badge/Platform-iOS%20-lightgrey.svg)
![Swift](https://img.shields.io/badge/iOS-17-red.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

This tutorial teaches how to use the TipKit Framework for SwiftUI. The TipKit Framework allows you to display tips that help users explore features in your application.
## Usage
The TipKit Framework provides an API for displaying tips in SwiftUI. Tips can help users discover new features in your application and better understand existing features.
### Tip Struct

```swift
struct UserSortTip: Tip {
    var title: Text {
        Text("Sort by Name")
    }
    var message: Text? {
        Text("Users is sorted by name.")
    }
    var image: Image? {
        Image(systemName: "arrow.up.arrow.down")
    }
}

struct UserAddressTip: Tip {
    var title: Text {
        Text("Click to Info Icon")
    }
    var message: Text? {
        Text("You can see users addresses.")
    }
    var image: Image? {
        Image(systemName: "info.circle")
    }
}
```

### Example

```swift
import SwiftUI
import TipKit

struct ContentView: View {
   var userSortTip = UserSortTip()
    var addressSortTip = AdressSortTip()

struct ContentView: View {
    var body: some View {
        // İpucu gösterecek view'ı oluşturun.
        TipView(addressSortTip)

        // Bir elemente dahil ederek ipuçlarını gösterin.
        Button("Sort") {
        }
        .popoverTip(userSortTip)

    }
  }
}
```


### Tip Configure

```swift
import SwiftUI
import TipKit

@main
struct TipKitExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    
                    //try? Tips.resetDatastore() 
                    
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
```
