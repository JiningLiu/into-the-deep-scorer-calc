
import java.util.Date
import java.util.UUID

class Game(

    var id: String = UUID.randomUUID().toString(),
    var numericId: Int = -1,

    var blue0: String = "",
    var blue1: String = "",
    var red0: String = "",
    var red1: String = "",
    var mode: Int = 0,
    var final: Boolean = false,

    var blueAutoSamplesNet: Int = 0,
    var blueAutoSamplesLow: Int = 0,
    var blueAutoSamplesHigh: Int = 0,
    var redAutoSamplesNet: Int = 0,
    var redAutoSamplesLow: Int = 0,
    var redAutoSamplesHigh: Int = 0,

    var blueAutoSpecimenLow: Int = 0,
    var blueAutoSpecimenHigh: Int = 0,
    var redAutoSpecimenLow: Int = 0,
    var redAutoSpecimenHigh: Int = 0,

    var blue0AutoLocation: Int = 0,
    var blue1AutoLocation: Int = 0,
    var red0AutoLocation: Int = 0,
    var red1AutoLocation: Int = 0,

    var blueTeleopSamplesNet: Int = 0,
    var blueTeleopSamplesLow: Int = 0,
    var blueTeleopSamplesHigh: Int = 0,
    var redTeleopSamplesNet: Int = 0,
    var redTeleopSamplesLow: Int = 0,
    var redTeleopSamplesHigh: Int = 0,

    var blueTeleopSpecimenLow: Int = 0,
    var blueTeleopSpecimenHigh: Int = 0,
    var redTeleopSpecimenLow: Int = 0,
    var redTeleopSpecimenHigh: Int = 0,

    var blue0EndLocation: Int = 0,
    var blue1EndLocation: Int = 0,
    var red0EndLocation: Int = 0,
    var red1EndLocation: Int = 0,

    var blueFoul: Int = 0,
    var redFoul: Int = 0,
    var timestamp: Date = Date()
)

enum class AutoLocation(val points: Int, private val str: String) {
    NONE(0, "N/A"),
    OZONE(3, "O-Zone"),
    AZONE(3, "A-Zone");

    override fun toString(): String {
        return this.str
    }
}

enum class EndLocation(val points: Int, private val str: String) {
    NONE(0, "N/A"),
    OZONE(3, "O-Zone"),
    AZONE(3, "A-Zone"),
    LOW(15, "Low Rung"),
    HIGH(30, "High Rung");

    override fun toString(): String {
        return this.str
    }
}