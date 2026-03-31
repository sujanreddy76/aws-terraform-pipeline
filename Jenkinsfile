pipeline {
    agent{
        label 'terraform-slave'
    }
    parameters{
        choice(
            name: 'ENVIRONMENT',
            choices: ['dev', 'stage', 'prod'],
            description: 'Choose the environment to deploy'
        )
        choice (
            name: 'ACTION',
            choices: 'validate\ninit\nplan\napply\ndestroy'
        )
    }
    environment {
        TFVARS_FILE = "${params.ENVIRONMENT}.tfvars"
    }
    stages{
        //Initialize terraform
        stage('init'){
            steps {
                echo 'initializing the terraform'
                sh 'terraform init'
            }
        }
        //Plan
        stage('plan'){
            when{
               expression {
                 params.ACTION == 'plan'
               }
            }
            steps {
                echo 'executing the plan for our terraform code'
                withCredentials([aws(
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    credentialsId: 'aws_access_key_and_secret_key',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                )]) {
                sh 'terraform plan'
                }
            }
        }
        //apply
        stage('apply'){
            when{
               expression {
                 params.ACTION == 'apply'
               }
            }
            steps {
                echo 'applying the terraform infra'
                sh 'terraform apply --auto-approve'
            }
        }
        //destroy
        stage('destroy'){
            when{
               expression {
                 params.ACTION == 'destroy'
               }
            }
            steps {
                echo 'destroying the terraform infra'
                //terraform destroy
            }
        }
    }
}