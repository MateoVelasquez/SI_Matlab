%esta funcion devuelve la posicion del peor, gen para mutarlo
function [ i ] = FtnssGenes( input_args )       
global Mtx_coeff Mtx_result

Aux1 = Mtx_coeff*transpose(input_args);      %calcula el resultado 
Result = abs(Mtx_result - Aux1);             % encuentra el error
[i]=find(Result == max(max(Result)));        % devuelve la posicion del error mas grande

end

