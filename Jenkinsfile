node('docker'){
 pipeline {
  agent any
   stages {
    stage('build') {
     steps {
      sh 'javac -d . src/*.java'
      sh 'echo Main-Class: Rectangulator > MANIFEST.MF'
      sh 'jar -cvmf MANIFEST.MF rectangle.jar *.class'
     }
    }
    stage('run') {
     steps {
      sh 'java -jar rectangle.jar 7 9'
     }
    }
    stage('Build-docker-image'){
      steps{
        sh "docker version"
        sh "docker build -t swapna/test ."
        print "tag docker image as latest"
        sh "docker tag swapna/test swapna/test:latest"
        print "docker push image"
        sh "docker push swapna/test:latest"
        print "docker remove image"
        sh "docker rmi swapna/test:latest"
      }
    }
   }
 }
}
