clc; close all;
numJoints = 4;
jointTypes = ['RRRE'];
linkLengths = [1 1 1];
zAxis(:,:,1) = [0 0 1]';zAxis(:,1,2) = [0 0 1]';zAxis(:,1,3) = [0 0 1]';zAxis(:,1,4) = [0 0 1]';
linkDir(:,1,1) = [1 0 0]';linkDir(:,1,2) = [1 0 0]';linkDir(:,1,3) = [1 0 0]';
q_mins = [-90 -60 -45];
q_maxes = [90 60 45];
workspace(numJoints, jointTypes, linkLengths, zAxis, linkDir, q_mins, q_maxes, 'draw');

function workspace(numJoints, jointTypes, linkLengths, zAxis, linkDir, qmins, qmaxes, ret_type)
if isempty(qmins)
    disp('The matrix containing minimum joint angles/distances is empty !!');
elseif isempty(qmaxes)
    disp('The matrix containing maximum joint angles/distances is empty !!');
elseif isempty(linkLengths)
    disp('The matrix containing link lengths is empty !!');
else
    siaqmi = size(qmins); siqma = size(qmaxes); sill = size(linkLengths);
    if siaqmi(1,1) == 1
        qmins = qmins';
    end
    if siqma(1,1) == 1
        qmaxes = qmaxes';
    end
    if sill(1,1) == 1
        linkLengths = linkLengths';
    end
    ws_mat = get_workspace_coordinates(numJoints, jointTypes, linkLengths, zAxis, linkDir,qmins,qmaxes,linkLengths);
    X_Coordinates = ws_mat(:,1); Y_Coordinates = ws_mat(:,2); Z_Coordinates = ws_mat(:,3);
    if strcmpi(ret_type,'draw')
        grid on; hold on;
        plot3(0,0,0,'rx','LineWidth',2);
        plot3(X_Coordinates,Y_Coordinates,Z_Coordinates,'k*','LineWidth',3);
        xlabel('X-AXIS');ylabel('Y-AXIS');zlabel('Z-AXIS');
        title('WORKSPACE OF THE MANIPULATOR / ARM');
        legend('Base of the arm','Workspace of the manipulator / arm');
    elseif strcmpi(ret_type,'display')
        fprintf('\nThe position co-ordinates of the end_effector in cartesian space is:\n\n');
        T = table(X_Coordinates,Y_Coordinates,Z_Coordinates);
        disp(T);
    else
        fprintf('\n\tThe entered return type is unknown!\nThe available types are:\n\t"draw"\n\t"display"\n');
    end
end
end

function ws = get_workspace_coordinates(numJoints, jointTypes, linkLengths, zAxis, linkDir,qmin,qmax,linklen)
if isempty(qmin)
    disp('The matrix containing minimum joint angles/distances is empty !!');
elseif isempty(qmax)
    disp('The matrix containing maximum joint angles/distances is empty !!');
elseif isempty(linklen)
    disp('The matrix containing link lengths is empty !!');
else
    resolution = 10;
    qminsi = size(qmin); qmaxs = size(qmax);
    if qminsi(1,1) == 1
        qmin = qmin';
    elseif qmaxs(1,1) == 1
        qmax = qmax';
    end
    sym_dh = calcDHfromRobot(numJoints, jointTypes, linkLengths, zAxis, linkDir);
    dh = update_dh(sym_dh, qmin, jointTypes);
    if length(qmin(:,1)) == length(qmax(:,1))
        [X,Y,Z] = get_coordinates_equations(numJoints, jointTypes, linkLengths, zAxis, linkDir);
        [x,y,z] = get_coordinates(dh,X,Y,Z);
        ws = [x y z];
        count = 1; q = qmin;
        for s = 1:1:length(q)
            while count <= length(min(qmin):resolution:max(qmax))
                if s == 1
                    for i = 1:1:length(q)
                        if q(i,1)+resolution <= qmax(i,1)
                            q(i,1) = q(i,1)+resolution;
                        elseif q(i,1)+resolution > qmax(i,1)
                            q(i,1) = qmax(i,1);
                        end
                    end
                    dh = update_dh(sym_dh, q, jointTypes);
                    [x,y,z] = get_coordinates(dh,X,Y,Z);
                    ws = [ws;x y z];
                    count = count + 1;
                end
            end
            count = 0;
            if s ~= 1
                for cc = 1:1:s-1
                    q(cc,1) = qmin(cc,1);
                end
                q(s:end,1) = qmin(s:end,1);
                while count <= length(min(qmin):resolution:max(qmax))
                    for i = s:1:length(q)
                        if q(i,1)+resolution <= qmax(i,1)
                            q(i,1) = q(i,1)+resolution;
                        elseif q(i,1)+resolution > qmax(i,1)
                            q(i,1) = qmax(i,1);
                        end
                    end
                    dh = update_dh(sym_dh, q, jointTypes);
                    [x,y,z] = get_coordinates(dh,X,Y,Z);
                    ws = [ws;x y z];
                    count = count + 1;
                end
                count = 0;
                for cc = 1:1:s-1
                    q(cc,1) = qmax(cc,1);
                end
                q(s:end,1) = qmax(s:end,1);
                while count <= length(min(qmin):resolution:max(qmax))
                    for i = s:1:length(q)
                        if q(i,1)+resolution <= qmax(i,1)
                            q(i,1) = q(i,1)+resolution;
                        elseif q(i,1)+resolution > qmax(i,1)
                            q(i,1) = qmax(i,1);
                        end
                    end
                    dh = update_dh(sym_dh, q, jointTypes);
                    [x,y,z] = get_coordinates(dh,X,Y,Z);
                    ws = [ws;x y z];
                    count = count + 1;
                end
            end
        end
    end
end
end

function [X,Y,Z] = get_coordinates(dh, x_eqn, y_eqn, z_eqn)
if isempty(dh)
    disp('The matrix containing DH Parameters is empty !!');
else
    d = dh(:,2); theta = dh(:,4);
    variables_in_x = symvar(x_eqn);
    variables_in_y = symvar(y_eqn);
    variables_in_z = symvar(z_eqn);
    values_to_sub_in_x = zeros(1,length(variables_in_x));
    values_to_sub_in_y = zeros(1,length(variables_in_y));
    values_to_sub_in_z = zeros(1,length(variables_in_z));
    sym_d = sym('d',[1,length(d)],'rational');
    sym_theta = sym('Theta',[1,length(theta)],'rational');
    for i = 1:1:length(variables_in_x)
        for j = 1:1:length(theta)
            if isequaln(variables_in_x(i), sym_d(j))
                values_to_sub_in_x(i) = d(j);
            elseif isequaln(variables_in_x(i), sym_theta(j))
                values_to_sub_in_x(i) = theta(j);
            end
        end
    end
    for i = 1:1:length(variables_in_y)
        for j = 1:1:length(theta)
            if isequaln(variables_in_y(i), sym_d(j))
                values_to_sub_in_y(i) = d(j);
            elseif isequaln(variables_in_y(i), sym_theta(j))
                values_to_sub_in_y(i) = theta(j);
            end
        end
    end
    for i = 1:1:length(variables_in_z)
        for j = 1:1:length(theta)
            if isequaln(variables_in_z(i), sym_d(j))
                values_to_sub_in_z(i) = d(j);
            elseif isequaln(variables_in_z(i), sym_theta(j))
                values_to_sub_in_z(i) = theta(j);
            end
        end
    end
    X_ = subs(x_eqn,variables_in_x,values_to_sub_in_x);
    Y_ = subs(y_eqn,variables_in_y,values_to_sub_in_y);
    Z_ = subs(z_eqn,variables_in_z,values_to_sub_in_z);
    X = double(X_); Y = double(Y_); Z = double(Z_);
end
end

function [X,Y,Z] = get_coordinates_equations(numJoints, jointTypes, linkLengths, zAxis, linkDir)
    T = genTransforms(numJoints, jointTypes, linkLengths, zAxis, linkDir);
    T = T(:,:,end);
    %Extracting the coordinates
    X = T(1,end);
    Y = T(2,end);
    Z = T(3,end);
end

function new_dh = update_dh(old_dh, q, JointTypes)
if isempty(old_dh)
    disp('The matrix containing DH Parameters is empty !!');
elseif isempty(q)
    fprintf('\nThe matrix containing updating q is empty !!\nError in minimum and maximum joint angles/distances !!\n');
else
    for i = 1:1:length(old_dh(:,1))
        if strcmpi(JointTypes(i),'R')
            variable = symvar(old_dh(i,end));
            sub_exp = subs(old_dh(i,end),variable,q(i));
            sub_exp_ = double(sub_exp);
            old_dh(i,end) = sub_exp_;
        elseif strcmpi(JointTypes(i),'P')
            variable = symvar(old_dh(i,2));
            sub_exp = subs(old_dh(i,2),variable,q(i));
            sub_exp_ = double(sub_exp);
            old_dh(i,2) = sub_exp_;
        end
    end
    new_dh = double(old_dh);
end
end

function T = genTransforms(numJoints, jointTypes, linkLengths, zAxis, linkDir)
%UNTITLED6 Generate Transformation matrices from DH parameters
%   Detailed explanation goes here

    [symDH] = calcDHfromRobot(numJoints, jointTypes, linkLengths, zAxis, linkDir);
    
    % A contains the transformation matrices between successive frames(confirm if alpha,theta are in radians in symDH)
    A = sym(zeros(4,4,numJoints-1));
    for i = 1:numJoints-1
        A(:,:,i) = [cosd(symDH(i,4)), -sind(symDH(i,4))*cosd(symDH(i,3)), sind(symDH(i,4))*sind(symDH(i,3)), symDH(i,1)*cosd(symDH(i,4));
                    sind(symDH(i,4)), cosd(symDH(i,4))*cosd(symDH(i,3)), -cosd(symDH(i,4))*sind(symDH(i,3)), symDH(1,1)*sind(symDH(i,4));
                    0, sind(symDH(i,3)), cosd(symDH(i,3)), symDH(i,2); 
                    0, 0, 0, 1];
    end
    
    % T contains the transformation matrices of frames w.r.t the base frame 
    T = sym(zeros(4,4,numJoints-1));
    prev = A(:,:,1);
    for i = 1:numJoints-1
        if i == 1
            T(:,:,i) = prev;
        else
            T(:,:,i) = prev * A(:,:,i);
            prev = T(:,:,i);
        end
    end
                


end

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
end