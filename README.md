# Support Vector Machines for 2D Data

We will use Support Vector Machines (SVMs), a "black box" learning algorithm, to classify 2D data. 

You can import your own 2D dataset into either code below. However, I will provide example 2D datasets to demonstrate the implementation of our SVMs (one in which the data is linearly separable and one with a non-linear decision boundary).

# Running the Project 

- Make sure you have MATLAB or Octave installed. 
- Clone the project to your local machine. 
- To classify 2D data with a linear boundary, run SVM_linearboundary.m. 
- To classify 2D data with a nonlinear boundary, run SVM_nonlinearboundary.m. 
- For a guided implementation, you can instead run the live script SVMfor2DData.mlx. 

# Project Details: Data with Linear Boundaries

We'll start with a simple 2D dataset, which can be separated with a linear boundary. The data is plotted below, with "positive" examples indicated as "x" and "negative" examples indicated with "o". However, you can load your own dataset into this function to separate your own data!

![lineardata](https://github.com/amandalesar/svm_2ddata/blob/master/svmimages/lineardata.jpg)

We will use the functionality available in the MATLAB Statistics and Machine Learning toolbox to train our SVM using a linear kernel. The decision boundary is plotted below and clearly separates our data!

![lineardata](https://github.com/amandalesar/svm_2ddata/blob/master/svmimages/linearfit.jpg)

# Project Details: Data with Nonlinear Boundaries

What if we have a more complicated dataset, which requires non-linear classification? 

My sample dataset is plotted below, with "positive" examples indicated as "x" and "negative" examples indicated with "o". However, you can load your own dataset into this function to separate your own data!

![nonlineardata](https://github.com/amandalesar/svm_2ddata/blob/master/svmimages/nonlienardata.jpg)

We can observe that there is no linear decision boundary which will reasonably separate the positive and negative examples in our dataset.

We can use a Gaussian kernel with our SVM to learn a non-linear decision boundary for our data. We will use the functionality available in the MATLAB Statistics and Machine Learning toolbox to train our SVM to fit a Gaussian kernel. I set the loss value to be 0.03, but feel free to modify for your own dataset!

![nonlinearfit](https://github.com/amandalesar/svm_2ddata/blob/master/svmimages/nonlinearfit.jpg)

The the decision boundary found by the SVM with a Gaussian kernel is able to separate most of the positive and negative examples correctly!

In order to use this algorithm for your own data, simply load in your data into either function above!
