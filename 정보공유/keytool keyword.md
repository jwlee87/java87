Ű ����� ���� 

keytool -genkey -v -keystore c:\keystore\mycloset.keystore -alias myclosetkeystore -keyalg rsa -keysize 2048 -validity 365

Ű ���� CSRŰ ���� 

keytool -export -alias myclosetkeystore -storepass qwerty -file c:\keystore\myclosetcsr.csr -keystore c:\keystore\mycloset.keystore

csr ������ ������ �ְ� txt�� ����� 

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

~~ ��ϵ� keystore ���Ϸ� ���� PKCS12 ���Ϸ� ����� ��
keytool -v -importkeystore -srckeystore C:\JavaIDE\server\apache-tomcat-7.0.72\certificate\mycloset_link.jks -srcalias mycloset_link -destkeystore myp12file.p12 -deststoretype PKCS12

You can use following commands to extract public/private key from a PKCS#12 container:
Private key:
openssl pkcs12 -in yourP12File.pfx -nocerts -out privateKey.pem
Certificates:
openssl pkcs12 -in yourP12File.pfx -clcerts -nokeys -out publicCert.pem

~~ OpenSSL �� private Key �����ϰ� �̸� �̿� CSR ���� �����ϴ� ��� ���� ����Ʈ
https://www.comodossl.co.kr/certificate/ssl-installation-guides/Apache-csr-crt.aspx