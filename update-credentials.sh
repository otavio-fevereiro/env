nu update
#nu aws credentials setup
#nu-br aws credentials refresh --npm-login
nu aws credentials refresh
nu aws shared-role-credentials refresh --account-alias=br --keep-policies eng,prod-eng,casual-dev,homepage-sandbox,first-layer-infra-and-monitoring-admin
nu aws shared-role-credentials refresh --account-alias=br-staging --keep-policies eng,prod-eng,casual-dev,homepage-sandbox,first-layer-infra-and-monitoring-admin
#nu aws shared-role-credentials web-console --account-alias=br --keep-policies eng,casual-dev,prod-eng
nu codeartifact login maven
#nu cert setup --env staging
#nu cert setup --env prod

