#!/bin/bash


uv run python test.py
uv run python LimeAttack_classification.py \
    --dataset_path /root/autodl-fs/data/imdb \
    --target_model roberta \
    --k 10 \
    --syn_num 20 \
    --model_path /root/autodl-fs/modelHub/roberta-base-imdb \
    --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
    --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
    --query_budget 100