pipeline{
	agent any
		stages{
			stage("git clone"){
				steps{
				 git url: 'https://github.com/chauhan1986/jenkins-test.git'	
				}
			}
			stage("Maven Build"){
				environment{
					mavenHome	=	tool name: "maven-3.9.1", type:	"maven"
					mavenCMD	=	"${mavenHome}/bin/mvn"
				}
				steps{
					sh "${mavenCMD} clean package"
				}
			}
			stage("Build docker iamge"){
				steps{
					script{
						dockerImage= sh 'docker build -t demo:$BUILD_NUMBER .	'
					}
				}
			}
		}
}



 
