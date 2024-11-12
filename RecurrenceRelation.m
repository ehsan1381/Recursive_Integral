% Compute the next element
function [I_n] = RecurrenceRelation(a, n, I_n_2)
    I_n = 1 / ( 2*n - 1 ) - a * I_n_2;
end %RecurrenceRelation
