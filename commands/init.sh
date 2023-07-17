terraform init \
    -backend-config="resource_group_name=rg-dev-we-state-gr1" \
    -backend-config="storage_account_name=stdevwestategr1" \
    -backend-config="container_name=states" \
    -backend-config="key=prj1/app1/terraform.state"