# Swift Calculations

This folder contains all the basic data types (called structs in Swift) and functions used in our [INTO THE DEEP Scorer](https://ftcscoring.app) app.

### Getting Started

The code is fairly straightforward, however any modification of the code may require a basic understanding of data types in Swift or a similar language.

In [`Data.swift`](./Data.swift), you will find the `Game` data struct, as well as the `AutoLocation` and `EndLocation` enums. These custom types are used for easy encoding and decoding of scored games into and from JSON using Swift's `JSONEncoder` and `JSONDecoder` classes.

Three sample initializer functions were provided so you can create a new instance of `Game` without having to fill out default values every time. These are the same ones we use throughout our app!

You can import these files straight into your project, and they should work without any further modification.

### Usage

This section requires a basic understanding of Swift or similar languages.

To use the `Processor` struct, simply call one of its static functions:

```swift
...

let score = Processor.calcBlue(game: game).3 
// ⬆️ returns total score for the BLUE alliance in a game.

let score = Processor.calcRed(game: game).3 
// ⬆️ returns total score for the RED alliance in a game.
```

In the code above, we assume that you already have a `Game` data instance.

However, here's how to create and modify a game if you don't know:

```swift
let game = Game()
// ⬆️ creates empty game with numeric ID of -1, you can use any initializer or make your own.

game.blueAutoSpecimenLow = 2
game.redTeleopSamplesNet += 1
// ⬆️ simply access a property of the game and modify it like any other variable.

game.blue0AutoLocation = 2
// ⬆️ to change the AUTO park location, assign a raw value (integer) specified in Data.swift; in this example, it is set to the ascent zone.

game.red1EndLocation = 4
// ⬆️ to change the END GAME park location, assign a raw value (integer) specified in Data.swift; in this example, it is set to the high rung.
```

The calculation functions inside the `Processor` struct each return 4 values of type `(Int, Int, Int, Int)`. Here's a key for the returned values:

```swift
...

let scores = Processor.calcBlue(game: game)

scores.0 // auto
scores.0 // teleop
scores.0 // end game
scores.0 // total w/o penalties
```


Thanks for reading!
> Made with 💜 by 20240 Westwood Slingshot & Contributors