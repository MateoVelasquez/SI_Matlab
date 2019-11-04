# Sistemas inteligentes usando MATLAB

Algunos ejemplos basicos de algoritmos inteligentes implementados en MATLAB, desarrollados para el curso de Sistemas inteligentes del Instituto Tecnológico Metropolitano (ITM)

## Comenzando 

### Pre-requisitos

Los algoritmos se desarrollaron en MATLAB 2017a con simulink. Es posible que algunas sentencias no funcionen correctamente en versiones diferentes.


### Instalación

Solo es necesario descargar los códigos y agregar el path de la carpeta en Matlab

## Ejecución de pruebas

Dentro del repositorio se encuentran algunos algoritmos basicos que serán explicados a continuación:

### Algoritmo Genetico Simple

Este [Algoritmo Genetico](https://github.com/MateoVelasquez/SI_Matlab/blob/master/Algoritmo%20Genetico%20Simple/AlgoritmoGenetico.m) está creado para resolver un sistema de n-ecuaciones con n-incognitas.

Al inicio del archivo, se encuentran los parametros para hacer funcionar el algoritmo. 
La forma de ingresar las ecuaciones es mediante 2 matrices, una para los coeficientes (Mtx_coeff) y la segunda para los valores independientes (Mtx_result).

|X<sub>1</sub> | X<sub>2</sub> |...| X<sub>n</sub> |              |
|:------------:|:-------------:|:-:|:-------------:|:------------:|
|a<sub>11</sub>|X<sub>12</sub> |...|X<sub>1n</sub> |b<sub>1</sub> |
|a<sub>21</sub>|X<sub>22</sub> |...|X<sub>2n</sub> |b<sub>2</sub> |
|...|... |...|... |...|
|a<sub>n1</sub>|X<sub>n2</sub> |...|X<sub>nn</sub> |b<sub>n</sub> | 




 








