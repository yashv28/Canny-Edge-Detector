function M = nonMaxSup(Mag, Ori)
%%  Description
%       compute the local minimal along the gradient.
%%  Input: 
%         Mag = (H, W), double matrix, the magnitude of derivative 
%         Ori = (H, W), double matrix, the orientation of derivative
%%  Output:
%         M = (H, W), logic matrix, the edge map
%

Mmax = max(max(Mag))
Mmin = min(min(Mag))
th = 0.1*(Mmax - Mmin) + Mmin;
[nr,nc] = size(Mag);
M = zeros(nr,nc);
for i = 2:nr-1
    for j = 2:nc-1
        if Mag(i,j) > th
            X = [-1,0,1;-1,0,1;-1,0,1];
            Y = [-1,-1,-1;0,0,0;1,1,1];
            Z = [Mag(i-1,j-1),Mag(i-1,j),Mag(i-1,j+1);
                 Mag(i,j-1),Mag(i,j),Mag(i,j+1);
                 Mag(i+1,j-1),Mag(i+1,j),Mag(i+1,j+1)];
            XI = [abs(cos(Ori(i,j))), -abs(cos(Ori(i,j)))];
            YI = [abs(sin(Ori(i,j))), -abs(sin(Ori(i,j)))];
            ZI = interp2(X,Y,Z,XI,YI);
            if Mag(i,j) >= ZI(1) & Mag(i,j) >= ZI(2)
                M(i,j) = Mmax;
            else
            	M(i,j) = th;
            end
        else
            M(i,j)=Mmin;
        end
    end
end
end