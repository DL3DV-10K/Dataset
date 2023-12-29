<div align="center">
	
# DL3DV-10K Dataset 
	
**DL3DV-10K is a dataset of real-world scene-level videos with scene annotations.**

This repo helps you get ready to download all the DL3DV-10K dataset.

<img src="imgs/img_2.jpg" width="1000px">

---
<p align="center">
  <a href="[https://dl3dv-10k.github.io/DL3DV-10K/]">Website</a> •
  <a href="#nvs-benchmark-training-results">NVS Benchmark Training Results</a> •
  <a href="#data-preparation">Data Preparation</a> •
  <a href="#dataset-format">Dataset Format</a> •
  <a href="#license">License</a> •
  <a href="#bibtex">BibTex</a> 
	
</p>

</div>

We introduce DL3DV-10K, a large-scale, scene dataset capturing real-world scenarios. DL3DV-10K contains 51.2 million frames from 10,510 videos at 4K resolution spanning 65 types of point-of-interest (POI) locations, covering a wide range of everyday areas. In addition to scene diversity annotation, DL3DV-10K enjoys a fine-grained annotation that covers environment settings (indoor and outdoor scenes),  different levels of reflection, transparency, and lighting. DL3DV-10K enables a comprehensive benchmark for novel view synthesis and supports learning-based 3D representation techniques in acquiring a universal prior at scale.

We have witnessed significant progress in deep learningbased 3D vision, ranging from neural radiance field (NeRF) based 3D representation learning to applications in novel view synthesis (NVS). However, existing scene-level datasets for deep learning-based 3D vision, limited to either synthetic environments or a narrow selection of realworld scenes, are quite insufficient. This insufficiency not only hinders a comprehensive benchmark of existing methods but also caps what could be explored in deep learningbased 3D analysis. To address this critical gap, we present DL3DV-10K, a large-scale scene dataset, featuring 51.2 million frames from 10,510 videos captured from 65 types of point-of-interest (POI) locations, covering both bounded and unbounded scenes, with different levels of reflection, transparency, and lighting. We conducted a comprehensive benchmark of recent NVS methods on DL3DV-10K, which revealed valuable insights for future research in NVS. In addition, we have obtained encouraging results in a pilot study to learn generalizable NeRF from DL3DV-10K, which manifests the necessity of a large-scale scene-level dataset to forge a path toward a foundation model for learning 3D representation.

## Key Feature
- 10,510 multi-view scenes covering 51.2 million frames at 4k resolution.
- 140 videos as Novel view synthesis (NVS) benchmark.
- All videos are annotated by scene environment (indoor vs. outdoor), levels of reflection, transparency, and lighting.
- Released samples include camera pose and point cloud.
- Benchmark videos offer trained parameters from the SOTA NVS methods, including 3D Gaussian Splatting, ZipNeRF, Mip-NeRF 360, Instant-NGP, and Nerfacto.


## NVS Benchmark Training Results
We report the performances of the main STOA methods (2023 Fall) on our large-scale NVS benchmark. Here is the quantitative results. Please refer to our paper for more details (e.g. more quantitative and qualitative results.)

<div align="center">
<img src="imgs/nvs-benchmark-comparsion.jpg" alt="Benchmark Table" width="600px">
</div>

Performance on the benchmark. The error metric is calculated from the mean of 140 scenes on a scale factor of 4. Zip-NeRF uses the default batch size (65536) and Zip-NeRF* uses the identical batch size as other methods (4096). Note, the training time and memory usage may be different depending on various configurations. 

<div align="center">
<img src="imgs/nvs-benchmark-comparsion-plot.jpg" alt="Benchmark Table" width="1000px">
</div>

A presents the density plot of PSNR and SSIM and their relationship on \benchmark~for each method. B describes the performance comparison by scene complexity. The text above the bar plot is the mean value of the methods on the attribute.

## Data Preparation
### Data Scale
![Dataset Quantity](imgs/dataset-quantity.jpg)

DL3DV-10K has more than **10K** high quality videos that cover diverse real-world scenes for 3D vision tasks.

### Data collection
      
We have formulated the following requirements as guidelines for recording high-quality scene-level videos:

<div align="center">
<img src="imgs/video_shooting_example.jpg" alt="Benchmark Table" width="600px">
</div>

 - The scene coverage is in the circle or half-circle with a 30 secs-45 secs walking diameter and has at least five instances with a natural arrangement. 
 - The default focal length of the camera corresponds to the 0.5x ultra-wide mode for capturing a wide range of background information.  
 - Each video has a horizontal view of at least 180◦ or 360◦ from different heights, including overhead and waist. It offers high-density views of objects within the coverage area.
 - The video resolution should be 4K and have 60 fps (or 30 fps).
 - The video's length should be at least 60 secs for mobile phone capture and 45 secs for drone video recording.
 - We recommend limiting the duration of moving objects in the video to under 3 secs, with a maximum allowance of 10 secs.
 - The frames should not be motion-blurred or overexposed, and the captured objects should be stereoscopic. 



### Data statistics
<a href="https://dl3dv-10k.github.io/DL3DV-10K/">Visit DL3DV-10K Website</a>

## Dataset Format
- [x] Free download sample videos
Access here: https://huggingface.co/datasets/ysheng/DL3DV-10K/tree/main

- [ ] Benchmark dataset release
	- [x] Sample videos 
	- [ ] Raw videos
         - Please send an email to `ling58@purdue.edu` to get instructions to download the full benchmark.   

- [ ] 10K Full Dataset Release
      
**The downloading site is still under developping. Stay tuned!**

## License

## BibTeX
TODO


<!-- ## Dataset Distributions

## Download 
### DL3DV-10K Dataset
**Stay tuned!**

### NVS Benchmark
 -->
