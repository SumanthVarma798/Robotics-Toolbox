V = input("Enter the vector about which rotation or translation takes place: ");
rx = V(0)/sqrt(V(0)^2 + V(1)^2 + V(2)^2);
ry = V(1)/sqrt(V(0)^2 + V(1)^2 + V(2)^2);
rz = V(2)/sqrt(V(0)^2 + V(1)^2 + V(2)^2);
sin_alpha = ry/sqrt(rx^2 +ry^2);
cos_alpha = rx/sqrt(rx^2 +ry^2);
sin_beta = sqrt(rx^2 +ry^2);
cos_beta = rz;

% Translation
d = input("Distance to be translated along the vector: ");
t = [1 0 0 d*sin_beta*cos_alpha;
     0 1 0 d*sin_beta*sin_alpha;
     0 0 1 d*cos_beta;
     0 0 0 1];
P = input("Enter the point coordinates w.r.t original axes to be shown after translation: ");
t_v = inv(t) * P';
disp("Coordinates of the point w.r.t new frame after translation: ");
disp(t_v);

% Rotation
theta_deg = input("Enter the angle in degrees the vector is rotated: ");
theta = deg2rad(theta_deg);
R = [(rx^2)*(1-cos(theta))+cos(theta), rx*ry*(1-cos(theta))-rz*sin(theta), rx*rz*(1-cos(theta))+ry*sin(theta);
     rx*ry*(1-cos(theta))+rz*sin(theta), (ry^2)*(1-cos(theta))+cos(theta), ry*rz*(1-cos(theta))-rx*sin(theta);
     rx*rz*(1-cos(theta))-ry*sin(theta), ry*rz*(1-cos(theta))+rx*sin(theta), (rz^2)*(1-cos(theta))+cos(theta)];
P = input("Enter the point coordinates w.r.t original axes to be shown after rotation: ");
r_v = R' * P';
disp("Coordinates of the point w.r.t new frame after rotation: ");
disp(r_v);

% Translation and Rotation
d = input("Distance to be translated along the vector: ");
theta_deg = input("Enter the angle in degrees the vector is rotated: ");
theta = deg2rad(theta_deg);
T = [(rx^2)*(1-cos(theta))+cos(theta), rx*ry*(1-cos(theta))-rz*sin(theta), rx*rz*(1-cos(theta))+ry*sin(theta), d*sin_beta*cos_alpha;
     rx*ry*(1-cos(theta))+rz*sin(theta), (ry^2)*(1-cos(theta))+cos(theta), ry*rz*(1-cos(theta))-rx*sin(theta), d*sin_beta*sin_alpha;
     rx*rz*(1-cos(theta))-ry*sin(theta), ry*rz*(1-cos(theta))+rx*sin(theta), (rz^2)*(1-cos(theta))+cos(theta), d*cos_beta;
     0 0 0 1];
P = input("Enter the point coordinates w.r.t original axes to be shown after translation and rotation: ");
T_v = inv(T) * P';
disp("Coordinates of the point w.r.t new frame after translation and rotation: ");
disp(T_v);

% -----------------------------------------------------------------------------------------

% Translation
t_x = input("Enter the distance to be translated along x-axis: ");
t_y = input("Enter the distance to be translated along y-axis: ");
t_z = input("Enter the distance to be translated along z-axis: ");
t = [1 0 0 t_x;
     0 1 0 t_y;
     0 0 1 t_z;
     0 0 0 1];
P = input("Enter the point coordinates w.r.t original axes to be shown after translation: ");
t_v = inv(t) * P';
disp("Coordinates of the point w.r.t new frame after translation: ");
disp(t_v);

% Rotation
index = input("If fixed frame rotations, enter 1 and if current frame rotations, enter 2");
n = input("Enter no of rotations: ");
R = eye(3);

if index == 1
    for i = 1:n
        in = input("Enter 1 if rotation about x, enter 2 if rotation about y, enter 3 if rotation about z");
        theta = input("Enter the angle through which the axis is rotated: ");
        if in == 1
            r = [1 0 0;
                 0 cos(theta) -sin(theta);
                 0 sin(theta) cos(theta)];
        elseif in == 2
            r = [cos(theta) 0 -sin(theta);
                  0 1 0;
                 sin(theta) 0 cos(theta)];
        elseif in == 3
            r = [cos(theta) -sin(theta) 0;
                 sin(theta) cos(theta) 0;
                 0 0 1];
        end
        
        R = r * R;
    end
end

if index == 2
    for i = 1:n
        in = input("Enter 1 if rotation about x, enter 2 if rotation about y, enter 3 if rotation about z");
        theta = input("Enter the angle through which the axis is rotated: ");
        if in == 1
            r = [1 0 0;
                 0 cos(theta) -sin(theta);
                 0 sin(theta) cos(theta)];
        elseif in == 2
            r = [cos(theta) 0 -sin(theta);
                  0 1 0;
                 sin(theta) 0 cos(theta)];
        elseif in == 3
            r = [cos(theta) -sin(theta) 0;
                 sin(theta) cos(theta) 0;
                 0 0 1];
        end
        
        R = R * r;
    end
end

R = [R; 0 0 0];
R = [R, [0 0 0 1]'];
P = input("Enter the point coordinates w.r.t original axes to be shown after rotation: ");
r_v = inv(R) * P';
disp("Coordinates of the point w.r.t new frame after rotation: ");
disp(r_v);


% Translation and rotation
t_x = input("Enter the distance to be translated along x-axis: ");
t_y = input("Enter the distance to be translated along y-axis: ");
t_z = input("Enter the distance to be translated along z-axis: ");
t = [1 0 0 t_x;
     0 1 0 t_y;
     0 0 1 t_z;
     0 0 0 1];
 
index = input("If fixed frame rotations, enter 1 and if current frame rotations, enter 2");
n = input("Enter no of rotations: ");
R = eye(3);

if index == 1
    for i = 1:n
        in = input("Enter 1 if rotation about x, enter 2 if rotation about y, enter 3 if rotation about z");
        theta = input("Enter the angle through which the axis is rotated: ");
        if in == 1
            r = [1 0 0;
                 0 cos(theta) -sin(theta);
                 0 sin(theta) cos(theta)];
        elseif in == 2
            r = [cos(theta) 0 -sin(theta);
                  0 1 0;
                 sin(theta) 0 cos(theta)];
        elseif in == 3
            r = [cos(theta) -sin(theta) 0;
                 sin(theta) cos(theta) 0;
                 0 0 1];
        end
        
        R = r * R;
    end
end

if index == 2
    for i = 1:n
        in = input("Enter 1 if rotation about x, enter 2 if rotation about y, enter 3 if rotation about z");
        theta = input("Enter the angle through which the axis is rotated: ");
        if in == 1
            r = [1 0 0;
                 0 cos(theta) -sin(theta);
                 0 sin(theta) cos(theta)];
        elseif in == 2
            r = [cos(theta) 0 -sin(theta);
                  0 1 0;
                 sin(theta) 0 cos(theta)];
        elseif in == 3
            r = [cos(theta) -sin(theta) 0;
                 sin(theta) cos(theta) 0;
                 0 0 1];
        end
        
        R = R * r;
    end
end

R = [R; 0 0 0];
R = [R, [0 0 0 1]'];
T = t * R;
P = input("Enter the point coordinates w.r.t original axes to be shown after translation and rotation: ");
T_v = inv(T) * P';
disp("Coordinates of the point w.r.t new frame after translation and rotation: ");
disp(T_v);
