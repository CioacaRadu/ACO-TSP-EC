% Baker's generalized algorithm
% 
% This routine does.... (to be completed)
% If the third argument is missing, it results an uniform distribution.
% Inputs:
% A - the selection pool (vector of length N)
% M - the roulette resolution (scalar M >= N; default N)
% P - the corresponding occurance frequencies (vector of length N)

% 
% Outputs:
% RN - the roulette with M sectors 
% SN - the number of sectors won by each competitor
% 
function [the_chosen] = BGA(childs, resolution, pd)

A = 1:1:length(childs);
M = resolution;
P = pd;

for i = 1:length(childs)

    if (childs(i) == 0)
    
        A(i) = 0;
        P(i) = 0;

    end
    
end


A = A(A~=0);
P = P(P~=0);



N = length(A);
% Initialization

% a) Normalize the occurance frequencies and transform them into a
% numerical distribution according to the given roulette resolution
P = M/sum(P)*P;

% b) Set mu - marker current position
mu = rand(1);
while mu == 1
    mu = rand(1);
end
% c) Initialize nu - the current position
nu = 0;
% d) Initialize R - places on the roulette
RN = zeros(1,M);

% e) Initialize S - number of places for each competitor
SN = zeros(1,N);


% Complete the roulette
i = 1;
for n = 1 : N
    nu = nu + P(n); % throwing the spear
    while mu < nu
        RN(i) = A(n); % add the competitor on the roulette
        i = i + 1;
        SN(n) = SN(n) + 1; % increment the number of sectors for the current competitor
        mu = mu + 1; % update the measured distance   
    end
end


[~,c] = max(SN);
the_chosen = A(c);


end