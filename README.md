
**# 📏 flutter_ruler**

A customizable and minimalistic ruler widget for Flutter apps – designed to help users input precise values (like body measurements) through a smooth, scrollable UI.

**## 📸 Screenshots**
![Ruler Screenshot](https://drive.google.com/uc?export=view&id=1G5yQS0RWpZoV30tZBHHhP93NHVi0xus_)


**## 🚀 Usage**

```dart
import 'package:flutter_ruler/flutter_ruler.dart';
import 'package:flutter_ruler/src/Decoration/decoration.dart'; // for PointerDecoration, LineDecoration

FlutterRuler(
  minValue: 0,
  maxValue: 100,
  rulerWidth: 300,
  rulerHeight: 100,
  pointerDecoration: PointerDecoration(
    color: Colors.red,
    pointerWidth: 4,
    pointerHeight: 80,
  ),
  lineDecoration: LineDecoration(
    smallLineDecoration: SmallLineDecoration(
      color: Colors.grey,
      height: 10,
      width: 1,
    ),
    mediumLineDecoration: MediumLineDecoration(
      color: Colors.grey,
      height: 20,
      width: 2,
    ),
    largeLineDecoration: LargeLineDecoration(
      color: Colors.black,
      height: 30,
      width: 2.5,
    ),
  ),
  numberTextStyle: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
);
```

---

**## 🧠 Constructor Parameters**

| Parameter           | Type               | Description |
|---------------------|--------------------|-------------|
| `minValue`          | `int`              | Minimum value of the ruler scale (required) |
| `maxValue`          | `int`              | Maximum value of the ruler scale (required) |
| `rulerWidth`        | `double?`          | Width of the entire ruler |
| `rulerHeight`       | `double?`          | Height of the entire ruler |
| `lineDecoration`    | `LineDecoration?`  | Styles for small, medium, and large lines |
| `pointerDecoration` | `PointerDecoration?` | Style of the center pointer |
| `numberTextStyle`   | `TextStyle?`       | Style for the numbers displayed every 10th value |

---

**## 🧭 Direction Support**

Currently supports ****horizontal**** scrolling.
****Vertical support is coming soon**** — stay tuned! 🔄

---

**## 🤝 Contributing**

Contributions are welcome! If you want to help improve this package, feel free to fork and submit a pull request.
GitHub Repo: [flutter_ruler](__https://github.com/danyalyameen/Flutter-Ruler/__)

---

**## 💙 Author**

Made with love by Danyal Yameen
If you found this useful, a star ⭐️ on GitHub would mean a lot!