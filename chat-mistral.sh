#!/usr/bin/env bash

llama-cli --model ~/llama-models/Mistral-Small-4-119B-2603-UD-IQ4_NL-00001-of-00003.gguf \
 	  --chat-template-kwargs '{"reasoning_effort":"high"}'
	  --threads 6 \
	  --n-gpu-layers all \
	  --ctx-size 1048576 \
	  --flash-attn on \
	  --conversation
