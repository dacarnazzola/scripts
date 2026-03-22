#!/usr/bin/env bash

llama-cli --model ~/llama-models/Qwen3-Coder-Next-UD-Q8_K_XL-00001-of-00003.gguf \
	  --temp 1.0 \
	  --top-p 0.95 \
	  --top-k 40 \
	  --min-p 0.01 \
	  --repeat_penalty 1.0 \
	  --threads 6 \
	  --n-gpu-layers all \
	  --ctx-size 262144 \
	  --flash-attn on \
	  --conversation
