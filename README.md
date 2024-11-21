
# AnimatedComponentsLib 🚀

A collection of animated UI components for iOS, including buttons, table views, and collection views, designed to enhance user experiences with dynamic and engaging animations.

## Features ✨

1. **Animated Buttons**  
   - Add interactive animations to your buttons with ease, such as pulsating, bouncing, or scaling effects.
2. **Animated Table Views**  
   - Customize animations for table view rows, including sliding, fading, and jiggle effects.
3. **Animated Collection Views**  
   - Customize animations for collection view items, including shake, swing, and jiggle effects.

### Requirements 📋

- iOS 14.0+
- Swift 5.0+
- Xcode 12.0+

## Components 📦

This library integrates the following sub-libraries:
- [iOS-AnimatedButtonLib](https://github.com/lymanny/iOS-AnimatedButtonLib.git)
- [iOS-AnimatedTableViewLib](https://github.com/lymanny/iOS-AnimatedTableViewLib.git)
- [iOS-AnimatedCollectionViewLib](https://github.com/lymanny/iOS-AnimatedCollectionViewLib.git)

## Installation 🛠️

AnimatedComponentsLib is available via Swift Package Manager (SPM).

### Step 1: Add the Package Dependency
In your Xcode project, go to **File > Add Packages**, and add the following URL:

```plaintext
https://github.com/lymanny/iOS-AnimatedComponentsLib.git
```

Select the version you want and add it to your project.

### Step 2: Import the Library
```swift
import AnimatedComponents
```

## Usage 📖

### Animated Buttons
```swift
@IBAction func btnClick(_ sender: UIButton) {
    sender.press {
        print("Button Pressed!")
    }
}
```

### Animated Table Views

#### In your `UITableView`'s `cellForRowAt` method:
```swift
cell.animateFlip(delay: 0.05 * Double(indexPath.row)) {
    print("Animation completed for row \(indexPath.row)")
}
```

#### In your `UITableView`'s `didSelectRowAt` method:
```swift
if let cell = tableView.cellForRow(at: indexPath) {
    cell.animateJiggle {
        print("Jiggle animation completed for row \(indexPath.row)")
    }
}
```

### Animated Collection Views

#### In your `UICollectionView`'s `cellForItemAt` method:
```swift
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
    
    // Apply an animation
    cell.animateShake {
        print("Animation done for cell at \(indexPath)")
    }
    
    return cell
}
```

## Contributing 🤝
Contributions are welcome! Please feel free to submit issues, fork the repository, and create pull requests.

## License 📄
This project is licensed under the [MIT License](LICENSE).

## Author 👩‍💻
lymanny - iOS Developer  
🌐 [Portfolio](https://lymanny.onrender.com)
