#!/bin/bash


uv run python test.py


for q in 50
do
    echo "Running query_budget=$q"

    uv run  python -u LimeAttack_classification.py \
        --dataset_path /root/autodl-fs/data/imdb \
        --target_model roberta \
        --k 10 \
        --syn_num 20 \
        --model_path /root/autodl-fs/modelHub/roberta-base-imdb \
        --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
        --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
        --query_budget $q \
        > log_lime_attack_imdb_$q.txt 2>&1

done

# for q in 50 100 200 500 1000 2000
# do
#     echo "Running query_budget=$q"

#     uv run python LimeAttack_classification.py \
#         --dataset_path /root/autodl-fs/data/imdb \
#         --target_model roberta \
#         --k 10 \
#         --syn_num 50 \
#         --model_path /root/autodl-fs/modelHub/roberta-base-imdb \
#         --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
#         --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
#         --query_budget $q \
#         > log_imdb_query${q}.txt 2>&1

# done

# uv run python LimeAttack_classification.py \
#     --dataset_path /root/autodl-fs/data/imdb \
#     --target_model roberta \
#     --k 10 \
#     --syn_num 50 \
#     --model_path /root/autodl-fs/modelHub/roberta-base-imdb \
#     --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
#     --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
#     --query_budget 50
    
# # 这里记录以上的输出
# uv run python LimeAttack_classification.py \
#     --dataset_path /root/autodl-fs/data/imdb \
#     --target_model roberta \
#     --k 10 \
#     --syn_num 50 \
#     --model_path /root/autodl-fs/modelHub/roberta-base-imdb \
#     --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
#     --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
#     --query_budget 100
# # 这里记录以上的输出
# uv run python LimeAttack_classification.py \
#     --dataset_path /root/autodl-fs/data/imdb \
#     --target_model roberta \
#     --k 10 \
#     --syn_num 50 \
#     --model_path /root/autodl-fs/modelHub/roberta-base-imdb \
#     --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
#     --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
#     --query_budget 200
# # 这里记录以上的输出
# uv run python LimeAttack_classification.py \
#     --dataset_path /root/autodl-fs/data/imdb \
#     --target_model roberta \
#     --k 10 \
#     --syn_num 50 \
#     --model_path /root/autodl-fs/modelHub/roberta-base-imdb \
#     --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
#     --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
#     --query_budget 500
# # 这里记录以上的输出
# uv run python LimeAttack_classification.py \
#     --dataset_path /root/autodl-fs/data/imdb \
#     --target_model roberta \
#     --k 10 \
#     --syn_num 50 \
#     --model_path /root/autodl-fs/modelHub/roberta-base-imdb \
#     --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
#     --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
#     --query_budget 1000
# # 这里记录以上的输出
# uv run python LimeAttack_classification.py \
#     --dataset_path /root/autodl-fs/data/imdb \
#     --target_model roberta \
#     --k 10 \
#     --syn_num 50 \
#     --model_path /root/autodl-fs/modelHub/roberta-base-imdb \
#     --word_embeddings_path /root/autodl-fs/embedding/glove.6B.200d.txt \
#     --counter_fitting_embeddings_path /root/autodl-fs/embedding/counter-fitted-vectors.txt \
#     --query_budget 2000
# # 这里记录以上的输出