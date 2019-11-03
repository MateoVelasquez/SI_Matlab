%%  ------------------------  PARAMETROS ------------------------------------------------------------
global Num_ecu Num_gen Mtx_coeff Mtx_result Rango

tam_pobl =500;  %tamaño de la población
elet = 2;       %elitismo
P_deter = 2;    %torneo deterministico
%numero_ind_torneo =10;
Al_cruc = 3;    %Algoritmo cruce
Ts_Pc= 0.9;     %Tasa de cruce
Ts_Pm = 0.8;  %Tasa de mutación

Rango = [0 10];
Errper = 0.1; %tolerancia
NmEpc = 1000; %Numero de epocas

%Matrices

Mtx_coeff = [3 8 2; 1 -2 4; -5 3 11];
Mtx_result = [25;12;4];



% ------------------ COMIENZO DEL SCRIPT ----------------------------------

Num_ecu=size(Mtx_coeff,1);    %numero de ecuaciones
Num_gen=size(Mtx_coeff,2);   %numero de genes
  

%% primera poblacion aleatoria
Mtx_indivL = Rango(1,1) + (Rango(1,2)-Rango(1,1)).*rand(tam_pobl,Num_ecu);

Mtx_ind_ftnss = ftnssFull(1,Mtx_indivL); %funcion que devuelve todo el fitness 
bst_ftnss=Mtx_ind_ftnss(1,size(Mtx_ind_ftnss,2)); %almacena mejor fitness

%% calculo de epocas
epc_act = 0; %inicia contador epocas
while  bst_ftnss>=Errper && epc_act<NmEpc  %while para criterio de parada
    
    %elitismo:
    Mtx_pobtemp=Mtx_ind_ftnss(1:elet,1:Num_gen);  %selecciona los mejores(elitismo)
    while size(Mtx_pobtemp,1)<tam_pobl             %ciclo para crear nueva poblacion 
        New_padres = Selpadres(P_deter,Mtx_ind_ftnss(:,1:Num_gen)); %funcion para seleccionar padres
        Desendencia = oper(Ts_Pc, Ts_Pm,Num_gen,New_padres);  % cruza- muta o copia
        Mtx_pobtemp = vertcat(Mtx_pobtemp,Desendencia); %concatena cada desendencia en la poblacion
    end
   
    
    %nueva generacion:
    Mtx_ind_ftnss = ftnssFull(1,Mtx_pobtemp)  ;   %calcula fitness nueva gene
    bst_ftnss= round(Mtx_ind_ftnss(1,size(Mtx_ind_ftnss,2)),2);   % mejor fitness de la nueva generacion
    
    epc_act=epc_act+1;  %aumenta las epocas
    disp(['Epoca: ' num2str(epc_act) ', Precisión: ' num2str(bst_ftnss)]); %muestra epoca y precision
end
%% muestra de resultados
Mejor_Resultado= Mtx_ind_ftnss(1,1:Num_gen);     
disp(['Mejor Resultado: ' num2str(Mejor_Resultado)]);
