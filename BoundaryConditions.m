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


