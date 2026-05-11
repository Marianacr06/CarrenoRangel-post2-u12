# CarrenoRangel-post2-u12

Pipeline CI/CD con GitHub Actions y Docker Hub.

![CI/CD Status](https://github.com/<usuario>/<repo>/actions/workflows/ci.yml/badge.svg)

## Secrets requeridos
- DOCKERHUB_USERNAME
- DOCKERHUB_TOKEN

## Pipeline CI/CD
1. Compilar con Maven y ejecutar pruebas (JaCoCo)
2. Publicar reporte como artefacto
3. Construir imagen Docker y publicar en Docker Hub

## Imagen Docker
docker pull <usuario>/mi-spring-app:latest

## Evidencias
Coloca las capturas en img/:
- img/checkpoint1-secrets.png
- img/checkpoint2-actions.png
- img/checkpoint3-dockerhub.png
