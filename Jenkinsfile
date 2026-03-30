pipeline {
    agent{
        label 'terraform-slave'
    }
    parameters{
        choice (
            name: 'ACTION',
            choices: 'validate\ninit\nplan\napply\ndestroy'
        )
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
                sh 'terraform plan'
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