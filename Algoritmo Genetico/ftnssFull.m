%esta funcion calcula el ftness completo para toda una matriz
%
%argumentos: (individuo de inicio,  matriz de individuos)
function [Result] = ftnssFull(indInicio,Mtx_indiv)     %calcula fitness de matriz completa
tamPobla=size(Mtx_indiv,1);                            
Vct_ftnss = zeros(tamPobla,1);                          %vector vacio
for indiv=indInicio:1:tamPobla                          %fitness para cada fila
    ftnss = fitness(Mtx_indiv(indiv,:));                %funcion ftnss
    Vct_ftnss(indiv,1)=ftnss;                           %guarda fitness en vector
    
end
Mtx_ind_ftnss = horzcat(Mtx_indiv,Vct_ftnss);           %concatena fitness
Result = sortrows(Mtx_ind_ftnss,size(Mtx_ind_ftnss,2)); % organiza de mejor a peor



end