## Base Image
FROM centos
## MAINTAINER
MAINTAINER wanght && wanght@gooalgene.com
## INSTALL R
RUN yum install epel-release -y && yum install R -y && yum install libcurl-devel.x86_64 libxml2-devel -y && yum clean all
## INSTALL R PACKAGES
RUN Rscript -e 'install.packages("BiocManager",repos="https://mirrors.tuna.tsinghua.edu.cn/CRAN/")' -e 'source("http://bioconductor.org/biocLite.R")' -e 'biocLite("minfi")' \
-e 'biocLite("VariantAnnotation")' -e 'biocLite("ensembldb")' -e 'biocLite("TxDb.Hsapiens.UCSC.hg19.knownGene")' -e 'biocLite(c("biovizBase","FDb.InfiniumMethylation.hg19","Gviz","methylumi","lumi","IlluminaHumanMethylation450kanno.ilmn12.hg19","geneLenDataBase"))'

RUN Rscript -e 'BiocManager::install("ensembldb", version = "3.8")' -e 'BiocManager::install("goseq")' -e 'BiocManager::install("TxDb.Hsapiens.UCSC.hg19.knownGene")' -e 'BiocManager::install(c("biovizBase", "FDb.InfiniumMethylation.hg19", "Gviz", "methylumi", "lumi", "IlluminaHuilmn12.hg19", "geneLenDataBase", "DMRcate", "IlluminaHumanMethylationEPICmanifest", "globaltest", "IlluminaHumanMethylation450kmanifest"))' -e 'BiocManager::install(c("wateRmelon","IlluminaHumanMethylationEPICanno.ilm10b2.hg19"))'

RUN Rscript -e 'BiocManager::install("wateRmelon")' -e 'BiocManager::install("ChAMP")' -e 'install.packages("getopt",repos="https://mirrors.tuna.tsinghua.edu.cn/CRAN/")'
## INSTALL PYTHON3 and Neccessary modules
RUN yum install -y python34 python34-pip && yum clean all && pip3 install pyyaml  
