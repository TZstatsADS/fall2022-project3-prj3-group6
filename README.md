# Project: Weakly supervised learning-- label noise and correction


### [Full Project Description](doc/project3_desc.md)

Term: Fall 2022

+ Team group6
+ Team members
	+ Barker, Nicolas 
	+ Huang, Xilin
	+ Ko, Ting Han
	+ Limaye, Dhruv
	+ Wu, Judy

+ Project summary: In this project, we created two models for image classification. The first model is a CNN model using the package from TensorFlow on Python, using the noisy labels to train it. The second model utilizes weakly supervised learning. We applied label correction and used the corrected labels to train our model from model 1. The method we used for label correction is a different version of the CNN model. Overall, we see great improvement in model II because the weakly supervised learning process was added. The accuracy score for our model II is 0.6998. The evaluation accuracy based on given dataset is 0.54. Lastly, we will use given test datset with clean label to get the model evaluation accuracy.

Contribution Statement:
All group members attended each group meeting and on time. Xilin conducted the organization and planning of most of the project tasks. Xilin constructed the first supervised model. Judy and Nick constructed weakly supervised model. Xilin and Judy worked on modifying the models to increase the evaluation accuracy. Judy was responsible for code integration and code cleaning. Tim and Dhruv worked on making the prediction and modifying the evaluation part so that it can generate csv file while running the prediction. Xilin, Tim and Dhruv worked on the writing of the Github repository. Judy worked on the organizing of the Github repository, and Dhruv worked on the presentation of the project to the class. All team members approve our work presented in this GitHub repository including this contributions statement. 



Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
