#!/usr/bin/env bash

llama-cli --model ~/llama-models/Qwen3.5-122B-A10B-UD-IQ4_NL-00001-of-00003.gguf \
	  --temp 0.6 \
	  --top-p 0.95 \
	  --top-k 20 \
	  --min-p 0.00 \
	  --presence_penalty 0.0 \
	  --repeat_penalty 1.0 \
	  --threads 6 \
	  --n-gpu-layers all \
	  --ctx-size 262144 \
	  --flash-attn on \
	  --conversation
