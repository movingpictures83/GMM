# GMM
# Language: R
# Input: CSV (data)
# Output: PREFIX
# Tested with: PluMA 1.1, R 4.0.0
# Dependency: ClusterR_1.2.5

PluMA plugin that runs a Gaussian Mixture Model (Rasmussen, 1999),

The provided input example data uses the dietary_survey_IBS dataset,
also used by the GMM documentation.

The plugin will output four files, each using the user-specified PREFIX:
prefix.centroids.csv: centroids
prefix.covariance.csv: covariance matrix
prefix.loglikelihood.csv: log-likelihoods of each Gaussian component
prefix.weights.csv: weights of each Gaussian component

