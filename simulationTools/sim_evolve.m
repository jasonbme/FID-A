%sim_evolve.m
%Jamie Near, 2014.
%
% USAGE:
% d_out = sim_evolve(d_in,H,t)
% 
% DESCRIPTION:
% This function simulates free evolution of the spin system under the 
% effects of chemical shift and scalar coupling.
% 
% INPUTS:
% d_in      = input density matrix structure.
% H         = Hamiltonian operator structure.
% t         = duration of evolution (s)
%
% OUTPUTS:
% d_out     = output density matrix following free evolution.

function d_out = sim_evolve(d_in,H,t)

d_out = ...
    expm(-1i*H.HAB*t) * ...
    d_in * ...
    expm(1i*H.HAB*t);


