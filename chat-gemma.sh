#!/usr/bin/env bash

llama-cli --model ~/llama-models/gemma-4-31B-it-UD-Q8_K_XL.gguf \
	  --temp 1.0 \
	  --top-p 0.95 \
	  --top-k 64 \
	  --presence_penalty 0.0 \
	  --repeat_penalty 1.0 \
	  --threads 6 \
	  --n-gpu-layers all \
	  --ctx-size 262144 \
      --cache-type-k q8_0 \
      --cache-type-v q8_0 \
	  --flash-attn on \
	  --conversation
