# Copyright (c) 2017 - 2018 by Universidad del Valle.  All Rights Reserved.
# This software is the confidential and proprietary information of
# Universidad del Valle ("Confidential Information").
# You shall not disclose such Confidential Information and shall use it
# only in accordance with the terms of the license agreement you entered
# into with the Universidad del Valle (Cali, Colombia).

# CLASIFICATION USING THE FREQUENCY DOMAIN IMAGE

clear all;
close all;
pkg load image;
pkg load statistics;
dir = readdir('training');
data = cell(480,256);
label = cell(480,1);

numImg = 2;
for i = 1:480
  numImg = numImg + 1;
  img = imread(strcat("training/",dir(numImg)){1,1});
  lbpImg = lbp(img);
  for j = 1:256
    data{i,j} = lbpImg(j);
  endfor
  numFrame = str2num(substr(dir(numImg){1,1},9,-5));
  if(numFrame <= 240)
    label(i) = 1;
  else
    label(i) = -1;
  endif
endfor

dataMAT = cell2mat(data);
labelMAT = cell2mat(label);
model = svmtrain(labelMAT,dataMAT,'-s 0 -t 0 -c 100');

#######################################################
dir2 = readdir('test');
data2 = cell(200,256);
label2 = cell(200,1);

numImg = 2;
for i = 1:200
  numImg = numImg + 1;
  img = imread(strcat("test/",dir2(numImg)){1,1});
  lbpImg = lbp(img);
  for j = 1:256
    data2{i,j} = lbpImg(j);
  endfor
  numFrame = str2num(substr(dir2(numImg){1,1},9,-5));
  if(numFrame <= 100)
    label2(i) = 1;
  else
    label2(i) = -1;
  endif
endfor

dataMAT2 = cell2mat(data2);
labelMAT2 = cell2mat(label2);
[C] = svmpredict(labelMAT2,dataMAT2,model);


#Confusion Matrix
frameCount = 2;
dirOri = readdir('originals');
for i = 1:200
  frameCount = frameCount + 1;
  numFrame = str2num(substr(dirOri(frameCount){1,1},8,-5)); 
  imXsave = imread(strcat("originals/",dirOri(frameCount)){1,1});
  imwrite(imXsave, strcat(num2str(C(i)),"/",num2str(numFrame),".png"));
endfor