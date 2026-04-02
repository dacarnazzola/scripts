#!/usr/bin/env bash

llama-cli --model ~/llama-models/Qwen3.5-27B.Q8_0.Claude4.6OpusDistilled.gguf \
	  --temp 0.6 \
	  --top-p 0.95 \
	  --top-k 20 \
	  --min-p 0.00 \
	  --presence_penalty 0.0 \
	  --repeat_penalty 1.0 \
	  --threads 6 \
	  --n-gpu-layers all \
	  --ctx-size 262144 \
     --cache-type-k bf16 \
     --cache-type-v bf16 \
	  --flash-attn on \
	  --conversation
