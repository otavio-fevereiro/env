#nu aws credentials setup
#nu aws credentials refresh   --maven-login    

nu update
nu aws credentials refresh  
nu codeartifact login maven
#nu cert setup --env staging
#nu cert setup --env prod