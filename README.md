```bash
docker build --build-arg GIT_SHA=$(git rev-parse --short=8 HEAD) -t ghcr.io/wilhelm-murdoch/sparkler:latest .
```

```bash
docker run -it --rm --name chamber -p 8000:8000 ghcr.io/wilhelm-murdoch/sparkler:latest
```

<img src="http://localhost:8000/generate" />

```css
div {
  padding: 10px;
  display: inline-block;
}

svg + svg {
  margin-left: 20px;
}

.sparkline {
  fill: none;
}

.sparkline--red {
  stroke: #dc2b33;
}

.sparkline--red.sparkline--filled {
  fill: rgba(220, 43, 51, 0.3);
}

.sparkline--blue {
  stroke: #3d85de;
}

.sparkline--blue.sparkline--filled {
  fill: rgba(61, 133, 222, 0.3);
}

.sparkline--green {
  stroke: #4c9b4c;
}

.sparkline--green.sparkline--filled {
  fill: rgba(76, 155, 76, 0.3);
}

.sparkline--gray {
  stroke: #777;
}

.sparkline--gray.sparkline--filled {
  fill: rgba(119, 119, 119, 0.3);
}

.sparkline--orange {
  stroke: #e36023;
}

.sparkline--orange.sparkline--filled {
  fill: rgba(227, 96, 35, 0.3);
}

.sparkline--purple {
  stroke: #573585;
}

.sparkline--purple.sparkline--filled {
  fill: rgba(87, 53, 133, 0.3);
}

.sparkline--yellow {
  stroke: #fdd700;
}

.sparkline--yellow.sparkline--filled {
  fill: rgba(253, 215, 0, 0.3);
}

.sparkline--pink {
  stroke: #db3b9e;
}

.sparkline--pink.sparkline--filled {
  fill: rgba(219, 59, 158, 0.3);
}
```

```html
<div>
  <svg class="sparkline sparkline--red" width="100" height="30" stroke-width="3"></svg>

  <svg class="sparkline sparkline--red sparkline--filled" width="100" height="30" stroke-width="3"></svg>
</div>

<div>
  <svg class="sparkline sparkline--blue" width="100" height="30" stroke-width="3"></svg>

  <svg class="sparkline sparkline--blue sparkline--filled" width="100" height="30" stroke-width="3"></svg>
</div>

<div>
  <svg class="sparkline sparkline--green" width="100" height="30" stroke-width="3"></svg>

  <svg class="sparkline sparkline--green sparkline--filled" width="100" height="30" stroke-width="3"></svg>
</div>

<div>
  <svg class="sparkline sparkline--gray" width="100" height="30" stroke-width="3"></svg>

  <svg class="sparkline sparkline--gray sparkline--filled" width="100" height="30" stroke-width="3"></svg>
</div>

<div>
  <svg class="sparkline sparkline--orange" width="100" height="30" stroke-width="3"></svg>

  <svg class="sparkline sparkline--orange sparkline--filled" width="100" height="30" stroke-width="3"></svg>
</div>

<div>
  <svg class="sparkline sparkline--purple" width="100" height="30" stroke-width="3"></svg>

  <svg class="sparkline sparkline--purple sparkline--filled" width="100" height="30" stroke-width="3"></svg>
</div>

<div>
  <svg class="sparkline sparkline--yellow" width="100" height="30" stroke-width="3"></svg>

  <svg class="sparkline sparkline--yellow sparkline--filled" width="100" height="30" stroke-width="3"></svg>
</div>

<div>
  <svg class="sparkline sparkline--pink" width="100" height="30" stroke-width="3"></svg>

  <svg class="sparkline sparkline--pink sparkline--filled" width="100" height="30" stroke-width="3"></svg>
</div>
```