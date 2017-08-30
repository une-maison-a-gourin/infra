#!/bin/bash

rm -f $HOME/test.sh
echo "#!/bin/sh" >> $HOME/test.sh
echo "echo 'Content-type: text/html\n'" >> $HOME/test.sh
echo "echo '<html><body>Hello world</body></html>'" >> $HOME/test.sh

sudo apt-get install apache2
chmod 755 $HOME/test.sh
sudo mv $HOME/test.sh /usr/lib/cgi-bin/
sudo apachectl restart

curl http://localhost/cgi-bin/test.sh
