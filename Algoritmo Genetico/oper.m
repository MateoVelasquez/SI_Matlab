%Funcion que devuelve alguna de las operaciones Cruce-Mutacion y copia
%argumentos:  (Tasa de Cruce, Tasa de mutacion, gen de cruce, gen de
%mutacion, matriz de padres)
function [crmutcpy] = oper(TsPc,TsPm,PntCruz,Padres)
global bst_ftnss
genes=PntCruz;        
RandCruce = rand;      %probabilidad de cruce
PntCruz = randi(PntCruz);    %gen de cruce aleatorio
if TsPc>RandCruce && 0<TsPc  % procede a cruzar
    Gen1 = Padres(1,PntCruz);
    Gen2 = Padres(2,PntCruz);
    Padres(1,PntCruz) = Gen2;
    Padres(2,PntCruz) = Gen1;
    RandMut = rand;      %probabilidad de mutacion 
    
    if TsPm>=RandMut && 0<TsPm     %procede a mutar
        
        PadAmut = 2;                 %padre a mutar
        PntMut = FtnssGenes(Padres(PadAmut,:));    %calcula el fitness a cada gen individual
       
        Padres = ftnssFull(1,Padres);              %Calcula el fitness de los padres
        
        if bst_ftnss>0.5                           % si la precision es mayor a 0.5
            if bst_ftnss>1                         % si es mayor a 1
            aleat = (-3+(6).*rand);                % genera aleatorio en este rango (-3,6)
            else
                aleat = (-2+(4).*rand);            %si no, genera aleatorio entre  (-2,4)
            end
        else
            if bst_ftnss<0.2
                aleat = (-0.1+0.2*rand);               %si precision menor a 0.2... usa rango( -0.1,0.2)
            else
                aleat = (-0.5+1.*rand);                %si precision menor a 0.5... usa rango (-0.5,1)
        
            end
        end
        GenMut = Padres(PadAmut,PntMut);            %recupera el gen a mutar
        GenMut = GenMut + aleat;                    %suma el valor aleatorio al gen original 
        Padres(PadAmut,PntMut) = GenMut;            %muta el gen
        
    end
end
crmutcpy = Padres(:,1:genes);     % si no hay cruce, se copian los padres
end
