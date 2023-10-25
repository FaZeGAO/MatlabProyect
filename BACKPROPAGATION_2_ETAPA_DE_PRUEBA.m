clc, clear, close all
X=[0;0;0;1;1;0;1;1;0;1;1;0;0;1;0];
load('matrices_de_prueba.mat')
VB1=ones(10,1)*-1;
VB2=ones(6,1)*-1;
VB3=ones(4,1)*-1;
%K's primera capa
    K1=(W11*X)+VB1;
    %evaluación en función capa DE ENTRADA
    FK1=1./(1+exp(-K1));
    % FK1=sigmf(K1,[1,1]);
    %K's segunda capa
    K2=(W22*FK1)+VB2;
    %evaluación en función primera capa
    FK2=1./(1+exp(-K2));
    %K's tercera capa
    %K3=W3(1:o1,1:o2)*FK2;
    K3=(W33*FK2)+VB3;
    %evaluación en función capa final
    FK3=1./(1+exp(-K3));
    Y=FK3;
    fprintf('El vector de salida Y es: \n\n')
    disp(Y)
    