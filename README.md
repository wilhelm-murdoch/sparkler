# ✨ Sparkler ✨

```bash
docker build --build-arg GIT_SHA=$(git rev-parse --short=8 HEAD) -t ghcr.io/wilhelm-murdoch/sparkler:latest .
```

```bash
docker run -it --rm --name chamber -p 8000:8000 ghcr.io/wilhelm-murdoch/sparkler:latest
```