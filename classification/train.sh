torchrun \
   --nproc_per_node=1 \
   --master_port=12340 \
   main.py \
   --cfg configs/vssm/vmambav2v_tiny_224.yaml \
   --data-path /home/nicho/documents/cassava \
   --batch-size 16 \
   --output out/

torchrun \
   --nproc_per_node=1 \
   --master_port=12340 \
   main.py \
   --cfg configs/vssm/vmambav2_small_224.yaml\
   --data-path /home/nicho/documents/cassava \
   --batch-size 16 \
   --output out/

torchrun \
   --nproc_per_node=1 \
   --master_port=12340 \
   main.py \
   --cfg configs/vssm/vmambav2_base_224.yaml\
   --data-path /home/nicho/documents/cassava \
   --batch-size 16 \
   --early_stopping_patience 25 \
   --early_stopping_min_delta 0.001 \
   --output out/