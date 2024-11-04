# UMB thesis template in LaTeX

## Ukážkový súbor
<!-- > [!NOTE] Ukážkový súbor -->
> [📄 Ukážkový vygenerovaný súbor PDF](out/main.pdf)

<br>

## Tutoriál
Stačí postupovať podľa tutoriálu. Nižšie uvedené informácie majú služiť ako pomôcky alebo nastavenia.

> https://mathjiajia.github.io/vscode-and-latex/

<br>

## Potrebné závislosti

### LaTeX
- Inštalačný súbor pre Windows (inštalácia trvá dlho, aj viacej než 3 hodiny) https://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe
- Inštalačný súbor pre ostatné operačné systémy (OS) https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

### VSCode
- Odkaz na stiahnutie rôznych verzií https://code.visualstudio.com/download
- Extensions
	- LaTeX Workshop https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop
- Vložiť kód do nastavení VSCode `settings.json`
	
	Súbor `settings.json` otvoríme pomocou `Ctrl+Shift+P` a zadaním `Open user settings (JSON)` do vyhľadávania. Po stlačení `Enter` sa nám otvorí súbor `settings.json`.
	<details><summary>Stlačením zobrazíte/skryjete kód</summary><p>

	```json
	"latex-workshop.latex.external.build.args": [
		"-f",
		"-output-directory out"
	],
	"latex-workshop.latex.tools": [
		{
			"name": "xelatex",
			"command": "xelatex",
			"args": [
				"-synctex=1",
				"-interaction=nonstopmode",
				"-file-line-error",
				"-output-directory=out",
				"%DOC%"
			],
			"env": {}
		},
		{
			"name": "bibtex",
			"command": "bibtex",
			"args": [
				"out/%DOCFILE%"
			],
			"env": {}
		},
		{
			"name": "makeglossaries",
			"command": "makeglossaries",
			"args": [
				"-dout",
				"%DOCFILE%"
			],
			"env": {}
		},
	],
	"latex-workshop.latex.recipes": [
		{
			"name": "xelatex",
			"tools": [
				"xelatex"
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
		},
		{
			"name": "xelatex ➞ makeglossaries ➞ xelatex`×2",
			"tools": [
				"xelatex",
				"makeglossaries",
				"xelatex",
				"xelatex"
			]
		},
		{
			"name": "xelatex ➞ bibtex ➞ makeglossaries ➞ xelatex`×2",
			"tools": [
				"xelatex",
				"bibtex",
				"makeglossaries",
				"xelatex",
				"xelatex"
			]
		},
	],
	"[latex]": {
		"editor.defaultFormatter": "James-Yu.latex-workshop"
	},
	"latex-workshop.latex.outDir": "./out/",
	"[bibtex]": {
		"editor.defaultFormatter": "James-Yu.latex-workshop"
	},
	"workbench.editorAssociations": {
		"*.pdf": "latex-workshop-pdf-hook"
	},
	"latex-workshop.intellisense.file.base": "both",
	"latex-workshop.intellisense.update.delay": 500,
	"latex-workshop.latex.autoBuild.run": "onSave",
	"latex-workshop.latex.recipe.default": "lastUsed"
	```
	</p></details>

<br>

## Možné problémy
> [!WARNING] Pri spúšťaní môžu nastať nasledovné problémy.

### Linux
Chyba | Riešenie | Riešenie
|-|-|-|
Package fontspec: The font "Times New Roman" cannot be found.LaTeX | Inštalácia fontu "Times New Roman" | Inštalácia fontu "Times New Roman"

