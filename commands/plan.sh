terraform plan -input=false \ 
  -out plan.out \
  -var storage_account_name=stdevwestategr1 \
  -var storage_account_container_name=states