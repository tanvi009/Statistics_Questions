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

Hypothesis considered in ANOVA is:
Null Hypothesis (𝐻0): 𝜇1 = 𝜇2 = 𝜇3 = ⋯ = 𝜇𝑐
Alternative Hypothesis (𝐻𝑎): At least one population mean is different from the rest.

ANOVA uses F statistics to compute result.
The statistic which measures if the means of different samples are significantly different or not is called the F-Ratio. Lower the F-Ratio, more similar are the sample means. In that case, we cannot reject the null hypothesis.

F = Between group variability / Within group variability

Unlike the z and t-distributions, the F-distribution does not have any negative values because between and within-group variability are always positive due to squaring each deviation.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


