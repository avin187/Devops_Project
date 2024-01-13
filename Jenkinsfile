pipeline {
  agent any

  stages {
    stage('Checkout Code') {
      steps {
        checkout scm
      }
    }

    stage('Check Docker') {
      steps {
        script {
          // Check Docker installation and version
          sh 'docker --version'
          sh 'docker info'
        }
      }
    }

    stage('Build and Package') {
      steps {
        script {
          // Docker build and package steps
          sh 'cd docker && docker build -t your-static-website .'
        }
      }
    }

    stage('Terraform Provisioning') {
      steps {
        script {
          // Run Terraform scripts
          sh 'cd terraform && terraform init && terraform apply -auto-approve | tee terraform_apply.log'
        }
      }
    }

    stage('Ansible Deployment') {
      steps {
        script {
          // Run Ansible playbooks
          sh 'ansible-playbook -i ansible/inventory.ini ansible/playbook.yaml'
        }
      }
    }

    stage('Kubernetes Deployment') {
      steps {
        script {
          // Deploy to Kubernetes
          sh 'kubectl apply -f kubernetes/deployment.yaml'
        }
      }
    }
    // Add more stages for testing, linting, etc.
  }
}
