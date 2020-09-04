function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the 
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);
data = load('ex1data1.txt');
X=data(:,1);
y=data(:,2);
m=length(y);
plot(X, y,'rx','MarkerSize', 10);
ylabel('Profit in $10,000s'); 
xlabel('Population of City in 10,000s');

X=[ones(m,1),data(:,1)];
y=data(:,2);
theta = zeros(2,1);
iterations = 1500;
alpha = 0.01;

J = computeCost(X, y, theta)
J = computeCost(X, y, [-1 ; 2]);


theta = gradientDescent(X, y, theta, alpha, iterations)

hold on;
plot(X(:,2),X*theta,'-');
legend("Training data","Linear regression");

predict1 = [1, 3.5] * theta;
fprintf('For population = 35,000, we predict a profit of %f\n', predict1*10000)
predict2 = [1, 7] * theta;   %hx
fprintf('For population = 70,000, we predict a profit of %f\n', predict2*10000)

theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);
size(theta0_vals)
size(theta1_vals)

J_vals = zeros(length(theta0_vals), length(theta1_vals));

for i = 1:length(theta0_vals)
for j = 1:length(theta1_vals)
t = [theta0_vals(i); theta1_vals(j)];
J_vals(i,j) = computeCost(X, y, t);
end
end
figure;
J_vals = J_vals';
surf(theta0_vals, theta1_vals, J_vals);
xlabel('\theta_0');
ylabel('\theta_1');

figure;
contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(theta(1), theta(2), 'rx','MarkerSize', 20,'LineWidth', 5);


    
    




% ============================================================

end
