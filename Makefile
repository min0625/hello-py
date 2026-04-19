build:
	uv build

run:
	uv run hello-py

fix:
	uv run ruff format .
	uv run ruff check --fix .

check:
	uv run ruff format --check .
	uv run ruff check .
	uv run ty check .
