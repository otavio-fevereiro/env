nu update
#nu aws credentials setup
nu aws credentials refresh
nu aws shared-role-credentials refresh --account-alias=br --drop-all-temporary-policies --keep-policies eng,prod-eng,casual-dev,homepage-sandbox,first-layer-infra-and-monitoring,databricks-general,permissions-admin,temporary
nu aws shared-role-credentials refresh --account-alias=br-staging --keep-policies eng,prod-eng,casual-dev,first-layer-infra-and-monitoring,permissions-admin,temporary
#nu aws shared-role-credentials web-console --account-alias=br --keep-policies eng,casual-dev,prod-eng
nu codeartifact login maven
#nu-br-staging cert setup
#nu-br cert setup
#nu-ist certs setup --env staging
#nu sec shared-role-iam show otavio.fevereiro --target-aws-account br

#nu aws shared-role-credentials refresh --account-alias=br --keep-policies prod-eng,casual-dev --keep-temporary-policies create-elasticsearch-domain-9abfc955-e6bc-451b-9fa8-34ff97de7805
#nu aws shared-role-credentials refresh --account-alias=br --keep-policies prod-eng,casual-dev --drop-temporary-policies 68bae0d7-c046-40ff-a0fb-85c0566ac4f1,68bae0c2-ef72-496c-874f-4394d25186c4,68bae0a8-66ee-404f-9d70-2eeb57b56f63,68badecc-9f32-4edd-9216-bfb8b4b107d0,68bb1968-010e-41a0-ba55-057a12bc38ab,68bae092-1122-40bc-a448-f488da6a56d8,68bae07d-7e66-4aae-bc09-e8ff13651f56,68bae05d-d12b-4dec-9f45-df9a0c04ec2d,acm-read-20a7ea34-f5e1-4f82-b32d-51dbd7161eb6,acm-read-78e9e272-708e-4150-9130-90cbab57c8c0,cloud-formation-manager-324222a3-2cb9-42e2-b6c5-de1136c10767,create-elasticsearch-domain-ebd14b46-7361-40b7-b7d0-a7fb63a075b5,gsearch-opensearch-4a0d88a7-7a1f-434c-8877-b5656ccf9f74,security-group-manager-6e0048e3-3616-492d-9393-c933e4cfde7b
#nu aws shared-role-credentials refresh -i