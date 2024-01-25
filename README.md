# BA Rhein-Main LaTeX Vorlagen

## Motivation

In diesem Repository befinden sich LaTeX-Vorlagen für alle wichtigen Dokumente, die im Laufe Studiums an der BA Rhein-Main erstellt werden müssen. Dazu zählen u.a. [Handout](https://github.com/Schlump02/barm-latex-vorlagen/blob/main/Handout/Beispiel.pdf), [Seminararbeit](https://github.com/Schlump02/barm-latex-vorlagen/blob/main/Seminararbeit/Beispiel.pdf) und [Bachelor Thesis](https://github.com/Schlump02/barm-latex-vorlagen/blob/main/Bachelorarbeit/Beispiel.pdf). Durch die Verwendung dieser Vorlagen spart man sich die lästige Formatierung in Word kann sich sicher sein, dass die resultierenden Arbeiten die formalen Ansprüche der BA einhalten können.

> [!TIP]
> Wird diese Vorlage zum ersten Mal genutzt, ist es wärmstens empfohlen, für einen einfachen Einstieg diese README (Anleitung) *vollständig* zu lesen.

Trotz größter Sorgfalt kann es zu Fehlern oder veralteten Informationen kommen. In diesem Fall bitte gerne direkt die Ersteller kontaktieren oder ein neues Issue (oben links auf dieser Webseite) aufmachen.

## Hinweis zur Bachelor Thesis

Die Nutzung von TeX/LaTeX zur Erstellung der Bachelor Thesis muss in jedem Fall zuvor mit dem akademischen Betreuer abgesprochen worden sein. Es sollte zudem mit dem betrieblichen Betreuer abgesprochen werden, ob die Erstellung der Thesis nur mit unternehmenseigenen Mitteln (Laptop, internes Git-Repo etc.) erlaubt ist, insbesondere, falls die Thesis unternehmensinterne bzw. vertrauliche Informationen enthält.

## Setup

LaTeX kann von jedem Textverarbeitungsprogramm gelesen werden. Im Folgenden wird beschrieben, wie man Visual Studio Code als Editor und MikTex zum Erstellen der fertigen PDF nutzen kann. Alternativ könnte man z.B. auch [Texmaker](https://www.xm1math.net/texmaker/download.html) als Editor verwenden.

### Vorlage Initialisieren

Am einfachsten kann die Vorlage genutzt werden, indem man dieses Repository mit Git klont und VS Code als Editor verwendet. Wer damit noch keine Erfahrungen hat, kann diese Schritte befolgen;

1. ggf. [Git](https://git-scm.com/downloads) installieren
2. ggf. [VS Code](https://code.visualstudio.com/) installieren
3. [Diesem](https://code.visualstudio.com/docs/sourcecontrol/intro-to-git) kurzen Tutorial folgen

Git(hub) eigent sich besonders, wenn man in Zusammenarbeit mit Anderen ein Dokument erstellt. Dazu einfach ein privates [neues Repository](https://docs.github.com/de/repositories/creating-and-managing-repositories/creating-a-new-repository) erstellen und die benötigten Dateien aus dieser Vorlage dort hinein kopieren. Wen man anschließend die Gruppenmitglieder [als Mitbearbeiter hinzufügt](https://docs.github.com/de/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-access-to-your-personal-repositories/inviting-collaborators-to-a-personal-repository), können sie sich das Repository klonen und jeder kann Änderungen vornehmen und veröffentlichen.

Zudem stellt ein eigenes Repository auch ein Backup aller früheren Versionen der eigenen Arbeit dar, wodurch Veränderungen leicht nachvollzogen und Datenverluste vermieden werden können.

Wer trotz allem kein Git verwenden will, kann die Dateien auch als zip-Archiv herunterladen. Dazu auf dieser Seite oben rechts auf den grünen `Code`-Button klicken und `Download ZIP` auswählen.

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
Im JSON wird festgelegt, dass bei jeder Ausführung die Befehle pdflatex ➞ biber ➞ pdflatex ➞ pdflatex verwendet werden, welche zuvor definiert wurden. Es wird also die MikTex-Engine zum Erstellen der PDF-Datei ausgeführt.

Ein Dokument kann nun kompiliert werden, indem die entsprechende main.tex geöffnet und dort der grüne Ausführen-Button oben rechts oder `Ctrl + Alt + B` verwendet wird.
Das fertige PDF-Dokument `main.pdf` wird nach einigen Sekunden im selben Ordner generiert worden sein.

> [!NOTE]  
> Die Ausführung kann fehlschlagen, wenn es Fehler im Dokument gibt oder das PDF-Dokument in einer anderen Anwendung (wie. z.B. dem Adobe Acrobat Reader) geöffnet ist.

## Nutzung

Jeder logische Abschnitt der Arbeit befinden sich in einer jeweils seperaten .tex-Datei im Ordner `sections`.
Die `main.tex` importiert Diese mit dem `\include`-Befehl. Zudem definiert sie die Formatierung und den Aufbau des Dokuments (Kopfzeilen, Seitenzahlen, Zitierweise uvm.).

Eine beispielhafte Verwendung vieler nützlicher LaTeX-Befehle wird in der `demoSection.tex` gezeigt.

### Quellenverweise

#### Nutzung einer Bib

In den Vorlagen wird für alle eingefügten Quellen automatisch ein Literaturverzeichnis erstellt.
Die dazu benötigten Informationen (Autor, Titel etc.) müssen in eine .bib-Datei eingetragen werden.

In der Vorlage wird mit der beispielhaften `myBib.bib` gearbeitet, eine beispielhafte Fußnote befindet sich in der `demoSection.tex`.

Zum automatischen Erstellen von bib-Daten aus Internetquellen kann <a href="https://www.zotero.org/">Zotero</a> genutzt werden.

Damit die Bib auch von der LaTeX Engine genutzt werden kann, muss sie zunächst verarbeitet werden.
Dazu (bei Nutzung von MikTex) diese drei Shell-Befehle im Verzeichnis der `main.tex` ausführen;

```console
pdflatex main.tex
biber main
pdflatex main.tex
```

Wenn die in [Setup mit VS Code](https://github.com/Schlump02/barm-latex-vorlagen#setup-mit-vs-code) beschriebenen Schritten befolgt wurden, werden diese Befehle bei einer neuen Erstellung bzw. Veränderung automatisch ausgeführt.

Nach der zweiten PDF-Erstellung sollte das Literaturverzeichnis vorhanden sein, sofern bereits Quellen im Dokument genutzt wurden.

Diese Schritte müssen jedesmal neu ausgeführt werden, wenn sich die Daten in der .bib.Datei ändern.

#### Fußnoten

Kurzbelege in Form von Fußnoten können mit den Befehlen `\directcite` oder `\indirectcite` gesetzt werden, je nachdem, ob es sich um ein wörtliches oder sinngemäßes Zitat handelt. Optional können in den Kurzbelegen individuelle Seitenzahlen angegeben werden, wie auf der Demo-Seite (`demoSection.tex`) gezeigt.

Es ist nicht erforderlich, einen Vollbeleg als Fußnote zu setzen.

### Cleanup-Skript

Im Hauptverzeichnis dieses Repositories befindet sich das Skript `cleanup_helper_files.sh`, welches alte Hilfsdateien wie z.B. Logs entfernt, die von der LaTeX-Engine während der Ausführung erstellt wurden. Unter Windows kann man das Skript einfach doppelt anklicken, um es zu starten.

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

Erweitert durch die Mitwirkenden (Contributors) an diesem Repository.

## Lizenz / License

Creative Commons CC BY 4.0

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a>
