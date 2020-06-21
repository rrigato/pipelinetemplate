################################
#Miscellaneous AWSCLI commands to setup CI/CD pipeline
################################

#Initial project creation setup
aws cloudformation create-stack --stack-name {{cookiecutter.project_name}}-pipeline \
 --template-body file://templates/code_pipeline.yml \
 --capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND



#Create a changeset
aws cloudformation create-change-set --stack-name {{cookiecutter.project_name}}-pipeline \
 --template-body file://templates/.yml \
 --change-set-name CodePipelineAddition \
 --capabilities CAPABILITY_NAMED_IAM

#Need arn to execute change set
aws cloudformation execute-change-set --change-set-name \
<changeset_arn>

aws cloudformation update-stack --stack-name {{cookiecutter.project_name}}-pipeline \
 --template-body file://templates/code_pipeline.yml \
 --capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND


##allows for much more detailed error logging for stack
#creation events
aws cloudformation describe-stack-events \
--stack-name {{cookiecutter.project_name}}-pipeline > pipeline_cf_events.json

