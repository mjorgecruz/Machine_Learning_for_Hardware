# Machine Learning for Hardware

A Docker-based development environment for machine learning applications in hardware design and optimization.

## Quick Start

### Prerequisites
- Docker
- Docker Compose (optional but recommended)
- Git

### Setup
0. **Install the NVIDIA Container Toolkit**
   https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html

1. **Clone the repository**
   ```bash
   git clone https://github.com/mjorgecruz/Machine_Learning_for_Hardware.git
   cd Machine_Learning_for_Hardware
   ```

2. **Build and start the Docker image**
   ```bash
   # Using Docker Compose
   docker-compose up --build -d
   ```

4. **Access Jupyter Notebook**
   - Open your browser and navigate to `http://localhost:8888`
   - Get the access token from the container:
     ```bash
     # get docker container_id
     sudo docker ps
     # get token
     sudo docker exec -it <container_id> conda run -n ml_learning jupyter notebook list
     ```

## Environment

The project uses a conda environment called `ml_learning` with the following packages:

### Core Libraries
- **Python 3.9**
- **NumPy** - Numerical computing
- **Pandas** - Data manipulation and analysis
- **SciPy** - Scientific computing
- **Matplotlib** - Plotting and visualization

### Machine Learning & Deep Learning
- **PyTorch** - Deep learning framework
- **TensorFlow** - Machine learning platform
- **Scikit-learn** - Machine learning library

### Jupyter Environment
- **JupyterLab** - Interactive development environment
- **Jupyter Notebook** - Web-based notebook interface
- **nb_conda** - Conda environment integration

### Additional Tools
- **Seaborn** - Statistical data visualization
- **Plotly** - Interactive plotting
- **ipywidgets** - Interactive widgets for Jupyter

## Project Structure

```
Machine_Learning_for_Hardware/
├── Dockerfile              # Docker container configuration
├── docker-compose.yml      # Docker Compose configuration
├── environment.yml         # Conda environment specification
├── README.md               # This file
├── LICENSE                 # Project license
├── ml_hardware_roadmap.md  # Project roadmap and goals
├── resources.md            # Additional resources and references
└── notebooks/              # Jupyter notebooks (created when you start working)
|__ projects/               # full projects subrepos
```

## Customization

### Adding New Packages
1. Edit `environment.yml` to add new conda packages
2. Rebuild the Docker image:
   ```bash
   docker build -t ml-hardware-project .
   ```
test again