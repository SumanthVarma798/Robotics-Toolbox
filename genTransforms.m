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