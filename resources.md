# Resources used to prepare this repository

## How to start

### Python Development using Docker, devcontainers and VSCode
https://medium.com/@ochwada/efficient-python-development-combining-the-powers-of-docker-conda-and-vs-code-8e5c0b9c75b0

This guide specifically focuses on using Anaconda distribution within Docker to create a consistent and reproducible development environment, facilitating collaboration and easing the process of package management.



Python Feature
    List comprehensions 
    Generator expressions
    Context Managers
    Dictionary and set operations
    Decorators
    Type hints  

Deploy Python Apps:
    Web apps: Heroku, Railway, Render
    Data Project: Google Colab, Kaggle



---

## ⚙️ Phase 1 — Core ML Math + ML Systems Basics (Months 1–3)

### 🧠 Goals:

* Build intuition behind DL math
* Understand how DL frameworks (like PyTorch) run on hardware

### 🔧 Weekly Commitments:

| Topic              | Resource                                                                                                                  |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------- |
| **Linear Algebra** | [Essence of Linear Algebra – 3Blue1Brown (YouTube)](https://youtube.com/playlist?list=PLZHQObOWTQDMsr9K-rj53DwVRMYO3t5Yr) |
| **Probability**    | [Khan Academy – Probability and Stats](https://www.khanacademy.org/math/statistics-probability)                           |
| **Optimization**   | [CS229 Lecture Notes on Optimization](https://cs229.stanford.edu/)                                                        |
| **ML Foundations** | [fast.ai Practical Deep Learning](https://course.fast.ai/) **or** [MIT 6.S191](https://introtodeeplearning.mit.edu/)      |

### 💻 Hands-On:

* Build a **linear regression** and **logistic regression** from scratch (NumPy only)
* Install PyTorch and train a small CNN (CIFAR-10)

### 🧩 Capstone:

* **Blog Post**: “How I Built Linear Regression from Scratch — with GPU Performance in Mind”
* GitHub: clean, commented notebooks

---

## ⚡ Phase 2 — Efficient Inference and Embedded ML (Months 4–6)

### 🧠 Goals:

* Learn how models run on constrained hardware (Jetson, Pi, ESP32, etc.)
* Quantization, pruning, and inference speedups

### 📚 Core Topics:

| Topic           | Resource                                                                                                                      |
| --------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| Quantization    | [Post-training Quantization – PyTorch Tutorial](https://pytorch.org/tutorials/advanced/static_quantization_tutorial.html)     |
| Efficient Nets  | [MobileNetV2 paper](https://arxiv.org/abs/1801.04381), [YOLOv8 Nano](https://docs.ultralytics.com/models/yolov8/#nano-models) |
| Edge Deployment | Jetson inference tutorials, [Edge Impulse](https://docs.edgeimpulse.com/docs)                                                 |
| Compiler Stacks | [TVM Introduction](https://tvm.apache.org/docs/tutorials/)                                                                    |

### 💻 Projects:

* Deploy quantized MobileNetV2 to Jetson Nano or Pi
* Compare latency/accuracy before vs. after optimization
* Try to use TensorRT or TVM if you can

### 📦 Output:

* **Repo**: `efficient-ml-on-jetson`
* **Blog**: “Deploying Quantized MobileNet on a Jetson Nano: A Beginner’s Deep Dive”

---

## 🧪 Phase 3 — Research Replication + Original Extension (Months 7–9)

### 🧠 Goals:

* Learn how to read and replicate ML papers
* Start doing original work in ML + hardware

### 📚 Reading Focus:

* [LoRA / QLoRA (Parameter Efficient Fine-Tuning)](https://arxiv.org/abs/2106.09685)
* [RT-DETR](https://arxiv.org/abs/2304.08069) or \[YOLOv8-Nano]: Fast object detection
* Optional: Transformer acceleration (FlashAttention, etc.)

### 💻 Project:

* Replicate a paper *on your own dataset* (SEA\:ME road data? Sign classifier?)
* Add a twist: e.g., port it to Triton or optimize with TVM

### 📦 Output:

* **Tech Report (ArXiv or GitHub PDF)**: With graphs, performance comparisons
* **Demo Video**: On-device inference (camera → model → output)

---

## 🧠 Phase 4 — Publication & Network Leverage (Months 10–12)

### 🧠 Goals:

* Publish your first research-style work
* Get visible in ML communities

### 📚 Write:

* A concise tech report using [LaTeX template for ArXiv](https://www.overleaf.com/latex/templates/arxiv-article-template/jygpkngmfrqp)
* Include: problem → method → results → speed/memory gains

### 📡 Share:

* Submit to a NeurIPS or ICLR workshop (e.g., ML Systems, Efficient ML)
* Post on Reddit r/MachineLearning, Twitter/X, and Hugging Face forums

### 💬 Optional:

* Reach out to researchers or devs with similar work — get feedback
* Apply to [ML Collective](https://mlcollective.org/) for mentorship or project collabs

---