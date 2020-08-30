function [NewPoint] = MoveHead(p, direction)
% Name: Joanne Kwon
% PID: A15359545
% The function 'MoveHead' moves the snake based on the position of the head
% of the snake and the direction it's moving.
%   This function takes in the arguments p and direction. The argument p is
%   a point (vector of length 2) denoting the position of the head of the
%   snake. The argument direction is a string that takes on the values
%   'up', 'down', 'left', or 'right' denoting the direction the snake is
%   currently moving.

switch direction
    case 'up'
        NewPoint = [p(1)-1, p(2)];
    case 'down'
        NewPoint = [p(1)+1, p(2)];
    case 'left'
        NewPoint = [p(1), p(2)-1];
    case 'right'
        NewPoint = [p(1), p(2)+1];
end
end
