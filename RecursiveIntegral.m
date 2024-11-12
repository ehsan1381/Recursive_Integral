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


% main body
function [ Sequence, Runtime ] = RecursiveIntegral(a, n)
    % valideate argument types and set their default value
    arguments
        a (1, 1) {mustBeNumeric} = 1
        n (1, 1) int64 = 10
    end
    
    % initialize timer to track program performance
    tic;
    
    % initialize array of elements. This array is part of the program output
    Sequence = zeros([n, 1]);

    % Compute and add the first 2 elements (the boundary conditions)
    [EvenIndex, OddIndex] = BoundaryConditions(a);
    Sequence([1, 2]) = [OddIndex, EvenIndex];

    % Recursive algorithm
    for index = 3:2:n
        EvenIndex = RecurrenceRelation( a, index + 1 , EvenIndex );
        OddIndex = RecurrenceRelation( a, index, OddIndex );
        Sequence( [index, index + 1 ] ) = [EvenIndex, OddIndex];

    end % for
    Runtime = toc;
end % Sequence


% Compute boundary conditions
function [I_1, I_2 ] = BoundaryConditions(a)
    % Initialize common values
    SquareRootA = sqrt(a);
    InvereseSquareRootA = 1 / SquareRootA;
    ArctanInverseSquareRootA = atan(InvereseSquareRootA);

    % compute boundary conditions

    I_1 = 1 - ArctanInverseSquareRootA * SquareRootA;
    I_2 = ArctanInverseSquareRootA * sqrt(a^3) - a +1/3;


end % BoundaryConditionsi




% Compute the next element
function [I_n] = RecurrenceRelation(a, n, I_n_2)
    I_n = 1 / ( 2*n - 1 ) - a * I_n_2;
end %RecurrenceRelation