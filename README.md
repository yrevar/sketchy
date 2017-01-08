## WIP!

# Sketchy
http://sketchy.eye.gatech.edu  
Caffemodel for final Triplet GoogleNet network: https://goo.gl/NAk8CT  

## Setup (MAC OSX)
1. Setup caffe using ["All-in-one Docker image for Deep Learning"](https://github.com/saiprashanths/dl-docker). I used dl-docker because it supports iPython notebook and a lot of [other useful tools](https://github.com/saiprashanths/dl-docker/blob/master/README.md#specs), you could use [caffe's docker files](https://github.com/BVLC/caffe/tree/master/docker) or even build caffe on your machine. One caveat is that dl-docker takes roughly 5x more time (~10 minutes) to build compared to caffe's dockerfile, and its image is 3x bigger, 3.6GB vs. 1.38GB of caffe's docker image that contains ubuntu:14.04+basic tools+caffe.

2. To access iPython notebook from the host
 - iPython needs to be run as a public notebook server. This is already configured in the dl-docker image. All that is left to do is to secure the server with a password, instructions are available [here](http://jupyter-notebook.readthedocs.io/en/latest/public_server.html).
 - Additionally, port mapping is required between target and host ports. This can easily be done by passing "-p < host_port_no >:< target_port_no >" as an argument while launching docker container.

## Resources
CaffeNet deploy architecture: http://ethereon.github.io/netscope/#/gist/df3579b407601930c6a7f4021bd917fe
CaffeNet train_val architecture: http://ethereon.github.io/netscope/#/gist/955d3675f7df6b8152a3af33420ae8c3

# References
- Forked from: https://github.com/janesjanes/sketchy
- Patsorn Sangkloy, Nathan Burnell, Cusuh Ham, James Hays. [The Sketchy Database: Learning to Retrieve Badly Drawn Bunnies](http://www.cc.gatech.edu/~hays/tmp/sketchy-database.pdf).
- Sai Soundararaj. [dl-docker](https://github.com/saiprashanths/dl-docker).
- Wang et al. 2015. [Learning Fine-grained Image Similarity with Deep Ranking](http://users.eecs.northwestern.edu/~jwa368/pdfs/deep_ranking.pdf).
- Neural network visualizer: http://ethereon.github.io/netscope
- Eitz et al. 2012. How Do Humans Sketch Objects? http://cybertron.cg.tu-berlin.de/eitz/pdf/2012_siggraph_classifysketch.pdf
- [Learning a Similarity Metric Discriminatively, with Application to Face
Verification] http://yann.lecun.com/exdb/publis/pdf/chopra-05.pdf
- [Edgel Index for Large-Scale Sketch-based Image Search](http://bcmi.sjtu.edu.cn/~zhangliqing/Papers/2011CVPR-ImageSearch-Cao.pdf).
- CaffeNet fine-tuning tips: http://caffe.berkeleyvision.org/gathered/examples/finetune_flickr_style.html
- Tutorial - ["Deep Learning using NVIDIA DIGITS 3 on EC2"](https://www.youtube.com/watch?v=QZaAcl_F9R0) by Satya Malik
