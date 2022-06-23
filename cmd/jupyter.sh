#!/bin/bash

poetry run jupyter notebook --generate-config
poetry run jupyter notebook password
