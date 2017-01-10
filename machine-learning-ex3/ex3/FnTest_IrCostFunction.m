clear; clc; close all;
theta = [1;2;3;4]
X = [1 2 3 4;1 5 6 7;1 8 9 10]
y = [1; 0; 0]
lambda = 0.1



J = mean(sum(-y.*log(sigmoid(X'.*theta))'-(1-y).*log(1-sigmoid(X'.*theta))', 2))
J = J + lambda/2/m*sum(theta(2:end,1).^2)


#grad(1,1) = mean( X'.*( (sigmoid(X'.*theta))'-y ) )'(1,1);
#grad(2:end,1) = (mean( X'.*( (sigmoid(X'.*theta))'-y ) )'(1,1)+lambda/2/m*sum(theta(2:end,1).^2))(2:end,1);


#[J, grad] = lrCostFunction(theta, X, y, lambda)