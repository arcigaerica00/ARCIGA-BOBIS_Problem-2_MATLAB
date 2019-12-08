disp('Calculating for the center, radius , and a vector given three points on a circle')
P1= input('Enter first point on the circle, follow this format "[x1,y1]": ');
P2= input('Enter second point on the circle, follow this format "[x2,y2]": ');
P3= input('Enter third point on the circle, follow this format "[x3,y3]": ');
%General equation of a circle: (x^2)+(y^2)+Dx+Ex+F=0
%Matrix R is the coefficient matrix of Dx+Ex+F from the general formula
R=[P1(1) P1(1,2) 1;P2(1) P2(1,2) 1 ;P3(1) P3(1,2) 1 ];
%Matrix C is the result of (x^2)+(y^2), which will be the output vetor
C=[(-(((P1(1))^2)+(P1(1,2))^2));(-(((P2(1))^2)+(P2(1,2))^2));(-(((P3(1))^2)+(P3(1,2))^2))];
%Multiplying the inverse of Matrix R to Matrix C will give as rref(R)
M=inv(R)*C;
%The rows of rref(R) corresponds to the values of D,E,F
D=M(1);
E=M(2);
F=M(3);
%Standard equation of a circle: ((x-h)^2)+((y-k)^2)=(r^2)
%h,k, and r can be computed by completing the square method
h=-(D/2);
k=-(E/2);
r= sqrt(abs(-(F)+(h^2)+(k^2)));
fprintf('Center(h,k):( %.3f, %.3f)\nRadius(r)= %.3f\n', h,k,r)
fprintf('Vector[D,E,F]: [%.3f, %.3f, %.3f,]\n', D, E, F)
