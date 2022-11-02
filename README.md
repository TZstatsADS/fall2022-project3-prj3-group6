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

+ Project summary: In this project, we created two models for image classification. The first model is a CNN model using the package from TensorFlow on Python, using the noisy labels to train it. The second model utilizes weakly supervised learning. We applied label correction and used the corrected labels to train our model from model 1. The method we used for label correction is a different version of the CNN model. Overall, we see great improvement in model 2 because the weakly supervised learning process was added. Lastly, we will use given test datset with clean label to get the model evaluation accuracy.

Contribution Statement:
All group members attended group meeting on time. Xilin took the majority part of planning and organizing of tasks for the project. Xilin constructed first supervised model. Judy and Nick constructed weakly supervised model. Xilin and Judy worked on modifying the models to increase the evaluation accuracy. Judy was responsible for code integration and code cleaning. Tim worked on the making the prediction and generating a CSV file combining all the model results. Tim worked on modifying part 3, the evaluation part and integrate it with csv generating code. Xilin, Tim and Dhruv worked on the writing of Github repository. Judy worked on the organizing of the Github repository, and Dhruv worked on the presentation of the project to the class. All team members approve our work presented in this GitHub repository including this contributions statement. 



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
