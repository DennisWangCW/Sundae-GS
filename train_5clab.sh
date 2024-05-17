exp_name="5clab"

resolution=-1
gpu=-1
iterations=50000 
type=original_400
sample_rate=0.1
# example:

if [[ "$type" == *"merged"* ]]; then
   ./train.sh -d ${exp_name}/${type}/merged -l ${exp_name} -r ${resolution} --gpu ${gpu} --iterations ${iterations} --sample_rate ${sample_rate}
else 
   ./train.sh -d ${exp_name}/${type} -l ${exp_name} -r ${resolution} --gpu ${gpu} --iterations ${iterations} --sample_rate ${sample_rate}
fi

