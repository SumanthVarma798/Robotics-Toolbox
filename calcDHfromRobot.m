function [symDH] = calcDHfromRobot(numJoints, jointTypes, linkLengths, zAxis, linkDir)
%UNTITLED12 Calculate DH parameters from Robot parameters
%   Takes input from the base frame to the end effector from. The base
%   frame is taken as co-incidental with the frame of the first joint.
%   Inputs: 
%         : Zaxis - The Z Axis of the joints. For revolute joints it is the
%                   axis of rotation, For prismatic joints it is the axis
%                   of translations. Runs from first joint to the end
%                   effector (inclusive)
%         : jointTypes - The types of joints, From the first joint to the
%                        end effector (inclusive)
%         : linkLengths - The length of the links between the joints, Only
%                         number of links
%         : numJoints - The number of joints in the system, runs from the
%                       first joint to the end effector (inclusive)
%         : linkDir - The direction of the links between the joints. From
%                     first joint to the end effector (inclusive). Only the
%                     number of links
%
%   Outputs:
%          : Outputs a DH table with symbols in the place of the variables

%Assign the variables to symbolic parameters
symThetas = sym('Theta',[1, numJoints-1]);
symThetas = transpose(symThetas);
symD = sym('D',[1,numJoints-1]);
symD = transpose(symD);
%Create a symbollic DH matrix
symA = sym('a',[1 numJoints-1]);
symA = transpose(symA);
symAlpha = sym('alpha', [1 numJoints-1]);
symAlpha = transpose(symAlpha);


symDH = [symA symD symAlpha symThetas];


%Calculate the parameters for each link
for i = 1:numJoints
    
    %For the first joint, there is no previous values yet, so it needs to
    %be handled separetly.
    if(i == 1)
        %Assign the initial X, Y, Z based on the first value
        Z_i = zAxis(:,1,1);
        
        %Take the previous Z vector to be the unit vector in the Z
        %direction
        prevZ = [0;0;1];
        prevX = [1;0;0];
        prevY = [0;1;0];
    else
        
%-------Assign the z axis vector
        z_i = zAxis(:,:,i);
        
%         fprintf('The Z axis is:\n')
%         disp(z_i)
        
%-------Find the common normal
        cn = cross(z_i,prevZ);
        
%         fprintf('The common normal is:\n')
%         disp(cn)
        
%-------Find the X axis
        if(sum(cn) == 0)
            %Assign an arbitrary x_i for parallel z axis
            %x_i = [1;0;0];
            if(z_i(3) ~= 0)
                x_i = [1;0;0];
            elseif(z_i(2) ~= 0)
                x_i = [1;0;0];
            elseif(z_i(1) ~= 0)
                x_i = [0;0;1];
            end
        else
            %X is defined along the common normal, with direction from
            %joint i to i+1
            x_i = cn;
            %multiply by the sign of the of the link to go from joint i to
            %i+1
            x_i = x_i.*sign(linkDir(i));
            
        end
        
%         fprintf('The X axis was assigned to be:\n')
%         disp(x_i)
        
%-------Find Y_i
        y_i = cross(z_i,x_i);
        
        
% %----------------Finding O_i and O_i prime
%         %O_i is located at the intersection of z_i with the common normal
%         %of z_i and z_i-1
%         %If neither of the common normals are parallel to the Z axis or z-1
%         %axis
%         if(jointTypes(i-1) == 'P')
%             symDH = subs(symDH,symDH(i-1,1),0);
%             
%         elseif(sum(cross(cn,z_i))~= 0 && sum(cross(cn,prevZ)) ~= 0)
%             %If the axes are not parallel, o_i is located at the current
%             %joint, and O_i prime is located at the previos joint. This
%             %means that a is the distance between the joints.
%             
%             symDH = subs(symDH,symDH(i-1,1),linkLengths(i));
%         else
%             
%             symDH = subs(symDH, symDH(i-1,1),linkLengths(i));
%         end
%         
%         fprintf('A was assigned to be: \n')
%         disp(symDH(i-1,1))
        
%-------Calculating a
        tempLinkDir = linkDir(:,:,i-1);
        if(jointTypes(i-1) == 'P')
            %If the joint is prismatic, the value of a should be zero
            %because the dh table should have the value in d instead
            symDH = subs(symDH,symDH(i-1,1),0);
        elseif(tempLinkDir(1) ~= 0)
            %Substitute in the value of a if the distance along the xi axis
            %is not equal to zero.
            symDH = subs(symDH,symDH(i-1,1),linkLengths(i-1));
        else
            symDH = subs(symDH,symDH(i-1,1),0);
        end
        
%         fprintf('A was assigned to be: \n')
%         disp(symDH(i-1,1))        
        
        
        
        
%-------Finding the values of d
        tempLinkDir2 = linkDir(:,:,i-1);
        if(jointTypes(i-1) == 'P')
            
            %since it is already a variable, Don't assign a value
            %continue
            %Check the sign
            temp = sign(tempLinkDir2(3));
            temp2 = temp*symDH(i-1,2);
            %subs(symDH,symDH(i-1,2),temp*symDH(i-1,2)); 
            symDH(i-1,2) = temp2;

        elseif(tempLinkDir2(3) ~= 0)
            %symDH = subs(symDH,symDH(i-1,2),linkLengths(i-1));
            %Since it is already a variable, don't assign and value and
            %simply continue
            %Check the direction first
            if(jointTypes(i-1) == 'R')
                temp = -1;% sign(tempLinkDir2(3));
                fprintf('%d\n',temp);
                temp2 = temp*linkLengths(i-1);
                fprintf('%d\n',temp2);
                disp(symDH)
                %subs(symDH,symDH(i-1,2),temp2);
                symDH(i-1,2) = temp2;
                disp(symDH)
            else
                temp = sign(tempLinkDir2(3));
                temp2 = temp*symDH(i-1,2);
                subs(symDH,symDH(i-1,2),temp2);                
            end
            
        elseif(sum(cn) == 0)
            %If the common normal is zero, d should be zero
            symDH = subs(symDH,symDH(i-1,2),0);
        else
            
            symDH = subs(symDH,symDH(i-1,2),linkLengths(i));
        end
            
%         fprintf('D was assigned to be: \n')
%         disp(symDH(i-1,2))
                
%----------------Finding Alpha
        %alpha is zero if the axes are parallel
        if(z_i == zAxis(i-1))
            symDH = subs(symDH,symDH(i-1,3),0);
            
        else
            %Calculate the cosine of the angle between two vectors
            ca = (dot(z_i,prevZ))/(sqrt(sum(z_i.^2))*sqrt(sum(prevZ.^2)));
            %Find the angle between two vectors
            tempangle = acosd(ca);
            symDH = subs(symDH,symDH(i-1,3),acosd(ca));
        end
        
%         fprintf('Alpha was assigned to be: %d\n', symDH(i-1,3))
        

%----------------Finding Theta        
        %Theta will be zero for all prismatic joints, and a variable for
        %all revolute joints
        if(jointTypes(i-1) == 'P')
            %Set to zero because prismatic
            
            symDH = subs(symDH,symDH(i-1,4),0);
        else
            %Revolute joints, therefore it is a variable
            
            %Since the DH table is already a symbolic variable, leave it
            %continue
        end
        
%         fprintf('Theta was chosen to be: \n')
%         disp(symDH(i-1,4));
        
        %Update the previous values with the new values
        prevZ = z_i;
        prevX = x_i;
        prevY = y_i;
        
        
    end


end

