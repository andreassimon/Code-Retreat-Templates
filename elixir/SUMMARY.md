# Open Telecom Platform (OTP) with Elixir

## Prozesse
Prozesse werden über ihre Process-ID (pid) identifiziert und adressiert
Prozesse kommunizieren über Messages
Jeder Prozess hat eine Inbox, an die andere Prozesse Nachrichten schicken können (send, receive, Actor model)
Prozesse können neue Prozesse erstellen, sich verknüpfen und monitoren (spawn und link)

`at_exit` wird bei Fehlern ausgeführt, hier kann z.B. State gesichert werden.

## OTP
Generische Teile abstrahieren
GenServer
  - call ⇒ Synchrone Kommunikation
  - cast ⇒ Asynchrone Kommunikation

  Task: Langlaufender Prozess
  Agent: Verwaltet State

## Supervisor
Kann andere Prozesse starten und monitored diese
  strategy:
    - `one_for_one`

Supervisor können zu Supervision-Trees verbunden werden.

## Application


## GenEvent
PubSub-System
