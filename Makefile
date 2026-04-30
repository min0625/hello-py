build:
	uv build

run:
	uv run hello-py

check:
	uv run pre-commit run --all-files
