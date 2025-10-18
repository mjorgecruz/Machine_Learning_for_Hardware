FROM continuumio/miniconda3

WORKDIR /app

COPY environment_coursera.yml /app/environment.yml

RUN apt-get update && apt-get install -y --no-install-recommends \
    libnss3 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libgbm1 \
    libx11-xcb1 \
    libxcb-dri3-0 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    libxss1 \
    libasound2 \
    libpangocairo-1.0-0 \
    libxshmfence1 \
    xvfb && \
    rm -rf /var/lib/apt/lists/*

RUN conda env create -f /app/environment.yml

VOLUME ["/app"]

RUN echo "source activate ml_learning" > ~/.bashrc
ENV PATH=/opt/conda/envs/ml_learnng/bin:$PATH

EXPOSE 8888

CMD ["conda", "run", "-n", "ml_learning", "jupyter", "notebook", "--notebook-dir=/app", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]