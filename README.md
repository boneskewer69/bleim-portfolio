# 1bleim/portfolio

[![nginx](https://shields.fullbyte.de/badge/nginx-1.31.1-%23009639?logo=nginx)](https://nginx.org)
[![Docker](https://shields.fullbyte.de/badge/container-alpine-%232496ED?logo=docker)](https://hub.docker.com/_/nginx)
[![Renovate](https://shields.fullbyte.de/badge/renovate-enabled-%231A1F6C?logo=renovatebot)](https://docs.renovatebot.com)
[![Woodpecker CI](https://shields.fullbyte.de/badge/CI-Woodpecker-%23FAD14A?logo=woodpecker&logoColor=black)](https://woodpecker-ci.org)

Personal portfolio site for Bleim — League of Legends Coach & Analyst. Plain HTML/CSS served via nginx.

## Stack

- **Content**: Static HTML/CSS, custom Infra typeface
- **Languages**: English and German
- **Container**: `nginx:1.31.1-alpine`, multi-arch (`linux/amd64`, `linux/arm64`)
- **CI**: Woodpecker CI — publishes on git tag, triggers Renovate after a successful push
- **Dependencies**: managed by [Renovate](https://docs.renovatebot.com/) via `local>fullbyte/renovate`

## Pipelines

| Pipeline | Status |
|---|---|
| Publish | [![Publish](https://ci.fullbyte.de/api/badges/3/status.svg?events=tag)](https://ci.fullbyte.de/repos/3) |
| Renovate | [![Renovate](https://ci.fullbyte.de/api/badges/5/status.svg?events=cron)](https://ci.fullbyte.de/repos/5) |

## Running locally

```bash
docker build -t bleim-portfolio .
docker run -p 8080:80 bleim-portfolio
```

Then open `http://localhost:8080`.

## Deployment

Pushing a version tag (e.g. `v1.2.3`) triggers the Woodpecker pipeline which:

1. Builds and pushes a container image to `forge.fullbyte.de/1bleim/portfolio` tagged with the version and `latest`.
2. Fires a Renovate pipeline run so dependent repos pick up the new image tag automatically.
