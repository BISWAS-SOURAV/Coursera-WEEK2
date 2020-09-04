data = load("ex1data2.txt");
X = data(:,1:2);
size(X)
y = data(:,3); 
size(y)
m= length(y); 

fprintf("x=[%.0f %.0f],y=%.0f \n", [X(1:10,:) y(1:10,:)]')
%[X(1:10,:) y(1:10,:)]'
[X, mu, sigma] = featureNormalize(X)

X=[ones(m,1),X]

alpha = 0.01;
num_iters = 400;

theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);
J_history;
size(J_history);
%A(1:numel(J_history, J_history)

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history,'b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');

A=[1650,3];
A = (A-mu)./sigma
price = [1,A]*theta

%changing value of alpha and obtaining graph in same figure


alpha = 0.03;
num_iters = 400;

theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);
J_history;
size(J_history);
%A(1:numel(J_history, J_history)

% Plot the convergence graph
hold on;
plot(1:numel(J_history), J_history,'r', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');

A=[1650,3];
[A, mu, sigma] = featureNormalize(A);
price = [1,A]*theta


%changing value of alpha and obtaining graph in same figure


alpha = 0.1;
num_iters = 400;

theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);
J_history;
size(J_history);
%A(1:numel(J_history, J_history)

% Plot the convergence graph
hold on;
plot(1:numel(J_history), J_history,'k', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');
legend("J1","J2","J3");

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');

A=[1650,3];
[A, mu, sigma] = featureNormalize(A);
price = [1,A]*theta