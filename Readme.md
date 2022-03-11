Sample Spring boot app native build with GraalVM on OCI DevOps. 
<p>
Need to add the GraalVM files listed in .gitignore from <a href="https://www.oracle.com/downloads/graalvm-downloads.html">https://www.oracle.com/downloads/graalvm-downloads.html</a> :
<p>
<b>graalvm-ee-java11-linux-amd64-21.3.0.tar.gz</b>
<br>
<b>native-image-installable-svm-svmee-java11-linux-amd64-21.3.0.jar</b>
<p>
  Either push these files to the repo or use <b>wget</b> to download them from OCI object storage before the un-tar in <b>build_spec.yaml</b>
<p>
  Create an <i>artifact</i> to OCI DevOps with a name <b><i>native-image</i></b>, see the <b>build_spec.yaml</b> for reference
<p>
Download the built artifact image and do <b>chmod +x hello-spring-boot-app</b>
to run the native app image: <b>./hello-spring-boot-app</b>
<p>

 <pre>
 [opc@dev ~]$ ./hello-spring-boot-app
2022-03-11 11:23:04.308  INFO 976306 --- [           main] o.s.nativex.NativeListener               : This application is bootstrapped with code generated with Spring AOT

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                (v2.5.6)

2022-03-11 11:23:04.309  INFO 976306 --- [           main] c.o.g.d.h.HelloSpringBootAppApplication  : Starting HelloSpringBootAppApplication using Java 11.0.13 on dev with PID 976306 (/home/opc/hello-spring-boot-app-1.0 started by opc in /home/opc)
2022-03-11 11:23:04.309  INFO 976306 --- [           main] c.o.g.d.h.HelloSpringBootAppApplication  : No active profile set, falling back to default profiles: default
2022-03-11 11:23:04.350  INFO 976306 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
2022-03-11 11:23:04.350  INFO 976306 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2022-03-11 11:23:04.350  INFO 976306 --- [           main] org.apache.catalina.core.StandardEngine  : Starting Servlet engine: [Apache Tomcat/9.0.54]
2022-03-11 11:23:04.353  INFO 976306 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2022-03-11 11:23:04.353  INFO 976306 --- [           main] w.s.c.ServletWebServerApplicationContext : Root WebApplicationContext: initialization completed in 44 ms
2022-03-11 11:23:04.355  WARN 976306 --- [           main] i.m.c.i.binder.jvm.JvmGcMetrics          : GC notifications will not be available because MemoryPoolMXBeans are not provided by the JVM
2022-03-11 11:23:04.379  INFO 976306 --- [           main] o.s.b.a.e.web.EndpointLinksResolver      : Exposing 1 endpoint(s) beneath base path '/actuator'
2022-03-11 11:23:04.381  INFO 976306 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
2022-03-11 11:23:04.382  INFO 976306 --- [           main] c.o.g.d.h.HelloSpringBootAppApplication  : Started HelloSpringBootAppApplication in 0.08 seconds (JVM running for 0.081)


 </pre>


