#! /bin/bash


echo install samtools
wget https://github.com/samtools/samtools/releases/download/1.12/samtools-1.12.tar.bz2 -O /tmp/samtools-1.12.tar.bz2
tar -jxvf /tmp/samtools-1.12.tar.bz2 -C /tmp/
cd /tmp/samtools-1.12/ && ./configure && make && make install


perl -MCPAN -e 'install Log::Log4perl'
perl -MCPAN -e 'install Math::CDF'
perl -MCPAN -e 'install CGI'
perl -MCPAN -e 'install HTML::PullParser'
perl -MCPAN -e 'install HTML::Template'
perl -MCPAN -e 'install XML::Simple'
perl -MCPAN -e 'install XML::Parser::Expat'
perl -MCPAN -e 'install XML::LibXML'
perl -MCPAN -e 'install XML::LibXML::Simple'
perl -MCPAN -e 'install XML::Compile'
perl -MCPAN -e 'install XML::Compile::SOAP11'
perl -MCPAN -e 'install XML::Compile::WSDL11'
perl -MCPAN -e 'install XML::Compile::Transport::SOAPHTTP'


wget https://meme-suite.org/meme/meme-software/5.3.2/meme-5.3.2.tar.gz -O /tmp/meme-5.3.2.tar.gz
tar -zxvf /tmp/meme-5.3.2.tar.gz -C /tmp/
cd /tmp/meme-5.3.2/ && ./configure --enable-build-libxml2 --enable-build-libxslt  --with-url=http://meme-suite.org && \
    make && make install

wget https://github.com/lh3/minimap2/releases/download/v2.21/minimap2-2.21_x64-linux.tar.bz2 -O /tmp/minimap2-2.21_x64-linux.tar.bz2
tar -jxvf /tmp/minimap2-2.21_x64-linux.tar.bz2 -C /tmp/
cp /tmp/minimap2-2.21_x64-linux/k8 /tmp/minimap2-2.21_x64-linux/minimap2 /tmp/minimap2-2.21_x64-linux/paftools.js /usr/local/bin/


wget http://ccb.jhu.edu/software/stringtie/dl/stringtie-2.1.6.Linux_x86_64.tar.gz -O /tmp/stringtie-2.1.6.Linux_x86_64.tar.gz
tar -zxvf /tmp/stringtie-2.1.6.Linux_x86_64.tar.gz -C /tmp/
cp /tmp/stringtie-2.1.6.Linux_x86_64/stringtie /tmp/stringtie-2.1.6.Linux_x86_64/stringtie/prepDE* /usr/local/bin/

wget https://github.com/arq5x/bedtools2/releases/download/v2.30.0/bedtools.static.binary -O /usr/local/bin/bedtools
chmod +x /usr/local/bin/bedtools

wget https://github.com/BrooksLabUCSC/flair/archive/refs/tags/v1.5.zip -O /tmp/v1.5.zip
cd /tmp/ && unzip v1.5.zip && cp -r /tmp/flair-1.5/ /opt/
chmod +x /opt/flair-1.5/*


git clone git@github.com:btrspg/freddie.git /opt/freddie/

git clone --recursive https://github.com/jts/nanopolish.git /tmp/nanopolish
cd /tmp/nanopolish && make 
cp /tmp/nanopolish/nanopolish /usr/local/bin/

wget https://raw.githubusercontent.com/roblanf/minion_qc/master/MinIONQC.R -O /usr/local/bin
chmod +x /usr/local/bin/MinIONQC.R

wget https://bitbucket.org/kokonech/qualimap/downloads/qualimap_v2.2.1.zip -O /tmp/qualimap_v2.2.1.zip
cd /tmp/ && unzip /tmp/qualimap_v2.2.1.zip 
cp -r /tmp/qualimap_v2.2.1 /opt/qualimap














