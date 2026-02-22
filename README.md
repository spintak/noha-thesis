# NOHA Thesis Template

A ready-to-use [Typst](https://typst.app) template for the NOHA Master's in International Humanitarian Action (University of Groningen). It handles page layout, numbering, title page, table of contents, lists of figures/tables, abbreviations, a key-concepts glossary, bibliography, and appendices — so you can focus entirely on writing.

### Why not just use Word or Google Docs?

This is a fair question. Word and Google Docs are familiar and work well for shorter documents. For a master's thesis, they start to create friction: formatting breaks unexpectedly, numbering gets out of sync, the bibliography requires a separate plugin, and the file becomes fragile the larger it gets. Typst takes a different approach — you write plain text with simple formatting marks, and Typst compiles it into a polished PDF. The result is:

- **Consistent formatting**, always. You never accidentally change a margin or font by mis-clicking.
- **Automatic everything** — page numbers, table of contents, figure numbers, citations, and the List of Abbreviations are all generated for you.
- **Stable files** that work reliably even at 80+ pages.
- **Version control with Git** — every change is tracked, nothing is ever lost, and you can always go back.

The trade-off is a short learning curve. This README walks you through everything you need.

---

## Table of Contents

1. [Prerequisites](#1-prerequisites)
2. [Getting the Template](#2-getting-the-template)
3. [Project Structure](#3-project-structure)
4. [First Steps: Personalise Your Thesis](#4-first-steps-personalise-your-thesis)
5. [Writing the Frontmatter](#5-writing-the-frontmatter)
6. [Writing Your Chapters](#6-writing-your-chapters)
7. [Adding a New Chapter](#7-adding-a-new-chapter)
8. [Adding Appendices](#8-adding-appendices)
9. [Abbreviations and Key Concepts](#9-abbreviations-and-key-concepts)
10. [References and Bibliography](#10-references-and-bibliography)
11. [Replacing Logo Images](#11-replacing-logo-images)
12. [Compiling to PDF](#12-compiling-to-pdf)
13. [Saving Your Work with Git](#13-saving-your-work-with-git)
14. [Tips and Troubleshooting](#14-tips-and-troubleshooting)
15. [Setting Up GitHub Copilot](#15-setting-up-github-copilot)
16. [The Examples Chapter](#16-the-examples-chapter)
17. [Further Reading](#17-further-reading)

---

## 1. Prerequisites

You need a few free tools installed on your computer before you start. If any of the concepts below are new to you, read the short explanations — they will make the rest of the guide much clearer.

### What is a terminal?

A *terminal* (also called a command line or shell) is a text-based way of controlling your computer. Instead of clicking icons, you type short commands and press Enter. It sounds intimidating but you will only need a handful of commands.

- **macOS**: Open **Terminal** — press `Cmd+Space`, type `Terminal`, press Enter.
- **Windows**: Open **PowerShell** — press the Windows key, type `PowerShell`, press Enter. Alternatively, install [Windows Terminal](https://aka.ms/terminal) for a better experience.
- **VS Code has a built-in terminal**: Once VS Code is open, press `` Ctrl+` `` (backtick) to open one without leaving the editor. This is the easiest option.

### What is GitHub?

GitHub is a website where code and text files are stored and shared. Think of it like Google Drive, but designed for tracking every change ever made to a file. The thesis template lives on GitHub — you will make your own personal copy and store your thesis there so it is always backed up online.

You need a free GitHub account. If you do not have one: [github.com/signup](https://github.com/signup). Use your university email address — it qualifies you for free access to GitHub Copilot (see [Section 15](#15-setting-up-github-copilot)).

### Typst (the document compiler)

Typst is the tool that turns your plain-text `.typ` files into a formatted PDF. It is a *compiler* — you write the content, Typst handles the layout. Download and install the latest version from [typst.app/download](https://typst.app/download) (available for Windows, macOS, and Linux). After installation, open a terminal and verify it works:

```
typst --version
```

You should see something like `typst 0.14.0`.

### Git (version control)

Git is the tool that tracks every change you make to your files. It runs locally on your computer and is separate from GitHub (GitHub is the online storage; Git is the local tool that talks to it).

- **macOS / Linux**: Git is usually already installed. Check with `git --version`.
- **Windows**: Download from [git-scm.com](https://git-scm.com/). During installation, accept the default options.

### A text editor — VS Code

VS Code is a free text editor made by Microsoft. Unlike Word, it does not show you a formatted page while you type — instead, you write plain text with simple marks (like `=` for headings and `*bold*` for bold), and Typst renders the formatted result in a live preview panel beside your writing.

Download VS Code from [code.visualstudio.com](https://code.visualstudio.com/).

Once installed, add the **Tinymist Typst** extension for live PDF preview:
1. Open VS Code.
2. Click the **Extensions** icon in the left sidebar (or press `Ctrl+Shift+X` / `Cmd+Shift+X`).
3. Search for **Tinymist Typst** and click **Install**.

This gives you a split-screen experience: your text on the left, the formatted PDF on the right, updating as you type — similar to a live preview in Google Docs.

---

## 2. Getting the Template

### Step 1 — Fork the repository

A *repository* (or *repo*) is just a folder of files stored on GitHub, with a full history of every change. A *fork* is your own personal copy of that repository, where you can make changes freely without affecting the original.

1. Go to the template repository on GitHub.
2. Click the **Fork** button in the top-right corner.
3. GitHub will create a copy under your own account (e.g. `github.com/your-username/noha-thesis-template`).

### Step 2 — Clone your fork to your computer

*Cloning* downloads your fork so you can work on it locally. Replace `your-username` with your actual GitHub username:

```bash
git clone https://github.com/your-username/noha-thesis-template.git
```

This creates a folder called `noha-thesis-template` on your computer. Navigate into it:

```bash
cd noha-thesis-template
```

---

## 3. Project Structure

Here is what the folder contains and what each part is for:

```
noha-thesis-template/
├── main.typ                ← Master file: assembles the whole thesis
├── template.typ            ← Page layout and styling (don't edit this)
├── glossary.typ            ← All your abbreviations and key concepts
├── references.bib          ← Your bibliography entries (BibTeX format)
│
├── assets/
│   ├── uni-logo.jpg        ← University banner (replace with yours if needed)
│   └── noha-logo.png       ← NOHA logo (replace if needed)
│
├── frontmatter/
│   ├── abstract.typ        ← Abstract
│   ├── acknowledgements.typ
│   ├── dedication.typ
│   ├── abbreviations.typ   ← Auto-generated list of abbreviations (don't edit)
│   └── concepts.typ        ← Auto-generated key concepts list (don't edit)
│
├── chapters/
│   ├── 01_introduction.typ
│   ├── 02_theory.typ
│   ├── 03_empirical.typ
│   ├── 04_discussion.typ
│   └── 05_conclusions.typ
│
└── appendices/
    ├── appendix-a.typ
    ├── appendix-b.typ
    └── appendix-c.typ
```

**The only files you will edit regularly:**

| File | What to change |
|---|---|
| `main.typ` | Title, author name, supervisor, date; add/remove chapter imports |
| `glossary.typ` | Add abbreviations and key concepts |
| `references.bib` | Add bibliography entries |
| Everything in `frontmatter/` | Write your abstract, acknowledgements, dedication |
| Everything in `chapters/` | Write your thesis content |
| Everything in `appendices/` | Write your appendix content |

---

## 4. First Steps: Personalise Your Thesis

Open `main.typ` and find the `title-page` block near the top. Replace the placeholder values with your own details:

```typst
#title-page(
  title: [Your Full Thesis Title Here],
  subtitle: [An Optional Subtitle],
  author: "Your Full Name",
  student-number: "S1234567",
  supervisor: "Dr Supervisor Name",
  supervisor-affiliation: "University of Groningen",
  month-year: "June 2026",
)
```

Save the file — if you have a live preview open (see [Compiling to PDF](#12-compiling-to-pdf)), the title page will update immediately.

---

## 5. Writing the Frontmatter

Each frontmatter file is in the `frontmatter/` folder. Open them and replace the placeholder `#lorem(...)` lines with your real text.

### Abstract (`frontmatter/abstract.typ`)

```typst
#heading(level: 1, numbering: none, outlined: true)[Abstract]

Write your abstract here. Summarise the research question, methodology,
findings, and conclusions in approximately 250–300 words.
```

### Acknowledgements (`frontmatter/acknowledgements.typ`)

Replace the lorem placeholder with your acknowledgements text.

### Dedication (`frontmatter/dedication.typ`)

Replace the lorem placeholder with your dedication (typically a short sentence or poem).

> **Note:** `frontmatter/abbreviations.typ` and `frontmatter/concepts.typ` are generated automatically from `glossary.typ`. Do not edit them directly.

---

## 6. Writing Your Chapters

Open any file in the `chapters/` folder. The structure uses `=` signs to mark headings at different levels:

```typst
= Chapter Title          ← Level 1 (new page, numbered: 1, 2, 3…)

== Section Heading       ← Level 2 (numbered: 1.1, 1.2…)

=== Subsection Heading   ← Level 3 (numbered: 1.1.1, 1.1.2…)

Your paragraph text goes here. Just type normally. Leave a blank
line between paragraphs.
```

### Useful formatting

**Bold text:** `*bold*`

**Italic text:** `_italic_`

**Block quote:**
```typst
#quote[
  The quoted text goes here.
]
```

**Highlighted emphasis box** (good for research questions):
```typst
#block_emph[
  What is the impact of AI tools on humanitarian coordination in
  complex emergency settings?
]
```

**Footnote:**
```typst
This claim requires further evidence.#footnote[See Smith (2023) for a
detailed treatment of this issue.]
```

**Cross-reference to a figure or table:**
```typst
As shown in @fig-workflow, the process involves three stages.
```

**Citation:**
```typst
This finding is consistent with earlier work @smith2023.
```

---

## 7. Adding a New Chapter

1. **Create the file.** Copy an existing chapter as a starting point, e.g.:

   ```bash
   cp chapters/05_conclusions.typ chapters/06_appendix-chapter.typ
   ```

   Or simply create a new file `chapters/06_new-chapter.typ` in your text editor.

2. **Add the import to `main.typ`.** Find the chapters block and add your new file:

   ```typst
   #include "chapters/01_introduction.typ"
   #include "chapters/02_theory.typ"
   #include "chapters/03_empirical.typ"
   #include "chapters/04_discussion.typ"
   #include "chapters/05_conclusions.typ"
   #include "chapters/06_new-chapter.typ"   ← add this line
   ```

3. **Write your content** in the new file, starting with a level-1 heading:

   ```typst
   #import "/template.typ": block_emph, lorem

   = Chapter Title

   Your text here.
   ```

The chapter will appear automatically in the Table of Contents and page numbering will adjust.

---

## 8. Adding Appendices

The process is the same as adding a chapter, but for the `appendices/` folder.

1. Create `appendices/appendix-d.typ`.
2. In `main.typ`, find the appendices section and add:

   ```typst
   #include "appendices/appendix-a.typ"
   #include "appendices/appendix-b.typ"
   #include "appendices/appendix-c.typ"
   #include "appendices/appendix-d.typ"   ← add this line
   ```

> **Tip:** Appendices are already wired up in `main.typ` after the bibliography. Add or remove `#include` lines there as needed.

---

## 9. Abbreviations and Key Concepts

All abbreviations and key concepts are defined in one place: `glossary.typ`.

### Adding an abbreviation

Open `glossary.typ` and add an entry to `abbreviation-list`:

```typst
#let abbreviation-list = (
  (key: "ai",    short: "AI",    long: "Artificial Intelligence"),
  (key: "unhcr", short: "UNHCR", long: "United Nations High Commissioner for Refugees"),
  // Add yours here:
  (key: "ngo",   short: "NGO",   long: "Non-Governmental Organisation"),
)
```

Each field:
- `key` — a unique lowercase identifier you use to reference it in text (no spaces)
- `short` — the abbreviation as it appears in the text
- `long` — the full expanded form

### Referencing an abbreviation in your text

Use `@key` to reference it. On first use, Typst will print the full form followed by the abbreviation in brackets; on subsequent uses, only the abbreviation:

```typst
The @ngo coordinated the response.
// First use:  "Non-Governmental Organisation (NGO) coordinated the response."
// Later uses: "NGO coordinated the response."
```

The **List of Abbreviations** in the frontmatter automatically shows only the entries you have actually referenced.

### Adding a key concept

Add an entry to `concept-list` in `glossary.typ`:

```typst
#let concept-list = (
  (
    key: "do-no-harm",
    short: "Do No Harm",
    description: [A foundational principle requiring that interventions must
      not cause unintended harm to affected populations.],
  ),
  // Add yours here:
  (
    key: "accountability",
    short: "Accountability to Affected Populations",
    description: [Your definition here.],
  ),
)
```

Reference it in your text with `@accountability`.

---

## 10. References and Bibliography

> **Strongly recommended:** Use a reference manager such as [Zotero](https://www.zotero.org/) (free) to collect and organise your sources. Zotero can export your entire library — or a selected collection — directly as a `references.bib` file. Drop that file into the project folder to replace the existing one. From then on, whenever you add a new source, correct a detail, or remove a duplicate in Zotero, simply re-export and overwrite `references.bib`. This keeps your bibliography accurate and consistent without ever editing the file by hand.

The template uses BibTeX format for references (the standard for academic writing). If you are adding entries manually, open `references.bib` and add your sources as shown below.

### Adding a book

```bibtex
@book{sphere2018,
  author    = {{Sphere Association}},
  title     = {The Sphere Handbook: Humanitarian Charter and Minimum Standards in Humanitarian Response},
  year      = {2018},
  publisher = {Sphere Association},
  address   = {Geneva},
}
```

### Adding a journal article

```bibtex
@article{smith2023,
  author  = {Smith, Jane and Doe, John},
  title   = {AI in Humanitarian Response: Promises and Pitfalls},
  journal = {Journal of Humanitarian Studies},
  year    = {2023},
  volume  = {12},
  number  = {3},
  pages   = {45--67},
}
```

### Citing in your text

```typst
Several authors have highlighted this tension @smith2023.

As noted in the Sphere Handbook @sphere2018, minimum standards provide a baseline.
```

The bibliography at the end of the thesis is generated and formatted (APA style) automatically.

---

## 11. Replacing Logo Images

The title page uses two image files stored in `assets/`:

| File | What it is |
|---|---|
| `assets/uni-logo.jpg` | University banner (the wide RUG banner at the top) |
| `assets/noha-logo.png` | NOHA programme logo |

To replace them:
1. Obtain the correct logo files from your institution.
2. Rename them to match the existing filenames exactly (`uni-logo.jpg` and `noha-logo.png`), or update the filenames referenced in `template.typ` inside the `title-page` function.
3. Drop the new files into the `assets/` folder, replacing the old ones.

> **Tip:** If your image has a different extension (e.g. `.jpeg` instead of `.jpg`), update the reference in `template.typ`:
> ```typst
> #image("assets/uni-logo.jpeg", width: 16cm)
> ```

---

## 12. Compiling to PDF

### Option A — Live preview in VS Code (recommended while writing)

1. Open the project folder in VS Code: **File → Open Folder** and select the `noha-thesis-template` folder.
2. Open `main.typ` by clicking it in the file list on the left.
3. Click the small preview icon in the top-right corner of the editor (it looks like a split screen), or press `Ctrl+Shift+P` / `Cmd+Shift+P` and search for **Typst: Preview**.
4. A live PDF preview opens beside your editor and updates as you type.

> **Tip:** If you do not see the preview icon, make sure the Tinymist Typst extension is installed (see [Section 1](#1-prerequisites)).

### Option B — Compile from the terminal

Open a terminal in the project folder and run:

```bash
typst compile main.typ
```

This produces `main.pdf` in the same folder. To automatically recompile whenever you save a file:

```bash
typst watch main.typ
```

Press `Ctrl+C` to stop watching.

---

## 13. Saving Your Work with Git

### What is Git and why does it matter?

Git is a *version control* system. Every time you run a commit (explained below), Git saves a complete snapshot of your project at that moment. You can always go back to any previous snapshot — it is like having unlimited, labelled undo history that is stored permanently and backed up to GitHub.

For a thesis, this means:
- You never lose work, even if your laptop breaks or a file gets corrupted.
- You can experiment freely — if something goes wrong, reverting is one command.
- You always have an offsite backup on GitHub.

The three commands you will use every session are `git add`, `git commit`, and `git push`. That is all.

### Check what has changed

```bash
git status
```

This lists the files you have modified since your last save.

### Stage your changes

Tell Git which files to include in your next save:

```bash
git add .
```

The `.` means "all changed files". To add a specific file only:

```bash
git add chapters/01_introduction.typ
```

### Commit (save a snapshot)

A *commit* is a labelled snapshot of your project. Write a short description of what you changed:

```bash
git commit -m "Draft introduction and add UNHCR abbreviation"
```

### Push to GitHub

Upload your commits to your GitHub fork so they are backed up online:

```bash
git push
```

### Recommended workflow summary

```bash
# At the end of each writing session:
git status                          # see what changed
git add .                           # stage everything
git commit -m "Brief description"   # save a snapshot
git push                            # back up to GitHub
```

---

## 14. Tips and Troubleshooting

**My abbreviation doesn't appear in the List of Abbreviations.**
Make sure you have referenced it in the text at least once using `@key`. The list only shows entries that are actually used.

**I get a "file not found" error.**
Check that the filename and path in your `#include` statement exactly match the file in the folder (Typst is case-sensitive).

**My citation doesn't appear.**
Make sure the key in your `.bib` file (the first field after `@book{` or `@article{`) exactly matches what you wrote in `@key` in your text.

**The title page logos look wrong or are missing.**
Check that the image files exist in `assets/` and that the filenames match those referenced in `template.typ`.

**I want to remove a section I don't need (e.g. List of Figures).**
In `main.typ`, find the corresponding block and comment it out by adding `//` at the start of the line, or delete it entirely.

**I accidentally broke something and want to go back.**
Run `git log` to see your recent commits and their IDs, then:
```bash
git checkout <commit-id> -- path/to/file.typ
```
This restores a single file to how it was at that commit.

---

## 15. Setting Up GitHub Copilot

GitHub Copilot is an AI assistant built into VS Code. It can help you draft and refine writing, fix Typst syntax errors, suggest glossary entries, and answer questions about your document — all without leaving your editor.

### Step 1 — Get access (free for students)

If you are a current student, Copilot is free through the **GitHub Education** programme.

1. Go to [education.github.com/benefits](https://education.github.com/benefits).
2. Click **Get student benefits** and sign in with your GitHub account.
3. Verify your student status (a university email address or enrolment document is usually sufficient).
4. Once approved, Copilot is automatically enabled on your account.

If you are not a student, you can start a free 30-day trial or subscribe at [github.com/features/copilot](https://github.com/features/copilot).

### Step 2 — Install the VS Code extension

1. Open VS Code.
2. Click the **Extensions** icon in the left sidebar (or press `Ctrl+Shift+X` / `Cmd+Shift+X`).
3. Search for **GitHub Copilot** and click **Install** on the result published by GitHub.
4. Optionally also install **GitHub Copilot Chat** (same publisher) — this adds a chat panel for longer questions.

### Step 3 — Sign in to GitHub

1. After installing, VS Code will show a notification asking you to sign in.
2. Click **Sign in to GitHub** and follow the browser prompt to authorise VS Code.
3. Once authorised, return to VS Code — a small Copilot icon will appear in the bottom status bar confirming it is active.

### Using Copilot for writing tasks

**Inline suggestions** appear automatically as you type. Press `Tab` to accept a suggestion, or keep typing to ignore it.

**Copilot Chat** (the chat panel, opened with `Ctrl+Alt+I` / `Cmd+Alt+I`) is more useful for longer tasks. Some things you can ask it:

- *"Rewrite this paragraph to be more concise."*
- *"Suggest three subheadings for a section on data collection methods."*
- *"What is the correct Typst syntax for a figure with a caption?"*
- *"Add a BibTeX entry for a UN report from 2022."*
- *"Explain what this block of Typst code does."*

**Selecting text before asking** gives Copilot context. Highlight a paragraph or code block, then open the chat — it will work on exactly what you selected.

> **Note on academic integrity:** Copilot is a writing *assistant*, not a ghostwriter. Use it to improve your phrasing, fix formatting, or get unstuck — but the ideas, arguments, and analysis must be your own. Check your institution's policy on AI tool use before submission.

---

## 16. The Examples Chapter

The file `chapters/examples.typ` is included in the compiled document as a reference chapter. It is **not** part of your thesis content — it demonstrates every formatting feature the template supports, so you can see exactly how things look before using them in your own writing.

It covers:

- Footnotes and inline citations
- Block quotes with attribution
- The `#block_emph` emphasis box
- Manually typed tables and CSV-driven tables
- Cross-references to figures, tables, and labelled headings
- All glossarium reference patterns (`@key`, `@key:short`, `@key:long`, `@key:pl`)
- Text formatting (bold, italic, small caps, inline code)
- Bullet, numbered, and mixed lists
- Figures with captions
- Image grids

Once you are familiar with the features you need, **delete or comment out** the `#include "chapters/examples.typ"` line in `main.typ` so it does not appear in your final thesis.

---

## 17. Further Reading

If you want to go deeper on any of the tools used in this template, these are the best starting points.

### Typst
- [Typst Tutorial](https://typst.app/docs/tutorial/) — official step-by-step guide, takes about 30 minutes and covers everything you need for day-to-day writing
- [Typst Reference](https://typst.app/docs/reference/) — complete documentation for every function and feature
- [Typst community forum](https://forum.typst.app/) — active community for questions and examples

### Git and GitHub
- [GitHub Quickstart](https://docs.github.com/en/get-started/start-your-journey/hello-world) — a 10-minute guided introduction to repositories, commits, and branches on GitHub
- [Git — the simple guide](https://rogerdudler.github.io/git-guide/) — a single-page plain-English overview of Git's core concepts and commands
- [Pro Git book](https://git-scm.com/book/en/v2) (free online) — the definitive Git reference; chapters 1–3 cover everything a thesis writer needs
- [GitHub Desktop](https://desktop.github.com/) — a visual app for Git if you prefer not to use the terminal (point-and-click interface for add/commit/push)

### VS Code
- [VS Code — Getting Started](https://code.visualstudio.com/docs/getstarted/userinterface) — a short visual tour of the interface
- [VS Code tips for writers](https://code.visualstudio.com/docs/editor/codebasics) — covers find/replace, multi-cursor, and other features useful for working with text files

### Zotero (reference management)
- [Zotero Quick Start Guide](https://www.zotero.org/support/quick_start_guide) — how to install, collect sources, and export a `.bib` file for use with this template
- [Zotero Better BibTeX plugin](https://retorque.re/zotero-better-bibtex/) — highly recommended plugin that gives you stable citation keys and automatic BibTeX export whenever your library changes

### Glossarium (abbreviations and glossary)
- [Glossarium on Typst Universe](https://typst.app/universe/package/glossarium) — documentation for all `@key` reference patterns used in this template

---

## License

This template is released under the [MIT License](LICENSE). You are free to use, copy, modify, and distribute it — including for your own thesis — with no restrictions. You do not need to ask for permission.
