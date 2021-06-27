# Welcome to Statistics World

Before I jump to Hypothesis there are few terminologies/concepts one should know:

**Population:** A population is the largest possible collection of items with a set of common characteristics. Size of a population is denoted by N. N may be finite or infinite.

**Sample:** A sample is a subset of the population. Size of a sample is denoted by n, n is always finite.

**Random Sample:** A random sample is a subset of the population where each unit of the population has equal chance of getting selected.

**Population Parameter:** A population is determined by its parameters. Population parameters are constants. A normal population is determined by its mean μ and variance σ2 (or standard deviation σ).

**Central Limit Theorem:** If the sample size is large enough (n ≥ 30) then, sample mean distribution of random variables follows a normal distribution with mean μ and standard deviation σ /√  n.

**Ineferential Statistics:** Inferential statistics makes inferences of population based on relations found in the sample. Inferential statistics help us decide whether the differences between groups that we see in our random sample data are strong enough to provide support for our hypothesis that group differences exist in general, in the entire population or it happened by chance.

**Confidence Interval:** A confidence interval refers to the probability that a population parameter will fall between a set of values for a certain proportion of times. In other words, it refers to the percentage of probability, or certainty, that the confidence interval would contain the true population parameter when you draw a random sample many times. 

Now we understand basic terminologies, Let's see What Hypothesis Testing is and key terminologies used in Hypothesis Testing?

A **hypothesis** is a conjecture about a parameter of a population. Object of the hypothesis testing procedure is to SET a value for the parameter(s) and perform a statistical TEST to see whether that value is tenable in the light of the evidence gathered from the sample. All analysts use a random population sample to test two different hypotheses: the null hypothesis and the alternative hypothesis.

**NULL HYPOTHESIS**: Null hypothesis (H0) is the presumed current state of the matter or status quo.

**ALTERNATIVE HYPOTHESIS:** Alternative hypothesis (HA) is the rival opinion or research hypothesis or an improvement target.

Note that hypothesis testing is done on the basis of sampling distribution, the decisions made are probabilistic. Hence it is very important to understand the errors associated with hypothesis testing.

![image](https://user-images.githubusercontent.com/63853707/122728265-9499ce80-d295-11eb-8a3e-38ae80312194.png)

There is an example which I picked up from Analytics Vidhya for more clarification:

The person is arrested on the charge of being guilty of burglary. A jury of judges has to decide guilty or not guilty.

H0: Person is innocent
H1: Person is guilty

Type I error will be if the Jury convicts the person [rejects H0] although the person was innocent [H0 is true].
Type II error will be the case when Jury released the person [Do not reject H0] although the person is guilty [H1 is true].

**One-tailed and two-tailed Hypothesis Testing**

If the alternate hypothesis gives the alternate in both directions (less than and greater than) of the value of the parameter specified in the null hypothesis, it is called a **Two-tailed test**. In the below diagram a) is Two-tailed test.

If the alternate hypothesis gives the alternate in only one direction (either less than or greater than) of the value of the parameter specified in the null hypothesis, it is called a **One-tailed test**. In the below diagram b) is Left-tailed test and c) is Right-tailed test.

![image](https://user-images.githubusercontent.com/63853707/122740069-3d99f680-d2a1-11eb-9812-313b6c60be54.png)

**p-value:** p-value is the probability of obtaining test results at least as extreme as the results actually observed, under the assumption that the null hypothesis is correct. In other words, how likely it is to get results we are getting if Null Hypothesis is true. A very small p-value means that such an extreme observed outcome would be very unlikely under the null hypothesis.

**Decision making with p-value**

The p-value is compared to the pre-chosen alpha value(Significance Level). Usually significant level of 5% or 1% is considered for taking a decision on Null Hypothesis.

**If p-value > alpha:** Fail to reject the null hypothesis (i.e. not significant result).

**If p-value <= alpha:** Reject the null hypothesis (i.e. significant result).

Now moving on to types of Hypothesis Testing we can perform.

**z-Test:**  z-test is a statistical test to determine whether two population means are different when the population variances are known and the sample size is large(>30). z-test is a hypothesis test in which the z-statistic follows a normal distribution. A z-statistic, or z-score, is a number representing how many standard deviations above or below the mean population a score derived from a z-test is. Null hypothesis is rejected when z is greater than Critical Value and vice versa. Z score is calculated as:

![image](https://user-images.githubusercontent.com/63853707/122749513-0f211900-d2ab-11eb-92f7-c05cde40e248.png)


**t-test:** t-tests are a statistical way of comparing the means of two groups. It is used when we do not know the population variance and Our sample size is small, n < 30. Similarly to z score, t-test has t score. The difference from the z-Test is that we do not have the information on Population Variance here. We use the sample standard deviation instead of population standard deviation in this case.

![image](https://user-images.githubusercontent.com/63853707/122749635-311a9b80-d2ab-11eb-8217-6899d283bae8.png)

**Deciding between z-Test and t-Test**

![image](https://user-images.githubusercontent.com/63853707/122744040-3c6ac880-d2a5-11eb-81db-b3d230942d29.png)

**ANOVA:** Analysis of Variance (ANOVA) is one of the techniques that identify one or more factors that may contribute to the source of variability in a dataset. In other words, ANOVA is a statistical technique that is used to check if the means of two or more groups are significantly different from each other. ANOVA checks the impact of one or more factors by comparing the means of different samples.

**Note:** t-test is also a method to compare the samples. When we have only two samples, t-test and ANOVA give the same results. However, using a t-test would not be reliable in cases where there are more than 2 samples. If we conduct multiple t-tests for comparing more than two samples, it will have a compounded effect on the error rate of the result.

There are few assumptions which must be fulfilled before using ANOVA:

1. The populations from where samples have been drawn should follow a normal distribution.
2. The samples have been selected randomly and independently.  
3. Each group should have common variance i.e. should be homoscedastic i.e. the variability in the dependent variable values within different groups is equal.

Hypothesis considered in ANOVA is:
Null Hypothesis (𝐻0): 𝜇1 = 𝜇2 = 𝜇3 = ⋯ = 𝜇𝑐
Alternative Hypothesis (𝐻𝑎): At least one population mean is different from the rest.

The result of the ANOVA formula uses the F statistic (also called the F-ratio) which allows for the analysis of multiple groups of data to determine the variability between samples and within samples. Lower the F-Ratio, more similar are the sample means. In that case, we cannot reject the null hypothesis.

F = Between group variability / Within group variability

Unlike the z and t-distributions, the F-distribution does not have any negative values because between and within-group variability are always positive due to squaring each deviation.

Summary Chart for Hypothesis:

![image](https://user-images.githubusercontent.com/63853707/123535714-382a2980-d743-11eb-99f0-d09aaefefb86.png)

**Chi Square:**  A chi-square (χ2) statistic is a test that measures how a model compares to actual observed data. The data used in calculating a chi-square statistic must be random, raw, mutually exclusive, drawn from independent variables, and drawn from a large enough sample. For example, the results of tossing a fair coin meet these criteria.
There are two main kinds of chi-square tests: the test of independence, which asks a question of relationship, such as, "Is there a relationship between student sex and course choice?"; and the goodness-of-fit test, which asks something like "How well does the coin in my hand match a theoretically fair coin?"

![image](https://user-images.githubusercontent.com/63853707/123536062-a112a100-d745-11eb-8c1d-2be1c869deef.png)


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Now a days, collecting data is not a big task, data is huge but to understand what data actaul tells us is something we can always learn. In our world, where we make decisions based on this structured data, there is a potential danger of having too much information and even the risk of losing some important information. Eg, To explain customer satisfaction we would like to incraese our Independent variables to get reliable and more accurate mode. In case of categorical variables we might create dummy variables, hence the amount of data might grow exponentially. This phenomenon of having too much information is referred to as the ‘Curse of Dimensionality.’ Hence, there are powerful techniques available to deal with these challenges. These are known as Dimensionality Reduction techniques. We can either drop our variable or might reduce the dimension by combining variables.
Dimensionality reduction reduces features (from high dimensional features space to lower dimensions) to reduce the scatteredness (or sparsity) of the features space without impacting the total information content. The two prevalent methods are Principal Component Analysis (PCA) and Factor Analysis, which help us overcome the curse of dimensionality while minimizing the loss of information. Let's learn about them:

**Factor Analysis:** The primary aspect of factor analysis is to unearth the latent (or also known as the factors) that store a variable’s spread (or the information).
We perform factor analysis also to decrease the larger number of attributes into a smaller set of factors. When analyzing data with many predictors, some of the features may have a common theme amongst themselves. The features that have similar meaning underneath could be influencing the target variable by sharing this causation, and hence such features are combined into a factor.  Thus, a factor (or latent) is a common or underlying element with which several other variables are correlated. Also, these latent variables (or latent constructs) are not directly observable and hence are not measurable by themselves with a single variable.

Some basic terminologies used in FA:

**Eigenvalue:**  The eigenvalue is a measure of how much of the variance of the observed variables a factor explains.  Any factor with an eigenvalue ≥1 explains more variance than a single observed variable.

**Scree Plot:** Scree Plot determine optimal number of factors or components we can use in FA. If Eigne Values < 1 , those factprs are not considered.

**Factor Loading:** The relationship of each variable to the underlying factor is expressed by the so-called factor loading.


**Principal Compenent Analysis:** Principal Component Analysis (PCA) is the technique that removes dependency or redundancy in the data by dropping those features that contain the same information as given by other attributes and the derived components are independent of each other.

The approach of PCA to reduce the unnecessary features, which are present in the data,  is by creating or deriving new dimensions (or also referred to as components). These components are a linear combination of the original variables. This way, PCA converts a larger number of correlated variables (i.e., breaks down the data) into a smaller set of uncorrelated variables. A principal component of a data set is the direction with the largest variance. Technically, PCA does this by rotation of the axes of each of the variables. The axes are rotated so that it absorbs all the information or the spread available in the variable. So, now each of the axes is a new dimension or the principal component. The component is defined as the direction of the dataset explaining the highest variance, which is implied by the eigenvalue of that component. The rotation of the axis is graphically depicted.

![image](https://user-images.githubusercontent.com/63853707/123536725-b4277000-d749-11eb-859a-60888d674d3d.png)

Now, you may be wondering, which of the two techniques shall I use? PCA or factor analysis? This is an easy one.

When your purpose is to reduce the correlated observed predictors into a smaller set of dimensions or components that are independent of each other, use PCA. On the other hand, if your goal is to dig deeper to understand and test the model for the presence of latent factors that may be causing the variation in the data, then use factor analysis.


