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

Um einen Vollbeleg als Fußnote zu setzen, sollte `\fullfootcite{ID_aus_der_bib}` genutzt werden. Sollte die Fußnote zu lang werden, muss mit `\newpage` vor dem Satz mit der Fußnote gespielt werden.

## Arbeiten mit LaTeX in Visual Studio Code unter macOS und Windows

### Schritt 1: TeX Live herunterladen und installieren
- **Windows-Benutzer:** Laden Sie `texlive.iso` herunter.
- **Mac-Benutzer:** Laden Sie `MacTeX.pkg` herunter.

#### Installationsreferenzen:
- [TeX Live unter Windows](https://tug.org/texlive/acquire-netinstall.html)
- [MacTeX installieren](http://www.tug.org/mactex/)

Für Windows-Benutzer: Fügen Sie nach der Installation die TeX Live-Executable Ihrem System-PATH hinzu.

### Schritt 2: Visual Studio Code herunterladen und installieren
- Laden Sie Visual Studio Code von der [offiziellen Webseite](https://code.visualstudio.com/) herunter und installieren Sie es.

### Schritt 3: LaTeX Workshop in VS Code installieren und konfigurieren
- Nach der Installation öffnen Sie Visual Studio Code.
- Drücken Sie `Shift + Ctrl + P` (Windows) oder `Shift + Cmd + P` (macOS), um alle Befehle anzuzeigen.
- Geben Sie `Open User Settings JSON` ein und öffnen Sie das erste Element.

#### Fügen Sie die folgenden Snippets in Ihre JSON-Datei ein (innerhalb der `{}` Ihrer Datei):
```json
"latex-workshop.latex.tools": [
 {
  "name": "latexmk",
  "command": "latexmk",
  "args": [
   "-synctex=1",
   "-interaction=nonstopmode",
   "-file-line-error",
   "-pdf",
   "-outdir=%OUTDIR%",
   "%DOC%"
  ],
  "env": {}
 },
 {
  "name": "xelatex",
  "command": "xelatex",
  "args": [
   "-synctex=1",
   "-interaction=nonstopmode",
   "-file-line-error",
   "%DOC%"
  ],
  "env": {}
 },
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
  "name": "bibtex",
  "command": "bibtex",
  "args": [
   "%DOCFILE%"
  ],
  "env": {}
 }
],

"latex-workshop.latex.recipes": [
 {
  "name": "pdfLaTeX",
  "tools": [
   "pdflatex"
  ]
 },
 {
  "name": "latexmk 🔃",
  "tools": [
   "latexmk"
  ]
 },
 {
  "name": "xelatex",
  "tools": [
   "xelatex"
  ]
 },
 {
  "name": "pdflatex ➞ bibtex ➞ pdflatex`×2",
  "tools": [
   "pdflatex",
   "bibtex",
   "pdflatex",
   "pdflatex"
  ]
 },
 {
 "name": "xelatex ➞ bibtex ➞ xelatex`×2",
 "tools": [
   "xelatex",
   "bibtex",
   "xelatex",
   "xelatex"
  ]
 }
]

]
```

#### Tools-Konfiguration:
- Fügen Sie Konfigurationen für verschiedene LaTeX-Tools wie `latexmk`, `xelatex`, `pdflatex`, `bibtex` usw. hinzu.

#### Rezepte-Konfiguration:
- Definieren Sie verschiedene Rezepte, wie Ihre LaTeX-Dokumente kompiliert werden sollen, z.B. `pdfLaTeX`, `latexmk`, `xelatex`.

### Kompilieren eines LaTeX-Dokuments
- Öffnen Sie eine `.tex`-Datei oder erstellen Sie eine neue.
- Um die Datei zu kompilieren, drücken Sie `Ctrl + Alt + B` (Windows) oder `Option + Cmd + B` (macOS).
- Sie können auch andere Rezepte aus der Seitenleiste wählen.
- In der oberen rechten Ecke gibt es einen Button, um die PDF-Vorschau zu öffnen.

Dieser Leitfaden hilft Ihnen, den grundlegenden Prozess der Einrichtung und Verwendung von LaTeX in Visual Studio Code unter macOS und Windows zu verstehen. Beachten Sie, dass weitere Anpassungen und erweiterte Konfigurationen möglich sind, je nach Ihren spezifischen Bedürfnissen und Präferenzen.


## Autoren

Basierend auf einer ursprünglichen Vorlage von Jan Bauer.

Erweitert durch die Mitwirkenden (Collaborators) an diesem Repository.

## Lizenz / License

Creative Commons CC BY 4.0

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a>
