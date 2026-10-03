# CHANGELOG

## [UNRELEASED]

> Die folgenden Punkte sind noch offen.

- [ ] Update des Go-Toolchains von `1.18` auf `1.27`
- [ ] Anhebung der Mindestversion von `clickable` von `7.1.2` auf `8.8.0`

**Update der Go-Abhängigkeiten in `go.mod` (offen):**

- [ ] github.com/leonelquinteros/gotext v1.5.0
- [ ] github.com/mattn/go-sqlite3 v1.14.14
- [ ] github.com/nanu-c/qml-go v0.0.0-20201002212753-238e81315528
- [ ] golang.org/x/sys v0.0.0-20220624220833-87e55d714810
- [ ] golang.org/x/text v0.3.0
- [ ] gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c

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
