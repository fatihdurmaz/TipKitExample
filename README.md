# TipKitExample

![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)
![Platform](https://img.shields.io/badge/Platform-iOS%20-lightgrey.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

Bu tutorial, SwiftUI için TipKit Framework'ü nasıl kullanacağınızı öğretir. TipKit Framework, kullanıcıların uygulamanızdaki özellikleri keşfetmesine yardımcı olacak ipuçlarını görüntülemenizi sağlar.
## Usage
TipKit Framework, SwiftUI'da ipuçlarını görüntülemek için bir API sağlar. İpuçları, kullanıcıların uygulamanızdaki yeni özellikleri öğrenmelerine ve mevcut özellikleri daha iyi anlamalarına yardımcı olabilir.

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
