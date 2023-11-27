# barm-latex-vorlagen

## Ziel

LaTeX-Vorlagen für alle Dokumente erstellen, die für das Studium an der BA Rhein-Main benötigt werden (Handout, Seminararbeit, Bachelor-Thesis etc.).

## Nutzung

LaTeX kann von jedem Textverarbeitungsprogramm gelesen werden. Unter Windwos 10 kann beispielsweise folgendes Setup genutzt werden;
1. Installation von <a href="https://miktex.org/download">MikTeX</a>, einer TeX-Engine und TeX-Paketmanager
2. Installation des <a href="https://www.xm1math.net/texmaker/download.html">Texmaker</a> Editors

### Nutzung einer Bib

In den Vorlagen wird für alle eingefügten Quellen automatisch ein Literaturverzeichnis erstellt.
Eine .bib-Datei enthält Die dazu benötigten Informationen.

Damit die Bib auch von der LaTeX Engine genutzt werden kann, muss sie zunächst verarbeitet werden.
Dazu (bei Nutzung von MikTex) diese drei Befehle im Verzeichnis der `main.tex` ausführen;

```console
pdflatex main.tex
biber main
pdflatex main.tex
```

Nach der zweiten PDF-Erstellung sollte das Literaturverzeichnis vorhanden sein, sofern bereits Quellen im Dokument genutzt wurden.

In der Vorlage wird mit der beispielhaften `myBib.bib` gearbeitet, eine beispielhafte Fußnote befindet sich in der `demoSection.tex`.

Zum automatischen Erstellen von bib-Daten aus Internetquellen kann <a href="https://www.zotero.org/">Zotero</a> genutzt werden.

### Fußnoten

Um BA gerechte Fußnoten zu setzen sollte `\fullfootcite{ID_aus_der_bib}` genutzt werden. Sollte die Fußnote zu lang werden muss mit `\newpage` vor dem Satz mit der Fußnote gespielt werden.

## Autoren

Basierend auf einer ursprünglichen Vorlage von Jan Bauer.

Erweitert durch die Mitwirkenden (Collaborators) an diesem Repository.

## Lizenz / License

Creative Commons CC BY 4.0

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a>
