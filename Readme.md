Sample Spring boot app native build with GraalVM for GitLab on Oracle Linux. 
<p>
Need to add the GraalVM files listed in .gitignore from <a href="https://www.oracle.com/downloads/graalvm-downloads.html">https://www.oracle.com/downloads/graalvm-downloads.html</a> :
<p>
`graalvm-ee-java11-linux-amd64-21.3.0.tar.gz`
<br>
`native-image-installable-svm-svmee-java11-linux-amd64-21.3.0.jar`
<p>
Create a artifact to OCI DevOps with a name `native-image`
<p>
Download the create artifact image and do `chmod +x hello-spring-boot-app`
to run the native app image: `./hello-spring-boot-app`
<p>



