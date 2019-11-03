
function [Result] = fitness(Array_ind)
global Mtx_coeff Mtx_result
%calcula el fitness de una fila                                                       
Aux1 = Mtx_coeff*transpose(Array_ind);
Aux2 = abs(Mtx_result - Aux1);
Result = sum(Aux2);

end
