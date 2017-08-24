if [ ! -d "lib" ];
then
    mkdir lib
fi

if [ ! -f "lib/swagger-codegen-cli.jar" ];
then
    ver=2.3.0
    url=http://central.maven.org/maven2/io/swagger/swagger-codegen-cli/$ver/swagger-codegen-cli-$ver.jar
    url=https://oss.sonatype.org/content/repositories/snapshots/io/swagger/swagger-codegen-cli/2.3.0-SNAPSHOT/swagger-codegen-cli-2.3.0-20170815.070713-92.jar
    #url=https://oss.sonatype.org/content/repositories/snapshots/io/swagger/swagger-codegen-cli/3.0.0-SNAPSHOT/swagger-codegen-cli-3.0.0-20170727.135949-1.jar
    wget $url -O lib/swagger-codegen-cli.jar
fi

echo "##############################################"
echo "# to run the code generator                  #"
echo "#                                            #"
echo "# java -jar lib/swagger-codegen-cli.jar help #"
echo "#                                            #"
echo "##############################################"

echo "https://github.com/swagger-api/swagger-codegen?ref=producthunt#overview"

swagger_input=swagger/TransitApi.json

#langs=(java javascript python python-flask html html2)
langs=(html html2)
for l in "${langs[@]}"
do
   mkdir -p bindings/$l
   echo java -jar lib/swagger-codegen-cli.jar generate -i ${swagger_input} -l $l -o bindings/$l
   java -jar lib/swagger-codegen-cli.jar generate -i ${swagger_input} -l $l -o bindings/$l > codegen.log
done

cmd /c start bindings/html/index.html
open bindings/html/index.html
