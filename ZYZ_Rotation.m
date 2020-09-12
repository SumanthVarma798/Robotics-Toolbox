promptZ=('For Angles to Rotation Matrix Press 1\n Rotation matrix to angles Press 2\n');
x=input(promptZ);
switch(x);
    case(1)
prompt1= 'Theta';
prompt2= 'Alpha';
prompt3= 'Gamma';
prompt1= 'rotation about Z';
prompt2= 'rotation about Y';
prompt3= 'rotation about Z';
A=input(prompt1)
B=input(prompt2)
G=input(prompt3)
myrotmat=[cos(A)*cos(B)*cos(G)-sin(A)*sin(G) -cos(A)*cos(B)*sin(G)-sin(A)*cos(G) cos(A)*sin(B);
 sin(A)*cos(B)*cos(G)+cos(A)*sin(G) -sin(A)*cos(B)*sin(G)+cos(A)*cos(G) sin(A)*sin(B);
 -sin(B)*cos(G) sin(B)*sin(G) cos(B)]
    case(2)
prompt4=('Enter your rotation matrix in[]:\n');
R=input(prompt4);
A=atan2(R(2,3),R(1,3))
B=atan2(sqrt(R(1,3)^2+R(2,3)^2),R(3,3))
G=atan2(R(3,2),-R(3,1))
A1=atan2(-R(2,3),-R(1,3))
B1=atan2(-sqrt(R(1,3)^2+R(2,3)^2),R(3,3))
G1=atan2(-R(3,2),R(3,1))
end