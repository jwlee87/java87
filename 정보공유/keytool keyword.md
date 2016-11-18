키 스토어 생성 

keytool -genkey -v -keystore c:\keystore\mycloset.keystore -alias myclosetkeystore -keyalg rsa -keysize 2048 -validity 365

키 스토어에 CSR키 생성 

keytool -export -alias myclosetkeystore -storepass qwerty -file c:\keystore\myclosetcsr.csr -keystore c:\keystore\mycloset.keystore

csr 파일을 읽을수 있게 txt로 만든다 

keytool -certreq -alias myclosetkeystore -keyalg rsa -file c:\keystore\crs.txt -keystore c:\keystore\mycloset.keystore


keytool -list -keystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks

keytool -delete -alias root -keystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks
keytool -delete -alias tomcat -keystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks
keytool -delete -alias chain1 -keystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks
keytool -delete -alias chain2 -keystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks

keytool -list -keystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks -v

keytool -import -alias RootCA -keystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks -trustcacerts -file C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\RootCA.crt

keytool -import -alias ChainCA1 -keystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks -trustcacerts -file C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\ChainCA1.crt

keytool -import -alias ChainCA2 -keystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks -trustcacerts -file C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\ChainCA2.crt

keytool -import -alias mycloset_link -keystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks -file C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link_cert.pem

