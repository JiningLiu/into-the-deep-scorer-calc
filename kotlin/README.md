# Kotlin Calculations

This folder contains all the basic data types and functions used in our [INTO THE DEEP Scorer](https://ftcscoring.app) app.

### Getting Started

The code is fairly straightforward, however any modification of the code may require a basic understanding of data types in Kotlin, Java, or a similar language.

In [`Data.kt`](./Data.kt), you will find the `Game` data class, as well as the `AutoLocation` and `EndLocation` enums.

The conclassor contains predefined values so you can create a new instance of `Game` without having to fill out default values every time.

You can import these files straight into your project, and they should work without any further modification.

### Usage

This section requires a basic understanding of Kotlin, Java, or similar languages.

To use the `Processor` class, simply call one of its static functions:

```java
...

val score = Processor.calcBlue(game)[3]
// ⬆️ returns total score for the BLUE alliance in a game.

val score = Processor.calcRed(game)[3]
// ⬆️ returns total score for the RED alliance in a game.
```

In the code above, we assume that you already have a `Game` data instance.

However, here's how to create and modify a game if you don't know:

```java
val game = Game()
// ⬆️ creates empty game with numeric ID of -1, you can use any initializer or make your own.

game.blueAutoSpecimenLow = 2
game.redTeleopSamplesNet += 1
// ⬆️ simply access a property of the game and modify it like any other variable.

game.blue0AutoLocation = 2
// ⬆️ to change the AUTO park location, assign a raw value (integer) specified in Data.kt; in this example, it is set to the ascent zone.

game.red1EndLocation = 4
// ⬆️ to change the END GAME park location, assign a raw value (integer) specified in Data.kt; in this example, it is set to the high rung.
```

The calculation functions inside the `Processor` class each return 4 integer values in the form of an array: `Int[]`. Here's a key for the returned values:

```java
...

val scores = Processor.calcBlue(game: game)

scores[0] // auto
scores[1] // teleop
scores[2] // end game
scores[3] // total w/o penalties
```


#### Thanks for reading!
> Made with 💜 by 20240 Westwood Slingshot & Contributors