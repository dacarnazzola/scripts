#!/usr/bin/env bash

sudo sysctl iogpu.wired_limit_mb=122880

llama-cli --model ~/llama-models/MiniMax-M2.5-UD-Q3_K_XL-00001-of-00004.gguf \
	  --temp 1.0 \
	  --top-p 0.95 \
	  --top-k 40 \
	  --min-p 0.01 \
	  --repeat_penalty 1.0 \
	  --threads 6 \
	  --n-gpu-layers all \
	  --ctx-size 65536 \
     --cache-type-k q8_0 \
     --cache-type-v q8_0
	  --flash-attn on \
	  --conversation
