# ✨ Flutter Floating Bottom Navigation Bar


Fully customizable floating bottom navigation package for flutter.

## 🎮 How To Use

```dart
      Scaffold(
      appBar: AppBar(
        title: Text(
          "Floating Navigation Bar"
        ),
      ),
      // INCLUDE LIST OF WIDGETS INSIDE BODY
      body: List<Widgets>, // [Home(), Search(), Cart(), Profile()]
      bottomNavigationBar: FloatingNavigationBar(
        backgroundColor: Colors.black87,
        iconColor: Colors.white,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
        iconSize: 20.0,
        items: [
          NavBarItems(icon: EvaIcons.homeOutline,title: "Home"),
          NavBarItems( icon: EvaIcons.search,title: "Search"),
          NavBarItems(
            icon: EvaIcons.shoppingCartOutline, title: "Cart"),
          NavBarItems(
            icon: EvaIcons.activity,title: "Profile"),
        ],
        onChanged: (value) {
            // USE YOUR STATE MANAGEMENT TECHNIQUE TO GET
            // AND CHANGE INDEX OF NAVIGATION BAR
        },
      ),
    );

```

<!-- 
<img width="450" height="900" src="https://github.com/right7ctrl/flutter_floating_bottom_navigation_bar/blob/master/image.png?raw=true"> -->

## ⭐️ License

MIT License
