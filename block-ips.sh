i = 0
while IFS= read -r block
do 
   i=$((i+1))
   echo $i $block
   sudo ufw reject from "$block" to any 
done < "Block_IP_List.txt"
