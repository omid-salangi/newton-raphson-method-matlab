clc;
clear all;
close all;
format long

syms x;
f = input('enter your function :' , 's');
f = evalin(symengine, f);
x1 = input('enter your guess : '); 
fn = x - (f /diff(f)); 
xn = 1;
temp = subs(fn,x,x1(xn));
temp1 = subs(f , x , x1(xn));
fprintf('x%d = %f  , x%d= %f , f(x%d) = %f \n',xn, x1(xn),xn+1 ,temp,xn+1, temp1 );
while true
    x1(xn+1) = subs(fn,x,x1(xn));
    xn = xn + 1 ;
    temp = subs(fn,x,x1(xn));
    temp1 = subs(f , x , x1(xn));
    fprintf('x%d = %f  , x%d= %f , f(x%d) = %f \n',xn, x1(xn),xn+1 ,temp,xn+1, temp1 ); 
    if  (abs(x1(xn) - x1(xn-1)) <= 10^-7 )
        break;
    end
end

