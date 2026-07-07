# My Flutter Learning Journey

A chronicle of my journey learning Flutter development.

## Day 1 Morning: Profile App & Navigation

In this session, I built a clean, multi-screen profile application to learn the basics of Flutter UI development and routing.

### Core Concepts Learned
* **Widget Tree Structure:** Structuring pages hierarchically to construct layouts.
* **Basic UI Widgets:**
  * `Text`: Styled labels using `TextStyle` (font sizes, weights, letter spacing).
  * `Icon`: Standard material design icons.
  * `IconButton(...)`: A clickable icon that provides a nice ripple/splash effect when pressed, and uses an `onPressed` property just like ElevatedButton.
  * `Column`: Vertically arranging widgets.
  * `Row(children: [...])`: Arrange widgets horizontally side-by-side.
  * `SizedBox`: Adding vertical spacing between elements.
  * `CircleAvatar`: Displaying images within a circle border.
  * `ElevatedButton.icon`: Interactive buttons containing both label text and an icon.
* **Styling & Layout:** Applying color palettes (Teal) and centered layouts.
* **Configuration:** Hiding the debug banner using `debugShowCheckedModeBanner: false`.
* **Multi-Screen Navigation:** Transitioning between screens dynamically using `Navigator.push`.
