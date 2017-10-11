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
<p>
Ballesteros C., Trujillo M., Mazo C., Chaves D., Hoyos J. (2017) Automatic Classification of Non-informative Frames in Colonoscopy Videos Using Texture Analysis. In: Beltrán-Castañón C., Nyström I., Famili F. (eds) Progress in Pattern Recognition, Image Analysis, Computer Vision, and Applications. CIARP 2016. Lecture Notes in Computer Science, vol 10125. Springer, Cham
</p>

<b>BibText:</b>
```
@Inbook{Ballesteros2017,
  author="Ballesteros, Cristian
  and Trujillo, Maria
  and Mazo, Claudia
  and Chaves, Deisy
  and Hoyos, Jesus",
  editor="Beltr{\'a}n-Casta{\~{n}}{\'o}n, C{\'e}sar
  and Nystr{\"o}m, Ingela
  and Famili, Fazel",
  title="Automatic Classification of Non-informative Frames in Colonoscopy Videos Using Texture Analysis",
  bookTitle="Progress in Pattern Recognition, Image Analysis, Computer Vision, and Applications: 21st Iberoamerican Congress, CIARP 2016, Lima, Peru, November 8--11, 2016, Proceedings",
  year="2017",
  publisher="Springer International Publishing",
  address="Cham",
  pages="401--408",
  abstract="Colonoscopy is the most recommended test for preventing/detecting colorectal cancer. Nowadays, digital videos can be recorded during colonoscopy procedures in order to develop diagnostic support tools. Once video-frames are annotated, machine learning algorithms have been commonly used in the classification of normal-vs-abnormal frames. However, automatic analysis of colonoscopy videos becomes a challenging problem since segments of a video annotated as abnormal, such as cancer or polypos, may contain blurry, sharp and bright frames. In this paper, a method based on texture analysis, using Local Binary Patterns on the frequency domain, is presented. The method aims to automatically classify colonoscopy video frames into either informative or non-informative. The proposed method is evaluated using videos annotated by gastroenterologists for training a support vector machines classifier. Experimental evaluation shown values of accuracy over 97{\%}.",
  isbn="978-3-319-52277-7",
  doi="10.1007/978-3-319-52277-7_49",
  url="https://doi.org/10.1007/978-3-319-52277-7_49"
}
  ```
