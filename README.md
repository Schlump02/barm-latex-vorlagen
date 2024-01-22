# barm-latex-vorlagen

## Ziel

LaTeX-Vorlagen für alle Dokumente erstellen, die für das Studium an der BA Rhein-Main benötigt werden (Handout, Seminararbeit, Bachelor-Thesis etc.).

## Hinweis

Die Nutzung von TeX/LaTeX zur Erstellung der Bachelor Thesis muss in jedem Fall zuvor mit dem akademischen Betreuer abgesprochen worden sein. Es sollte zudem mit dem betrieblichen Betreuer abgesprochen werden, ob die Erstellung der Thesis nur mit unternehmenseigenen Mitteln (Laptop, internes Git-Repo etc.) erlaubt ist, insbesondere, falls die Thesis unternehmensinterne bzw. vertrauliche Informationen enthält.

## Setup

LaTeX kann von jedem Textverarbeitungsprogramm gelesen werden. Unter Windows kann beispielsweise folgendes Setup genutzt werden;
1. Installation von <a href="https://miktex.org/download">MikTeX</a>, einer TeX-Engine und TeX-Paketmanager
2. Installation des <a href="https://www.xm1math.net/texmaker/download.html">Texmaker</a> Editors

### Setup mit VS Code

In Visual Studio Code kann die Erweiterung <b>LaTeX Workshop</b> wie folgt genutzt werden;

1. ggf. Installation von [VS Code](https://code.visualstudio.com/)
2. ggf. Installation von [MikTeX](https://miktex.org/download), einer TeX-Engine und TeX-Paketmanager
3. Installation der Erweiterung [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) (am einfachsten direkt im VS Code Marketplace)
4. Anpassung der VS Code-Einstellungen:
    - `Shift + Ctrl + P` (Windows) oder `Shift + Cmd + P` (macOS) für die Befehlseingabe
    - `Open User Settings (JSON)` eingeben und auswählen
    - Den untenstehenden JSON-Content in die `settings.json` einfügen und abspeichern (den Text innerhalb der {} einfügen, JSON-Formatierung beachten)

```json
    "latex-workshop.message.latexlog.exclude": [".*"],
    "latex-workshop.latex.tools": [
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOC%"
            ],
            "env": {}
        },
        {
            "name": "biber",
            "command": "biber",
            "args": [
                "%DOCFILE%"
            ],
            "env": {}
        }
    ],
    "latex-workshop.latex.recipes": [
        {
            "name": "pdflatex ➞ biber ➞ pdflatex * 2",
            "tools": [
                "pdflatex",
                "biber",
                "pdflatex",
                "pdflatex"
            ]
        },
        {
            "name": "pdfLaTeX",
            "tools": [
                "pdflatex"
            ]
        },
    ],
```
Im JSON wird festgelegt, dass bei jeder Ausführung die Befehle pdflatex ➞ biber ➞ pdflatex * 2 verwendet werden, welche zuvor definiert wurden.

Ein Dokument kann nun kompiliert werden, indem die entsprechende main.tex geöffnet und dort der grüne Ausführen-Button oben rechts oder `Ctrl + Alt + B` verwendet wird.
Das fertige PDF-Dokument wird nach einigen Sekunden im selben Ordner generiert worden sein.

## Nutzung

Jedes Kapitel sowie Gliederungen etc. befinden sich in einer jeweils seperaten .tex-Datei im Ordner `sections`.
Die `main.tex` importiert Diese mit dem `\include`-Befehl. Zudem definiert sie die Formatierung und den Aufbau des Dokuments (Kopfzeilen, Seitenzahlen, Deckblatt uvm.).

Eine beispielhafte Verwendung vieler nützlicher LaTeX-Befehle wird in der `demoSection.tex` gezeigt.

### Quellenverweise

#### Nutzung einer Bib

In den Vorlagen wird für alle eingefügten Quellen automatisch ein Literaturverzeichnis erstellt.
Die dazu benötigten Informationen (Autor, Titel etc.) müssen in eine .bib-Datei eingetragen werden.

In der Vorlage wird mit der beispielhaften `myBib.bib` gearbeitet, eine beispielhafte Fußnote befindet sich in der `demoSection.tex`.

Zum automatischen Erstellen von bib-Daten aus Internetquellen kann <a href="https://www.zotero.org/">Zotero</a> genutzt werden.

Damit die Bib auch von der LaTeX Engine genutzt werden kann, muss sie zunächst verarbeitet werden.
Dazu (bei Nutzung von MikTex) diese drei Befehle im Verzeichnis der `main.tex` ausführen;

```console
pdflatex main.tex
biber main
pdflatex main.tex
```

Nach der zweiten PDF-Erstellung sollte das Literaturverzeichnis vorhanden sein, sofern bereits Quellen im Dokument genutzt wurden. Im oben beschriebenen VS Code Setup werden diese drei Schritte automatisch ausgeführt.

#### Fußnoten

Fußnoten können mit dem `\footcite` Befehl gesetzt werden, wie auf der Demo-Seite (`demoSection.tex`) gezeigt. Wenn die .bib-Datei verändert wurde, muss der `biber` Kommandozeilenbefehl ausgeführt werden.
Um einen Vollbeleg als Fußnote zu setzen, sollte `\fullfootcite` genutzt werden. Sollte die Fußnote zu lang werden, muss mit `\newpage` vor dem Satz mit der Fußnote gespielt werden.

### Position der Seitenzahlen abwechseln lassen

In Büchern und gebundenen Dokumenten befinden sich die Seitenzahlen üblicherweise jeweils an den Außenkanten der Seiten. Dies kann auch leicht in LaTeX umgesetzt werden.

> [!CAUTION]
> Laut den BA-Richtlinien dürfen Dokumente nur einseitig bedruckt abgegeben werden. Dies gilt auch für die Bachelor Thesis, die u.a. als gebundenes Buch einzureichen ist. Hier muss also jede "linke" Seite frei bleiben. Die Seitenzahlen müssen (dementsprechend) immer auf der Seite unten rechts positioniert sein.

Falls man eine eigene, private Kopie der Bachelor Thesis im beidseitigen Druck erstellen möchte, können die untenstehenden Schritte genutzt werden, um die Seitenzahlen sinnvoll zu positionieren.

#### Änderungen in der main.tex
Bei der `Documentclass` muss die Option "twoside" hinzugefügt werden.

```LaTeX
\documentclass[a4paper, 12pt, twoside]{scrartcl}
```
Im `defaultPageStyle` muss im Bereich "fancyfoot" je nach Bedarf entweder "LE,RO" (Left Even, Right Odd) oder "LO,RE" (Left Odd, Right Even) eingefügt werden. 

```LaTeX
\fancyfoot[LO,RE]{\thepage}
```

Wenn das Deckblatt als erste Seite rechts im gebundenen Buch liegt, kann es sein, dass die Seitenzahlen dann doch innen liegen und nicht außen. Getestet werden kann dies z.B. mit dem Adobe Reader oder dem [pdf24 Reader](https://www.pdf24.org/de/) in der 2-Seiten-Ansicht mit Deckblatt einzeln oben.

## Autoren

Basierend auf einer ursprünglichen Vorlage von Jan Bauer.

Erweitert durch die Mitwirkenden (Collaborators) an diesem Repository.

## Lizenz / License

Creative Commons CC BY 4.0

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a>
