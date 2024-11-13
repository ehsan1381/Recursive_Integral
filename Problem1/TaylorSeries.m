% Function to compute taylor series when requested but return a default
% without computing it every time
% Arguments:
%       fun                  can be either "exp" or "log"
%       NoTerms        can be positive integer
% 
% 
% 
% 
% 



% TASKS
% - [ ] Decide on which function to set as default



function  [ TaylorPoly ] = TaylorSeries( fun, NoTerms )

% Argument validation
arguments
    fun (1,1) string = "exp"
    NoTerms (1, 1) double {mustBeNumeric, mustBePositive}  = 5
end

% If the inputs are updated
funUpdated = (fun ~= "exp");
NoTermsUpdated = (NoTerms ~= 5);

% In case fun was not changed
if ~funUpdated 





% In case fun was changed
else


end % if funUpdated


% In case Number of terms was not changed
if ~NoTermsUpdated


% In case Number of terms was changed
else

end % if NoTermsUpdated


end % TaylorSeries