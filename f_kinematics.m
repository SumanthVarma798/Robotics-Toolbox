function [pos_e, T] = f_kinematics(numJoints, jointTypes, linkLengths, zAxis, linkDir, q)
    [symDH] = calcDHfromRobot(numJoints, jointTypes, linkLengths, zAxis, linkDir);
         
    % Substituting user input joint variables in DH parameters (confirm if numJoints includes end effector or not)
    k = symvar(symDH);
    [rows,cols] = size(symDH);
    for i = 1:rows
        [row,col] = find(symDH == k(i));
        symDH(row,col) = q(i);
    end
    
    % A contains the transformation matrices between successive frames(confirm if alpha,theta are in radians in symDH)
    A = sym(zeros(4,4,rows));
    for i = 1:rows
        A(:,:,i) = [cosd(symDH(i,4)), -sind(symDH(i,4))*cosd(symDH(i,3)), sind(symDH(i,4))*sind(symDH(i,3)), symDH(i,1)*cosd(symDH(i,4));
                    sind(symDH(i,4)), cosd(symDH(i,4))*cosd(symDH(i,3)), -cosd(symDH(i,4))*sind(symDH(i,3)), symDH(1,1)*sind(symDH(i,4));
                    0, sind(symDH(i,3)), cosd(symDH(i,3)), symDH(i,2); 
                    0, 0, 0, 1];
    end
    
    % T contains the transformation matrices of frames w.r.t the base frame 
    T = sym(zeros(4,4,rows));
    prev = A(:,:,1);
    for i = 1:rows
        if i == 1
            T(:,:,i) = prev;
        else
            T(:,:,i) = prev * A(:,:,i);
            prev = T(:,:,i);
        end
    end
    
    % Finding the end-effector position w.r.t base frame
    pos_e = T(1:3,end,end);
    
end