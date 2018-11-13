## Base Image
FROM centos
## MAINTAINER
MAINTAINER wanght && wanght@gooalgene.com
## INSTALL R
RUN yum install epel-release -y && yum install R -y && yum clean all
## INSTALL R PACKAGES
RUN Rscript -e 'source("http://bioconductor.org/biocLite.R")' -e '("ChAMP")'

