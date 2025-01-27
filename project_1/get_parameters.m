function [ts, cp, alpha_1, alpha_2, A, B] = get_parameters(workbook, worksheet)
% Description
% Set the parameters needed to determine Ci(t).
% The parameters are given in PET Scan Brooks paper.
% Inputs:
% workbook: Excel workbook with the values points for Cp(t) 
% extended pass 94 minutes.
% worksheet: Excel worksheet where the data is 
% Outputs:
% ts: time in minutes when Cp data is sampled.
% Cp: FDG concentration in arterial system.
% alpha_1: computed value in equation (3) of Brooks paper.
% alpha_2: computed value in equation (3) of Brooks paper.
% A: computed value in equation (3) of Brooks paper.
% B: computed value in equation (3) of Brooks paper.

if ~exist('workbook','var')
    workbook = "/Users/yg/code/github/mathematical-methods-en-585-615/project_1/project_1_extended_data.xlsx"
    worksheet = "Sheet1"
end
data = import_data(workbook, worksheet);
cp = data.Concentration(2:end);
ts = data.Time(2:end);
% k1, k2 ,k3 , k4 rate constants
k1 = 0.102;
k2 = 0.130;
k3 = 0.062;
k4 = .0068;
d = sqrt((k2 + k3 + k4)^2 -4 * k2 *k4);
alpha_1 = 0.5 * (k2 + k3 + k4  - d);
alpha_2 = 0.5 * (k2 + k3 + k4  + d);
A = (k1 * (k3 + k4 - alpha_1)) / (alpha_2 - alpha_1);
B = (k1 * (alpha_2 -k3 -k4)) / (alpha_2 - alpha_1);

end