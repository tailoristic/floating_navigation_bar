#  Flutter Floating Navigation Bar

<br/>
<img width="450" height="900" src="https://github.com/tailoristic/floating_navigation_bar/blob/master/example/images/floating_navigation_bar.jpg?raw=true">
<br/>
:blue_heart:
<br/>
<img width="600" height="250" src="https://github.com/tailoristic/floating_navigation_bar/blob/master/example/images/fnb_crop.jpg?raw=true">


## ✨ EXAMPLE

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
Willing to contribute?
Go ahead and send pull request :grin:

Found bug or issues?:disappointed:
Open and issue on Github repo

## ⭐️ License

MIT License
