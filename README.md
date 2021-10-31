# ✨ Sparkler ✨

Be warned, this is a new project and things are very much in flux at the moment.

```bash
docker build --build-arg GIT_SHA=$(git rev-parse --short=8 HEAD) -t ghcr.io/wilhelm-murdoch/sparkler:latest .
```

```bash
docker run -it --rm --name chamber -p 8000:8000 ghcr.io/wilhelm-murdoch/sparkler:latest
```