# ColonoscopySVMClassification
Sources for <b>Automatic Classification of Non-informative Frames in Colonoscopy Videos Using Texture Analysis</b>

The code in this project was develop with *Octave*.

In order to build the sources, you need the following folders:
<ul>
  <li><b>training</b>: That contains the training images.</li>
  <li><b>test</b>: That contains the images for classify.</li>
  <li><b>originals</b>: Contains the Training and Original images.</li>
</ul>

The <b>Evaluation conditions</b> was splitted into 3 files:

<ul>
  <li><b>svmTest.m</b>: The LBP is calculated using the frequency domain image. The obtained descriptor is an array of 256 length.</li>
  <li><b>svmTest4.m</b>: The frequency domain image is divided into 4 × 4 blocks and the LBP is calculated on each block. This yields 16 histograms that are concatenated. The obtained descriptor is an array of 4096 length.</li>
  <li><b>svmTest16.m</b>: The frequency domain image is divided into 4×4 blocks and the 2×2 central blocks are used in the calculation of the LBP. This yields 4 histograms that are concatenated. The obtained descriptor is an array of 1024 length.</li>
</ul>

<b>Cite this paper as:</b>
Ballesteros C., Trujillo M., Mazo C., Chaves D., Hoyos J. (2017) Automatic Classification of Non-informative Frames in Colonoscopy Videos Using Texture Analysis. In: Beltrán-Castañón C., Nyström I., Famili F. (eds) Progress in Pattern Recognition, Image Analysis, Computer Vision, and Applications. CIARP 2016. Lecture Notes in Computer Science, vol 10125. Springer, Cham
