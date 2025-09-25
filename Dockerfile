FROM continuumio/miniconda3

WORKDIR /app

COPY environment_coursera.yml /app/environment.yml

RUN conda env create -f /app/environment.yml

VOLUME ["/app"]

RUN echo "source activate ml_learning" > ~/.bashrc
ENV PATH=/opt/conda/envs/ml_learnng/bin:$PATH

EXPOSE 8888

CMD ["conda", "run", "-n", "ml_learning", "jupyter", "notebook", "--notebook-dir=/app", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]