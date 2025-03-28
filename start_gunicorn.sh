#!/bin/bash
source /home/projects/family-tree-django/.venv/bin/activate  # Ativa o ambiente virtual
cd /home/projects/amily-tree-django  # Muda para o diretório do projeto
gunicorn --workers 3 --bind 0.0.0.0:8095 core.wsgi:application
