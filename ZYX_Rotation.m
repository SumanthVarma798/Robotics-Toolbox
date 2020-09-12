promptZ=('For Angles to Rotation Matrix Press 1\n For Rotation matrix to angles Press 2\n');
x=input(promptZ);
switch(x)
    case(1)
prompt1= 'Give Me Roll';
prompt2= 'Give Me Pitch';
prompt3= 'Give Me Yaw';
A=input(prompt1)
B=input(prompt2)
G=input(prompt3)
myrotmat=[cos(A)*cos(B) cos(A)*sin(B)*sin(G)-sin(A)*cos(G) cos(A)*sin(B)*cos(G)+sin(A)*sin(G);
          sin(A)*cos(B) sin(A)*sin(B)*sin(G)+cos(A)*cos(G) sin(A)*sin(B)*cos(G)-cos(A)*sin(G);
         -sin(B) cos(B)*sin(G) cos(B)*cos(G)]

     case(2)
prompt4=('Enter your rotAtion mAtrix in[]:');
R=input(prompt4)
A=atan2(R(2,1),R(1,1))
B=atan2(-R(3,1),sqrt(R(3,2)^2+R(3,3)^2))
G=atan2(R(3,2),R(3,3))
A1=atan2(-R(2,1),-R(1,1))
B1=atan2(-R(3,1),-sqrt(R(3,2)^2+R(3,3)^2))
G1=atan2(-R(3,2),-R(3,3))
end