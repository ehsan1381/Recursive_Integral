% Compute boundary conditions
function [I_0, I_1 ] = BoundaryConditions(a)
    % Initialize common values
    SquareRootA = sqrt(a);
    InvereseSquareRootA = 1 / SquareRootA;
    ArctanInverseSquareRootA = atan(InvereseSquareRootA);

    % compute boundary conditions
    I_0 = InvereseSquareRootA * ArctanInverseSquareRootA;
    I_1 = 1 - ArctanInverseSquareRootA * SquareRootA;



end % BoundaryConditionsi


