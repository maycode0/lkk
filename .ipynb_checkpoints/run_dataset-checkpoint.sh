#!/bin/bash


uv run python test.py
uv run python LimeAttack_classification.py \
    --dataset_path /root/autodl-fs/data/sst2 \
    --target_model roberta \
    --k 10 \
    --syn_num 50 \
    --model_path /root/autodl-fs/modelHub/roberta-base-sst2 \
    --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
    --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
    --query_budget 100 >log_sst2_limeattack.txt 2>&1
    
uv run python LimeAttack_classification.py \
    --dataset_path /root/autodl-fs/data/imdb \
    --target_model roberta \
    --k 10 \
    --syn_num 30 \
    --model_path /root/autodl-fs/modelHub/roberta-base-imdb \
    --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
    --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
    --query_budget 100 >log_imdb_limeattack.txt 2>&1
    
uv run python LimeAttack_classification.py \
    --dataset_path /root/autodl-fs/data/yelp \
    --target_model roberta \
    --k 10 \
    --syn_num 45 \
    --model_path /root/autodl-fs/modelHub/roberta-base-yelp \
    --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
    --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
    --query_budget 100 >log_yelp_limeattack.txt 2>&1