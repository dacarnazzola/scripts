#!/usr/bin/env bash

llama-cli --model ~/llama-models/NVIDIA-Nemotron-3-Super-120B-A12B-UD-IQ4_NL-00001-of-00003.gguf \
	  --temp 0.6 \
	  --top-p 0.95 \
	  --predict -1 \
	  --threads 6 \
	  --n-gpu-layers all \
	  --ctx-size 1048576 \
	  --flash-attn on \
	  --conversation
