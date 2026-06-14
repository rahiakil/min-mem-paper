# Min-Mem: Lexical Minification for LLM Agent Memory

Six-page research paper with reproducible figures and statistics from the [min-mem](https://github.com/rahiakil/min-mem) implementation.

## Build

```bash
# Ensure min-mem experiments have been run
cd ../min-mem
.venv/bin/python experiments/run_benchmark.py
.venv/bin/python experiments/generate_figures.py

# Build paper
cd ../min-mem-paper
make paper
```

Output: `min-mem-lexical-minification.pdf` (6 pages)

## Presentation (Marp)

Slides live in Obsidian: `~/obsidian2nd/Second Brain/min-mem/Min-Mem - Paper Summary.md`

```bash
# HTML (no Chrome required)
marp --no-stdin "path/to/Min-Mem - Paper Summary.md" -o min-mem-presentation.html

# PDF (requires Chrome/Chromium)
marp --no-stdin "path/to/Min-Mem - Paper Summary.md" --pdf -o min-mem-presentation.pdf
```

Pre-built: `min-mem-presentation.html`

## Structure

```
paper.tex              # 6-page two-column article
scripts/
  generate_paper.py    # Injects stats + syncs figures from min-mem
figures/               # Auto-synced from min-mem/experiments/figures
generated/
  stats.tex            # Auto-generated LaTeX macros
Makefile
```

## Appendix / Source Code

Full implementation, dictionary, tests, and experiment harness:

**https://github.com/rahiakil/min-mem**

## Citation

```bibtex
@misc{minmem2026,
  title={Min-Mem: Semantic-Preserving Lexical Minification for LLM Agent Memory Storage},
  author={Min-Mem Research Group},
  year={2026},
  url={https://github.com/rahiakil/min-mem-paper}
}
```
