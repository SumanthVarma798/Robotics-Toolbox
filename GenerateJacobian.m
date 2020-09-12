function [J, symJ] = GenerateJacobian(Tmat,joints, symTmat)
%UNTITLED4 Generate the Jacobian matrix for a general robotic arm
%   Tmat is a 4x4xn transformation matrix, with n being the number of
%   joints, and each layer of Tmat being the transformation matrix from 0
%   to n-1.
%   Joints is a char array containing the types of joints, either R or P

%Create the Jacobian Matrix
J = zeros(6,length(joints));


%Find the end effector pose
Pe = Tmat(1:3,4,end);
Pesym = symTmat(1:3,4,end);


for i = 1:length(joints)
    %Check if the joint is prismatic
    if(joints(i) == 'P' || joints(i) == 'p')
        if(i == 1)
            Zcomp = [0;0;1];
            Zcompsym = [0;0;1];
        else
            Zcomp = Tmat(1:3,3,i-1);
            Zcompsym = symTmat(1:3,3,i-1);
        end
        %Fill in the Jacobian
        J(:,i) = [Zcomp;0;0;0];
        symJ(:,i) = [Zcompsym;0;0;0];
    %Revolute Joints
    elseif(joints(i) == 'R' || joints(i) == 'r')
        
        %Find the P and the Z components
        if(i == 1)
            P = [0;0;0];
            Zcomp = [0;0;1]; 
            Psym = [0;0;0];
            Zcompsym = [0;0;1];
        else
            P = Tmat(1:3,4,i-1);
            Zcomp = Tmat(1:3,3,i-1);  
            Psym = symTmat(1:3,4,i-1);
            Zcompsym = symTmat(1:3,3,i-1);
        end
        %Find the Jacobian component
        Jcomp = cross(Zcomp,(Pe - P));
        Jcompsym = cross(Zcompsym,(Pesym - Psym));
        %Create the Jacobian entry
        J(:,i) = [Jcomp;Zcomp];
        symJ(:,i) = [Jcompsym;Zcompsym];
    end
end
        




end

