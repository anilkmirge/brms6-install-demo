echo "This script will start the brms server with following system properties"
echo "org.uberfire.nio.git.dir=$JBOSS_HOME"
echo "org.uberfire.metadata.index.dir=$JBOSS_HOME"
echo "org.guvnor.m2repo.dir=$JBOSS_HOME/m2repo"
jboss-eap-6.1/bin/standalone.sh -Dorg.uberfire.nio.git.dir=$JBOSS_HOME -Dorg.uberfire.metadata.index.dir=$JBOSS_HOME -Dorg.guvnor.m2repo.dir=$JBOSS_HOME/m2repo
