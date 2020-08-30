function [trueORfalse] = IsInSnake(snake, p)
% Name: Joanne Kwon
% PID: A15359545
% The function 'IsInSnake' returns true or false depending on whether or
% not a specific row/column value occurs somewhere in the snake.
%   This function takes in the arguments snake and p. The argument snake is
%   an Lx2 matrix that stores the positions of the snake. The argument p is
%   a query point (vector of length 2) that represents a position to be
%   checked. This function should return true if the row and column values
%   in p match those of any snake segment and return false otherwise.

trueORfalse = 0;
for i = 1:size(snake, 1)
    if (snake(i,1) == p(1) && snake(i,2) == p(2))
        trueORfalse = 1;
    end
end
end

