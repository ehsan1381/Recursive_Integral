%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created :     Monday November 11 2024
% By :             github.com/Ehsan1381
% Title :           RecursiveIntegral
% Purpose:     Solution to assignment problem
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This program computes the elements of the given sequence recursively.
% To test this program simply run "RecursiveIntegral(a, n)".
% `a` is simply the parameter `a` from the problem, and n is the number of
% sequence elements to be computed.


function [ Sequence, Runtime ] = RecursiveIntegral(a, n)
    arguments
        a (1, 1) double = 1
        n (1, 1) double = 10
    end

    if a <= 0 && a >= -1
        disp("Integral is divergent for this given a");
    end % if

    % to prevent some errors, check for n being integer number
    if int64(n) ~= n
        disp("The argument n must be an integer number");
        return;
    end % if

    tic;

    Sequence = zeros([n, 1]);

    I_n = BoundaryCondition(a, n);
    Sequence(n) = I_n;

    for i=1:n-1
        I_n = RecurrenceRelation(a, n-i+1, I_n);
        Sequence(n-i) = I_n;
    end % for

    Runtime = toc;

end % Sequence



function [I_n ] = BoundaryCondition(a, n)
  F = @(n)(integral(@(x)(x.^(2*n)./(x.^2+a)),0,1));
  I_n = F(n);
end % BoundaryConditionsi

function [I_n] = RecurrenceRelation(a, n, I_n)

    I_n = 1/a * (1/(2*n-1) - I_n);

end %RecurrenceRelation
