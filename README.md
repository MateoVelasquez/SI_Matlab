# Sistemas inteligentes usando MATLAB

Algunos ejemplos basicos de algoritmos inteligentes implementados en MATLAB, desarrollados para el curso de Sistemas inteligentes del Instituto Tecnológico Metropolitano (ITM).

## Comenzando 

### Pre-requisitos

Los algoritmos se desarrollaron en MATLAB 2017a con simulink. Es posible que algunas sentencias no funcionen correctamente en versiones diferentes.


### Instalación

Solo es necesario descargar los códigos y agregar el path de la carpeta en Matlab.

## Ejecución de pruebas

Dentro del repositorio se encuentran algunos algoritmos basicos que serán explicados a continuación:

### Algoritmo Genetico Simple

Este [Algoritmo Genetico](https://github.com/MateoVelasquez/SI_Matlab/blob/master/Algoritmo%20Genetico%20Simple/AlgoritmoGenetico.m) está creado para resolver un sistema de n-ecuaciones con n-incognitas.

Al inicio del archivo, se encuentran los parametros para hacer funcionar el algoritmo. 
La forma de ingresar las ecuaciones es mediante 2 matrices, una para los coeficientes (Mtx_coeff) y la segunda para los valores independientes (Mtx_result).

|X<sub>1</sub> | X<sub>2</sub> |...| X<sub>n</sub> |b             |
|:------------:|:-------------:|:-:|:-------------:|:------------:|
|a<sub>11</sub>|a<sub>12</sub> |...|a<sub>1n</sub> |b<sub>1</sub> |
|a<sub>21</sub>|a<sub>22</sub> |...|a<sub>2n</sub> |b<sub>2</sub> |
|...|... |...|... |...|
|a<sub>n1</sub>|a<sub>n2</sub> |...|a<sub>nn</sub> |b<sub>n</sub> | 

En codigo equivale a:

```Matlab

Mtx_coeff = [a11 a12 a1n; a21 a22 a2n;......;an1 an2 ann];
Mtx_result = [b1;b2;....;bn];

```

Adicionalmente, dentro de la carpeta del algoritmo genetico se encuentran las subfunciones que se explican a continuacion:

- [**fitness**](https://github.com/MateoVelasquez/SI_Matlab/blob/master/Algoritmo%20Genetico%20Simple/fitness.m): Calcula el fitness de un solo individuo.
- [**ftnssFull**](https://github.com/MateoVelasquez/SI_Matlab/blob/master/Algoritmo%20Genetico%20Simple/ftnssFull.m): Calcula el fitness de toda la matriz de individuos.
- [**FtnssGenes**](https://github.com/MateoVelasquez/SI_Matlab/blob/master/Algoritmo%20Genetico%20Simple/FtnssGenes.m): Calcula el fitness para cada Gen del individuo.
- [**oper**](https://github.com/MateoVelasquez/SI_Matlab/blob/master/Algoritmo%20Genetico%20Simple/oper.m): Funcion que devuelve alguna de las operaciones Cruce-Mutacion y copia.
- [**Selpadres**](https://github.com/MateoVelasquez/SI_Matlab/blob/master/Algoritmo%20Genetico%20Simple/Selpadres.m): Selecciona los padres aleatorios para cruce y mutacion


 








