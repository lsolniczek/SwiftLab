class KrakenGeneral {
    var soldiers = [Kraken]()

    func startTheWar() {
        prepareTheKrakenArmyForBattle(punishments: {
            soldiers.removeFirst()
        })
    }

    func prepareTheKrakenArmyForBattle(@noescape punishments punishments: () -> Void) {
        if someoneReportedMisbehavior {
            punishments()
        }
    }
}
