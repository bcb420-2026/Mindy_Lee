FROM bcb420-base-image

RUN R -e "install.packages('pheatmap', repos='https://cloud.r-project.org')"

RUN R -e "if (!requireNamespace('BiocManager', quietly=TRUE)) install.packages('BiocManager', repos='https://cloud.r-project.org'); \
          BiocManager::install(c('DESeq2','enrichplot'), ask=FALSE, update=FALSE)"
