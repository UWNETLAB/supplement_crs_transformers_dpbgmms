#!/bin/bash

python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_1900_1909.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/1900_1909
    
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_1910_1919.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/1910_1919

python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_1920_1929.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/1920_1929
    
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_1930_1939.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/1930_1939
        
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_1940_1949.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/1940_1949
        
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_1950_1959.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/1950_1959
    
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_1960_1969.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/1960_1969
    
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_1970_1979.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/1970_1979
    
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_1980_1989.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/1980_1989
    
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_1990_1999.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/1990_1999
    
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_2000_2009.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/2000_2009
    
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --train_file ./crs_corpus/decade_2010_2020.txt \
    --do_train \
    --overwrite_cache \
    --overwrite_output_dir \
    --output_dir ./crs_models/2010_2020