<div align="center">
# DL3DV-10K Dataset 
	
** DL3DV-10K is a dataset of real-world scene-level videos with scene annotations.**

This repo helps you get ready to download all the DL3DV-10K dataset.

<img src="imgs/img_2.jpg" width="1000px">

---
<p align="center">
  <a href="[https://dl3dv-10k.github.io/DL3DV-10K/]">Website</a> •
  <a href="#dataset-format">Dataset Format</a> •
  <a href="#tutorials">Tutorials</a> •
  <a href="#license">License</a>
</p>

</div>

We introduce DL3DV-10K, a large-scale, scene dataset capturing real-world scenarios. DL3DV-10K contains 51.2 million frames from 10,510 videos at 4K resolution spanning 65 types of point-of-interest (POI) locations, covering a wide range of everyday areas. In addition to scene diversity annotation, DL3DV-10K enjoys a fine-grained annotation that covers environment settings (indoor and outdoor scenes),  different levels of reflection, transparency, and lighting. DL3DV-10K enables a comprehensive benchmark for novel view synthesis and supports learning-based 3D representation techniques in acquiring a universal prior at scale.


## Key Feature
- 10,510 videos covering 51.2 million frames at 4k resolution.
- 140 videos as Novel view synthesis (NVS) benchmark.
- All videos are annotated by scene environment (indoor vs. outdoor), levels of reflection, transparency, and lighting.
- Released samples include camera pose and point cloud.
- Benchmark videos offer trained parameters from the SOTA NVS methods, including 3D Gaussian Splatting, ZipNeRF, Mip-NeRF 360, Instant-NGP, and Nerfacto.





## Updates (2023-10-22)
- [ ] Benchmark Dataset Release
	- [-] Benchmark statistics 
	- [-] Benchmark training results  
	- [-] Raw videos 
	- [ ] Sample videos 

- [ ] 10K Full Dataset Release





## DL3DV Novel View Synthesis Benchmark 
We report the performances of the main STOA methods (2023 Fall) on our large-scale NVS benchmark. Here is the quantitative results. Please refer to our paper for more details (e.g. more quantitative and qualitative results.)
![Benchmark Table](imgs/nvs-benchmark-tables.jpg)
![Benchmark Plot](imgs/nvs-benchmark-plot.jpg)

### Benchmark Sample 
https://huggingface.co/datasets/ysheng/DL3DV-10K/tree/main

### Benchmark Download 
A benchmark sample (~15 videos that cover challenging real-world scenes) can be found in TODO.  
Please send an email to `ling58@purdue.edu` to get instructions to download the full benchmark.   


## DL3DV-10K Dataset 
![Dataset Quantity](imgs/dataset-quantity.jpg)
DL3DV-10K has more than **10K** high quality videos that cover diverse real-world scenes for 3D vision tasks 

**The downloading site is still under developping. Stay tuned!**



## Citation
TODO


<!-- ## Dataset Distributions

## Download 
### DL3DV-10K Dataset
**Stay tuned!**

### NVS Benchmark
 -->
