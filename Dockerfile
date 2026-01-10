FROM risserlin/bcb420-base-image:winter2026

RUN R -e "install.packages('BiocManager', repos='https://cloud.r-project.org')"
RUN R -e "BiocManager::install(c('DESeq2','enrichplot','pheatmap'), ask=FALSE, update=FALSE)"
