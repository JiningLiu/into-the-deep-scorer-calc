
class Processor {

    companion object {

        fun calcBlue(game: Game): Array<Int> {

            val auto: Int = run {
                var total = 0
                if (game.blue0AutoLocation != 0) {
                    total += 3
                }
                if (game.blue1AutoLocation != 0) {
                    total += 3
                }
                total += game.blueAutoSamplesNet * 2
                total += game.blueAutoSamplesLow * 4
                total += game.blueAutoSamplesHigh * 8
                total += game.blueAutoSpecimenLow * 6
                total += game.blueAutoSpecimenHigh * 10

                total
            }

            val teleop: Int = run {
                var total = 0

                total += game.blueTeleopSamplesNet * 2
                total += game.blueTeleopSamplesLow * 4
                total += game.blueTeleopSamplesHigh * 8
                total += game.blueTeleopSpecimenLow * 6
                total += game.blueTeleopSpecimenHigh * 10

                total
            }

            val endgame: Int = run {
                var total = 0
                total += EndLocation.entries[game.blue0EndLocation].points
                total += EndLocation.entries[game.blue1EndLocation].points
                total
            }

            val total = auto + teleop + endgame

            return arrayOf(auto, teleop, endgame, total)
        }

        fun calcRed(game: Game): Array<Int> {

            val auto: Int = run {
                var total = 0
                if (game.red0AutoLocation != 0) {
                    total += 3
                }
                if (game.red1AutoLocation != 0) {
                    total += 3
                }
                total += game.redAutoSamplesNet * 2
                total += game.redAutoSamplesLow * 4
                total += game.redAutoSamplesHigh * 8
                total += game.redAutoSpecimenLow * 6
                total += game.redAutoSpecimenHigh * 10

                total
            }

            val teleop: Int = run {
                var total = 0

                total += game.redTeleopSamplesNet * 2
                total += game.redTeleopSamplesLow * 4
                total += game.redTeleopSamplesHigh * 8
                total += game.redTeleopSpecimenLow * 6
                total += game.redTeleopSpecimenHigh * 10

                total
            }

            val endgame: Int = run {
                var total = 0
                total += EndLocation.entries[game.red0EndLocation].points
                total += EndLocation.entries[game.red1EndLocation].points
                total
            }

            val total = auto + teleop + endgame

            return arrayOf(auto, teleop, endgame, total)
        }
    }
}