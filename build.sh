if [ ! -d "lib" ];
then
    mkdir lib
fi

if [ ! -f "lib/swagger-codegen-cli.jar" ];
then
    ver=2.2.3
    wget http://central.maven.org/maven2/io/swagger/swagger-codegen-cli/$ver/swagger-codegen-cli-$ver.jar -O lib/swagger-codegen-cli.jar
fi

echo "##############################################"
echo "# to run the code generator                  #"
echo "#                                            #"
echo "# java -jar lib/swagger-codegen-cli.jar help #"
echo "#                                            #"
echo "##############################################"

echo "https://github.com/swagger-api/swagger-codegen?ref=producthunt#overview"

langs=(java javascript python python-flask html)
for l in "${langs[@]}"
do
   mkdir -p bindings/$l
   echo java -jar lib/swagger-codegen-cli.jar generate -i swagger.yaml -l $l -o bindings/$l
   java -jar lib/swagger-codegen-cli.jar generate -i swagger.yaml -l $l -o bindings/$l > codegen.log
done
