function varargout = plotrealpart(f,lims)
%PLOTREALPART   Surface plot of the real part of a complex function.
%
%   PLOTREALPART(F,LIMS) plots REAL(F(X+I*Y)) as a surface in 3-D.
%
%   Inputs:
%
%     F: a function from complex numbers to complex numbers
%
%     LIMS = [XMIN XMAX YMIN YMAX ZMIN ZMAX]: axes limits
%
%   Outputs:
%
%     H = PLOTREALPART(...): graphics handle
%
%   Example:
%
%     f = @(z) sqrt(z);
%     xmin = -1; xmax = 1;
%     ymin = -1; ymax = 1;
%     vmin = -1.5; vmax = 1.5;
%     newfig;
%     plotrealpart(f,[xmin xmax ymin ymax vmin vmax]);
%
%   Copyright 2019 Brian Sutton

narginchk(2,2);
natecheck('plotrealpart',f,lims);
s = warning('off','MATLAB:fplot:NotVectorized');
legend hide;
[x,y] = meshgrid(linspace(lims(1),lims(2),40),linspace(lims(3),lims(4),40));
h = surf(x,y,arrayfun(@(x,y) real(f(x+1i*y)),x,y));
zlim(lims(5:6));
caxis(lims(5:6));
view(3);
warning(s);
if nargout>0, varargout = { h }; end

