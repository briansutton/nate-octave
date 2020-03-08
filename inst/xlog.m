function xlog
%XLOG   Set the horizontal axis to logarithmic.
%
%   XLOG sets the scale on the horizontal axis of the current plot to be
%   logarithmic.
%
%   Example:
%
%     newfig;
%     plotfun(@(x) x^(-4),[1 100]);
%     xlog;
%     ylog;
%
%   Copyright 2019 Brian Sutton

set(gca,'xScale','log');
hold on;

