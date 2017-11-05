function [E] = cannyRGB(I)

if size(I,3)>1
    [Mag, Magx, Magy, Ori] = findDerivatives(I(:,:,1));
    M = nonMaxSup(Mag, Ori);
    E(:,:,1) = edgeLink(M, Mag, Ori);
    
    [Mag, Magx, Magy, Ori] = findDerivatives(I(:,:,2));
    M = nonMaxSup(Mag, Ori);
    E(:,:,2) = edgeLink(M, Mag, Ori);
    
    [Mag, Magx, Magy, Ori] = findDerivatives(I(:,:,3));
    M = nonMaxSup(Mag, Ori);
    E(:,:,3) = edgeLink(M, Mag, Ori);
else
    I_gray = I;
    [Mag, Magx, Magy, Ori] = findDerivatives(I_gray);
    M = nonMaxSup(Mag, Ori);
    E = edgeLink(M, Mag, Ori);
end

end
