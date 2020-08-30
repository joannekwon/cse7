function [p] = GetFood(snake)
% Name: Joanne Kwon
% PID: A15359545
% The function 'GetFood' generates and returns a point (vector of length 2)
% with the condition that it does not overlap with any segment from snake. 
%   This function takes the argument snake, which is an Lx2 matrix that
%   stores the position of the snake. The function generates new positions
%   at a random point and generates a point with integers between 1 and
%   100. The function also checks if this point overlaps with snake and
%   generates a new point if it does.

p = randi([1,100],1,2);
while IsInSnake(snake, p) == 1
    p = randi([1,100],1,2);
end
end