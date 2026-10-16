# CHANGELOG

## [UNRELEASED]

> Die folgenden Punkte sind noch offen.

- [ ] Professional Code Review (QML and the Go backend)
  - [ ] Review durch Mara (Senior Developer & Security Analyst)
  - [ ] Review durch dedizierten Review-Agent (Agent-Datei noch zu erstellen)
- [ ] Versionsbump in `manifest.json` (aktuell noch `1.3.1`)
- [ ] `.scripts/to-devel.sh` ausarbeiten (Reverse Workflow `shift-scheduler` → `shift-scheduler-dev`, aktuell nur Stub)
- [x] Update des Go-Toolchains von `1.18` auf `1.27`
- [x] Update clickable build
- [x] Anhebung der Mindestversion von `clickable` von `7.1.2` auf `8.8.0`
- [x] Build via custom Go toolchain (Makefile) mit env-getriebenem AppArmor-Policy (`$ENV{APPARMOR_POLICY}`)
- [x] App auf `shift-scheduler-dev` umbenannt (App-ID, `manifest.json`, Build)
- [x] Build-Verzeichnisse in `.gitignore` ignoriert; QML-Import-Pfad für den QML-Language-Server (`.qmlls.ini`)
- [x] `.scripts/to-release.sh`: `shift-scheduler-dev`-Suffix entfernen (Dateinamen + Inhalte) für den Move auf release/main

**Update der Go-Abhängigkeiten in `go.mod`:**

- [x] github.com/leonelquinteros/gotext v1.7.2
- [x] github.com/mattn/go-sqlite3 v1.14.52
- [x] github.com/nanu-c/qml-go v1.0.1
- [x] golang.org/x/sys v0.49.0 (indirect)
- [x] ~golang.org/x/text v0.3.0~ [removed]
- [x] gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c (indirect)

## [v1.3.1] - 2023-04-04

- Fix UbuntuColors is not defined on Lomiri

## [v1.3.0] - 2022-10-22

- added fira code fonts (used for shifts)
- changed item border size for shift entries
- the shift rhythm edit settings entry leads to a new page now
- don't clear the page stack when enter the settings page (so the current selected month stays when leaving)
- fix subtitle text for settings entry start date
- some qml ang go code changes

## [v1.2.0] - 2022-09-21

- update the today highlighting after 12:00AM
- undo the button moved above the divider from the last update (that was a mistake)

## [v1.1.1] - 2022-09-18

- moved the `Day` dialog "update" button above the `Divider` ~~(the button only handles the shift change)~~
- Dialog: DatePicker highlight colors (these white on white stuff in dark-mode/SuruDark)

## [v1.1.0] - 2022-08-10

- performance improvements while swiping left and right
- dialog buttons not conform to [HIG](https://docs.ubports.com/en/latest/humanguide/app-layout/dialogs.html)
