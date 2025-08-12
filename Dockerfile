FROM continuumio/miniconda3

WORKDIR /app

COPY environment.yml /app/environment.yml

RUN conda env create -f /app/environment.yml

VOLUME ["/app"]

RUN echo "source activate geospatial" > ~/.bashrc
ENV PATH=/opt/conda/envs/geospatial/bin:$PATH

EXPOSE 8888

CMD ["conda", "run", "-n", "geospatial", "jupyter", "notebook", "--notebook-dir=/app", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]