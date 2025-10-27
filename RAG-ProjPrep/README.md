all packages are installed using uv

.venv needs to be activated first:

```bash
source .venv/bin/activate

##if Select kernel doesnt show your venv, run the following commands:
  459  uv add --dev ipykernel
  460  python -m ipykernel install --user --name "venv" --display-name "Python(venv - rag-projprep)"