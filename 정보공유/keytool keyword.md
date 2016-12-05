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

~~ 등록된 keystore 파일로 부터 PKCS12 파일로 만드는 법
keytool -v -importkeystore -srckeystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks -srcalias mycloset_link -destkeystore myp12file.p12 -deststoretype PKCS12

You can use following commands to extract public/private key from a PKCS#12 container:
Private key:
openssl pkcs12 -in yourP12File.pfx -nocerts -out privateKey.pem
Certificates:
openssl pkcs12 -in yourP12File.pfx -clcerts -nokeys -out publicCert.pem

~~ OpenSSL 로 private Key 생성하고 이를 이용 CSR 까지 생성하는 방법 참고 사이트
https://www.comodossl.co.kr/certificate/ssl-installation-guides/Apache-csr-crt.aspx