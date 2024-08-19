#nu aws credentials setup
#nu aws credentials refresh   --maven-login    

nu update
#nu aws credentials setup
nu aws credentials refresh
#nu aws shared-role-credentials refresh --account-alias=br --keep-policies eng,prod-eng
nu codeartifact login maven
#nu cert setup --env staging
#nu cert setup --env prod

#nu-co-staging sec scope add otavio.fevereiro admin experiment-management