DEMO="JBoss BRMS v6 Fantasy-Football Demo"
AUTHORS="Anil K Mirge"
PROJECT="git@github.com:anilkmirge/brms-fantasyfootball-demo.git"
JBOSS_HOME=./brms-server/jboss-eap-6.1
SRC_DIR=./installs
PRJ_DIR=./project/brms-fantasyfootball-demo
SERVER_DIR=$JBOSS_HOME/standalone/deployments
SERVER_CONF=$JBOSS_HOME/standalone/configuration
SERVER_BIN=$JBOSS_HOME/bin
EAP=jboss-eap-6.1.1.zip
BRMS=jboss-brms-6.0.0.GA-redhat-2-deployable-eap6.x.zip
SUPPORT_DIR=./support
VERSION=6.0.0.GA

# wipe screen.
clear 

echo
echo "#####################################################################"
echo "## 					      		         ##"
echo "## Setting up the ${DEMO} 				           "
echo "## 							         ##"
echo "## 							         ##"
echo "## 			#### ####  #   #   ###   ###      	 ##"
echo "## 			#  # #  # # # # # # 	#	  	 ##"
echo "## 			#### #### #  #  #  ###	###	 	 ##"
echo "## 			#  # # #  #     #     # #  #	  	 ##"
echo "## 			#### # 	# # 	#  ### 	###	  	 ##"
echo "## 							 	 ##"
echo "## 							 	 ##"
echo "## brought to you by, 					 	 ##"
echo "## 			${AUTHORS} 			 	 ##"
echo "## 							 	 ##"
echo "## ${PROJECT} 						 	 ##"
echo "## 							 	 ##"
echo "## This script will start the brms server 			 ##"
echo "## with following system properties			         ##"
echo "##   1) org.uberfire.nio.git.dir		 			  "
echo "##   2) org.uberfire.metadata.index.dir				 ##"
echo "##   3) org.guvnor.m2repo.dir					 ##"
echo "## 								 ##"
echo "#####################################################################"
echo

# Unzip the JBoss EAP instance.
echo Unpacking new JBoss Enterprise EAP 6...
echo Creating brms-server directory as the target directory
mkdir brms-server
unzip -q $SRC_DIR/$EAP -d brms-server

# Unzip the required files from JBoss product deployable.
echo Unpacking $PRODUCT $VERSION...
echo
unzip -q -o $SRC_DIR/$BRMS -d brms-server

echo " - enabling demo accounts logins in application-users.properties file..."

cp $SUPPORT_DIR/application-users.properties $SERVER_CONF

echo " - enabling demo accounts role setup in application-roles.properties file..."

echo
cp $SUPPORT_DIR/application-roles.properties $SERVER_CONF

echo " - enabling management accounts login setup in mgmt-users.properties file..."

echo
cp $SUPPORT_DIR/mgmt-users.properties $SERVER_CONF

echo "Make sure you copy the system properties from standalone-setup.conf from $SUPPORT_DIR into $SERVER_BIN/standalone.conf file before starting the server"

echo "You can now start the $PRODUCT with $SERVER_BIN/standalone.sh"

echo "$PRODUCT $VERSION $DEMO Setup Complete."
echo
