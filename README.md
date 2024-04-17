# BA Rhein-Main LaTeX Vorlagen

## Motivation

In diesem Repository befinden sich LaTeX-Vorlagen für alle wichtigen Dokumente, die im Laufe Studiums an der BA Rhein-Main erstellt werden müssen. Dazu zählen u.a. [Handout](https://github.com/Schlump02/barm-latex-vorlagen/blob/main/Handout/Beispiel.pdf), [Seminararbeit](https://github.com/Schlump02/barm-latex-vorlagen/blob/main/Seminararbeit/Beispiel.pdf) und [Bachelor Thesis](https://github.com/Schlump02/barm-latex-vorlagen/blob/main/Bachelorarbeit/Beispiel.pdf). Durch die Verwendung dieser Vorlagen spart man sich die lästige Formatierung in Word und kann sich sicher sein, dass die resultierenden Arbeiten die formalen Ansprüche der BA einhalten können.

Zusätzlich bietet diese Vorlage die Möglichkeit, die Wörter im Text der Arbeit automatisch zählen zu lassen. Eine Anleitung dazu befindet sich auf [dieser](https://github.com/Schlump02/barm-latex-vorlagen/wiki/W%C3%B6rter-automatisch-z%C3%A4hlen-in-VS-Code) Wiki-Seite.

> [!TIP]
> Für einen einfachen Einstieg in LaTeX wird es wärmstens empfohlen, diese README (Anleitung) *vollständig* zu lesen.

Trotz größter Sorgfalt kann es zu Fehlern oder veralteten Informationen kommen. In diesem Fall bitte gerne direkt die Ersteller kontaktieren (z.B. Discord: Schlump02) oder ein neues Issue (oben links auf dieser Webseite) aufmachen.

## Hinweis zur Bachelor Thesis

Die Nutzung von TeX/LaTeX zur Erstellung der Bachelor Thesis muss in jedem Fall zuvor mit dem akademischen Betreuer abgesprochen worden sein. Es sollte zudem mit dem betrieblichen Betreuer abgesprochen werden, ob die Erstellung der Thesis nur mit unternehmenseigenen Mitteln (Laptop, internes Git-Repo etc.) erlaubt ist, insbesondere, falls die Thesis unternehmensinterne bzw. vertrauliche Informationen enthält.

## Setup

LaTeX kann von jedem Textverarbeitungsprogramm gelesen werden. Im Folgenden wird beschrieben, wie man Visual Studio Code als Editor und MikTex zum Erstellen der fertigen PDF nutzen kann. Alternativ könnte man z.B. auch [Texmaker](https://www.xm1math.net/texmaker/download.html) als Editor verwenden.

### Vorlage Initialisieren

Am einfachsten kann die Vorlage genutzt werden, indem man dieses Repository mit Git klont und VS Code als Editor verwendet. Wer damit noch keine Erfahrungen hat, kann diese Schritte befolgen;

1. ggf. [Git](https://git-scm.com/downloads) installieren
2. ggf. [VS Code](https://code.visualstudio.com/) installieren
3. [Diesem](https://code.visualstudio.com/docs/sourcecontrol/intro-to-git) kurzen Tutorial folgen

Git(hub) eignet sich besonders, wenn man in Zusammenarbeit mit Anderen ein Dokument erstellt. Dazu einfach ein privates [neues Repository](https://docs.github.com/de/repositories/creating-and-managing-repositories/creating-a-new-repository) erstellen und die benötigten Dateien aus dieser Vorlage dort hinein kopieren. Wenn man anschließend die Gruppenmitglieder [als Mitbearbeiter hinzufügt](https://docs.github.com/de/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-access-to-your-personal-repositories/inviting-collaborators-to-a-personal-repository), können sie sich das Repository klonen und jeder kann Änderungen vornehmen und veröffentlichen.

Zudem stellt ein eigenes Repository auch ein Backup aller früheren Versionen der eigenen Arbeit dar, wodurch Veränderungen leicht nachvollzogen und Datenverluste vermieden werden können.

Wer trotz allem kein Git verwenden will, kann die Dateien auch als zip-Archiv herunterladen. Dazu auf dieser Webseite oben rechts auf den grünen `Code`-Button klicken und `Download ZIP` auswählen.

### Setup mit VS Code

In Visual Studio Code kann die Erweiterung <b>LaTeX Workshop</b> wie folgt genutzt werden;

1. ggf. Installation von [VS Code](https://code.visualstudio.com/)
2. ggf. Installation einer TeX-Engine und einem TeX-Paketmanager, z.B.:
    - für Windows: [MikTeX](https://miktex.org/download)
    - für macOS: [MacTeX](https://tug.org/mactex/mactex-download.html)
    - für Linux: [LiveTeX](https://tug.org/texlive/quickinstall.html)
3. Installation der Erweiterung [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) (am einfachsten direkt im VS Code Marketplace)
4. Anpassung der VS Code-Einstellungen:
    - `Shift + Ctrl + P` (Windows) oder `Shift + Cmd + P` (macOS) für die Befehlseingabe
    - `Open User Settings (JSON)` eingeben und auswählen
    - den untenstehenden JSON-Content in die `settings.json` einfügen und abspeichern (JSON-Formatierung beachten; also den Text direkt innerhalb der äußersten `{}` einfügen)
        - [für Windows](https://github.com/Schlump02/barm-latex-vorlagen/wiki/LaTeX%E2%80%90Workshop-Konfigurationen-f%C3%BCr-verschiedene-Plattformen#setup-f%C3%BCr-windows)
        - [für macOS/Linux](https://github.com/Schlump02/barm-latex-vorlagen/wiki/LaTeX%E2%80%90Workshop-Konfigurationen-f%C3%BCr-verschiedene-Plattformen#setup-f%C3%BCr-linuxmacos)

Ein Dokument kann nun kompiliert werden, indem die entsprechende main.tex geöffnet und dort der grüne Ausführen-Button oben rechts oder `Ctrl + Alt + B` verwendet wird.
Das fertige PDF-Dokument `main.pdf` wird nach einigen Sekunden im selben Ordner generiert worden sein.

> [!TIP]
> Mit einer Anpassung des JSON-Contents können automatisch die Wörter im Dokument gezählt werden. Eine Anleitung dazu befindet sich auf [dieser](https://github.com/Schlump02/barm-latex-vorlagen/wiki/W%C3%B6rter-automatisch-z%C3%A4hlen-in-VS-Code) Wiki-Seite. Zudem gibt es einige nützliche Links und Erweiterungen, wie eine Rechtschreibprüfung, die auf [dieser](https://github.com/Schlump02/barm-latex-vorlagen/wiki/N%C3%BCtzliche-Links-und-Erweiterungen) Wiki-Seite beschrieben sind.

### Lösungen für bekannte Probleme

> [!WARNING]
> Die Ausführung kann fehlschlagen, wenn es Fehler im Dokument gibt oder das PDF-Dokument in einer anderen Anwendung (wie. z.B. dem Adobe Acrobat Reader) geöffnet ist.

Eine Sammlung von Problemlösungen befindet sich auf [dieser](https://github.com/Schlump02/barm-latex-vorlagen/wiki/L%C3%B6sungen-f%C3%BCr-bekannte-Fehler) Wiki-Seite.

## Nutzung

Jeder logische Abschnitt der Arbeit (Kapitel, Verzeichnisse etc.) befindet sich in einer eigenen .tex-Datei im Ordner `sections`.
Diese werden von der `main.tex` mit dem `\include`-Befehl importiert. Zudem definiert die `main.tex` die Formatierung und den Aufbau des Dokuments (Kopfzeilen, Seitenzahlen, Zitierweise uvm.).

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

Diese Schritte müssen jedesmal neu ausgeführt werden, wenn sich die Daten in der .bib-Datei ändern.

#### Fußnoten

Kurzbelege in Form von Fußnoten können mit den Befehlen `\directcite` oder `\indirectcite` gesetzt werden, je nachdem, ob es sich um ein wörtliches oder sinngemäßes Zitat handelt. Optional können in den Kurzbelegen individuelle Seitenzahlen angegeben werden, wie auf der Demo-Seite (`demoSection.tex`) gezeigt.

Um eine Fußnote in einer Tabellen- oder Bildunterschrift zu setzen, muss `\captionwithfootnotemark` und später `\footcitetext` oder `\footnotetext` genutzt werden. Die genaue Verwendung dieser Befehle wird in der `demoSection.tex` gezeigt. `\directcite` oder `\indirectcite` funktionieren in diesem Fall nicht korrekt. Wenn die in eckigen Klammern angegebenen Argumente in `\footcitetext[Vgl.][\printfield{pages}]{...}\\` nicht verwendet werden, sollten die eckigen Klammern zwar leer gelassen, aber nicht entfernt werden.

Es ist nicht erforderlich, einen Vollbeleg als Fußnote zu setzen.

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

## Barrierefreiheits- und PDF/A-Standards

> [!NOTE]  
> Die BA macht zum PDF-Standard keine Vorgaben. Der folgende Abschnitt ist rein informativ und auf dem Stand vom Februar 2024.

Es gibt bestimmte PDF-Standards, die auf Langzeitarchivierung (PDF/A) oder auf Barrierefreiheit (PDF/UA) oder beides (z.B. PDF/A-2a) ausgelegt sind.

Leider ist es zurzeit noch nicht möglich, mithilfe von LaTeX ein barrierefreies PDF zu erstellen. Das [LaTeX Project](https://www.latex-project.org/) hat es sich im Rahmen des Vorhabens [Tagged PDF](https://www.latex-project.org/publications/2020-FMi-TUB-tb129mitt-tagpdf.pdf) zum Ziel gesetzt, bis 2025 umfassende Barrierefreiheitsstandards in den LaTeX-Kernel zu integrieren.

Einige PDF/A-Standards sind jedoch bereits heute erreichbar. [Dieser](https://texwelt.de/fragen/758/pdfa-konforme-dokumente-mit-latex) Thread zeigt konkrete Schritte zur Umsetzung auf. Eine Übersicht und Erklärung zu PDF/A-Standards findet sich z.B. [hier](https://www.bundesarchiv.de/DE/Content/Downloads/Anbieten/Behoerdenberatung/beratungsangebote-einfuehrung-eab-empfehlungen-pdf-a-versionen.pdf?__blob=publicationFile).

## Autoren

Basierend auf einer ursprünglichen Vorlage von Jan Bauer.

Erweitert durch die Mitwirkenden (Contributors) an diesem Repository.

## Lizenz / License

Creative Commons CC BY 4.0

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a>
