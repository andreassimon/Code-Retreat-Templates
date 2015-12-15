# language: de
Funktionalität: Zeitplanung
  Der Planer möchte Veranstaltungen in einem Zeitplan konfliktfrei
  organisieren …

  Szenario: Happy Path
    Angenommen am Montag ist von 8:00 Uhr bis 10:00 keine Veranstaltung geplant
    Wenn ich am Montag von 8:00 bis 10:00 die Veranstaltung "Praktikum der Anatomie" platziere
    Dann ist am Montag von 8:00 Uhr bis 10:00 "Praktikum der Anatomie" platziert.

  Szenario: Kollision
    Angenommen am Montag ist von 8:00 Uhr bis 10:00 "Praktikum der Anatomie" geplant
    Wenn ich am Montag von 8:00 bis 10:00 die Veranstaltung "Seminar Biochemie" platziere
    Dann wird die Platzierung abgelehnt
    Und "Praktikum der Anatomie" ist am Montag ist von 8:00 Uhr bis 10:00 platziert