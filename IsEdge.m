function [edge] = IsEdge(bw, row, col, threshold)
% Name: Joanne Kwon
% PID: A15359545
% The function 'IsEdge' takes in four arguments to find the edges of an image. This function returns true if the pixel at (row, col) is considered an edge pixel and false otherwise. 
%   This function takes in the arguments bw, row, col, and threshold. bw is
%   a matrix that represents a black and white image. The arguments row and
%   col are the row and column of the pixel that the function checks for an
%   edge. The argument threshold is a value between 0 and 225 that is used
%   to tune the sensitivity of the criteria for what counts as an edge. A
%   higher threshold value indivates that fewer edges are detected and a
%   threshold of 0 indicates everything as an edge.

if ((row-1 > 0 && row+1 < size(bw,1)) && (col-1 > 0 && col+1 < size(bw,2))) %checks if row and column in range
    %check boundary
        if (threshold <= (bw(row-1, col) - bw(row, col)))
            edge = 1;       
        elseif(threshold <= (bw(row+1, col) - bw(row, col)))
            edge = 1;
        elseif (threshold <= (bw(row, col+1) - bw(row, col)))
            edge = 1;
        elseif (threshold <= (bw(row, col-1) - bw(row, col)))
            edge = 1;
        else
            edge = 0;
        end
else
    edge = 0;
end
end

