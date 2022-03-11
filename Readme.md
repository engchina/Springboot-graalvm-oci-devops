Sample Spring boot app native build with GraalVM on OCI DevOps. 
<p>
Need to add the GraalVM files listed in .gitignore from <a href="https://www.oracle.com/downloads/graalvm-downloads.html">https://www.oracle.com/downloads/graalvm-downloads.html</a> :
<p>
<b>graalvm-ee-java11-linux-amd64-21.3.0.tar.gz</b>
<br>
<b>native-image-installable-svm-svmee-java11-linux-amd64-21.3.0.jar</b>
<p>
  Create an <i>artifact</i> to OCI DevOps with a name <b><i>native-image</i></b>, see the <b>build_spec.yaml</b> for reference
<p>
Download the built artifact image and do <b>chmod +x hello-spring-boot-app</b>
to run the native app image: <b>./hello-spring-boot-app</b>
<p>



