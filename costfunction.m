%a=0.05
x=[1,2;1,3;1,4]
y=[2;3;4]
m=length(x)    % or size(x,1)
theta = [0;1]
h=x*theta
sqer = (h-y)^2
sum(sqer)
j= (1/(2*m))*(sum(sqer))





%b=sum(sum(x))
