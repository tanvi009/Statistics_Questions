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






