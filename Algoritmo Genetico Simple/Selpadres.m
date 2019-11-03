%Esta funcion devuelve los padres para un cruce-mutacion o copia:
%Argumentos: (P deterministica, poblacion)
function [Mtx_Padres]= Selpadres(Pdeter,Pob_Ant)
global Num_gen

Vec_Padres= randi([1,size(Pob_Ant,1)],1,Pdeter);  %vector de rands para escoger padres aleat
for i=1:1:Pdeter 
    Mtx_Padres(i,:) = Pob_Ant(Vec_Padres(1,i),:);  %mete los padres en una matriz

end
%torneo padre 1:
Vct_ftnss_pa= zeros(Pdeter,1);    %vector vacio 
for ConPad=1:1:Pdeter %calculo del fitness padres  para efectuar torneo
    ftnss_pa = fitness(Mtx_Padres(ConPad,:));
    Vct_ftnss_pa(ConPad,1)=ftnss_pa;    %almacena fitness en vector
end 
Mtx_padres_ftnss = horzcat(Mtx_Padres,Vct_ftnss_pa);   %concatena fitness con matriz padres
Mtx_padres_ftnss = sortrows(Mtx_padres_ftnss,size(Mtx_padres_ftnss,2)); %reorganiza
Mtx_padres_ftnss = Mtx_padres_ftnss(1,1:Num_gen);   % elimina la columna fitness

%eleccion segundo padre:
Nrand=randi([1,size(Pob_Ant,1)],1,1);   
%resultado padres:
Mtx_Padres = vertcat(Mtx_padres_ftnss,Pob_Ant(Nrand,:));    %concatena los padres

end