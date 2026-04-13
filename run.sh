#!/bin/bash


uv run python test.py
# uv run python LimeAttack_classification.py \
#     --dataset_path data/imdb \
#     --target_model wordLSTM \
#     --k 10 \
#     --syn_num 50 \
#     --model_path model/wordLSTM/imdb \
#     --word_embeddings_path data/embedding/glove.6B.200d.txt \
#     --counter_fitting_embeddings_path data/embedding/counter-fitted-vectors.txt \
#     --query_budget 100
# uv run python LimeAttack_classification.py \
#     --dataset_path data/imdb \
#     --target_model roberta \
#     --k 10 \
#     --syn_num 50 \
#     --model_path model/Roberta/imdb \
#     --word_embeddings_path data/embedding/glove.6B.200d.txt \
#     --counter_fitting_embeddings_path data/embedding/counter-fitted-vectors.txt \
#     --query_budget 100
uv run python LimeAttack_classification.py \
    --dataset_path data/sst2 \
    --target_model roberta \
    --k 5 \
    --syn_num 10 \
    --model_path model/Roberta/sst2 \
    --word_embeddings_path data/embedding/glove.6B.200d.txt \
    --counter_fitting_embeddings_path data/embedding/counter-fitted-vectors.txt \
    --query_budget 100