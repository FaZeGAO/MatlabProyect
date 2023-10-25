clc, clear, close all

load('matrices_finales.mat')

TABLA=[0 0 0 0 0 0 0 0 0 0;
       0 0 0 0 255 0 0 0 0 0;
       0 255 0 0 0 0 0 0 0 0;
       0 255 255 255 0 0 0 255 0 0;
       255 0 255 255 255 255 255 255 255 255;
       0 255 0 0 0 255 255 0 0 0;
       0 255 0 0 0 0 0 255 0 0;
       255 0 0 0 0 0 0 0 0 0;
       0 255 0 0 0 0 0 255 0 0;
       0 255 0 255 255 255 0 255 0 255;
       255 0 255 255 255 255 255 0 255 255;
       0 255 255 0 0 0 0 255 0 0;
       0 0 0 0 255 0 0 255 0 0;
       0 0 0 0 255 0 0 0 0 0;
       0 0 0 0 0 0 0 255 0 0]; %15x10

x1=input('Inserte x1: ');
x2=input('Inserte x2: ');
x3=input('Inserte x3: ');
x4=input('Inserte x4: ');
x5=input('Inserte x5: ');
x6=input('Inserte x6: ');
x7=input('Inserte x7: ');
x8=input('Inserte x8: ');
x9=input('Inserte x9: ');
x10=input('Inserte x10: ');
x11=input('Inserte x11: ');
x12=input('Inserte x12: ');
x13=input('Inserte x13: ');
x14=input('Inserte x14: ');
x15=input('Inserte x15: ');
X=[x1;x2;x3;x4;x5;x6;x7;x8;x9;x10;x11;x12;x13;x14;x15];
fprintf('\n\n')

% A1=1./(1+exp(-(W1*TABLA(:,10)+B1)));
% A2=1./(1+exp(-(W2*A1+B2)));
% Y=1./(1+exp(-(W3*A2+B3)));

A1=1./(1+exp(-(W1*X+B1))) ;
A2=1./(1+exp(-(W2*A1+B2)));
A3=1./(1+exp(-(W3*A2+B3)));
% disp(A3)
Y=round(A3);
fprintf('La salida Y binaria es: \n\n')
disp(Y')

P0=[0 0 0;
    0 1 0;
    0 1 0;
    0 1 0;
    0 0 0];

P1=[1 0 1;
    0 0 1;
    1 0 1;
    1 0 1;
    0 0 0];

P2=[0 0 0;
    1 1 0;
    0 0 0;
    0 1 1;
    0 0 0];

P3=[0 0 0;
    1 1 0;
    0 0 0;
    1 1 0;
    0 0 0];

P4=[0 1 0;
    0 1 0;
    0 0 0;
    1 1 0;
    1 1 0];

P5=[0 0 0;
    0 1 1;
    0 0 0;
    1 1 0;
    0 0 0];

P6=[0 0 0;
    0 1 1;
    0 0 0;
    0 1 0;
    0 0 0];

P7=[0 0 0;
    1 1 0;
    1 0 1;
    1 0 1;
    1 0 1];

P8=[0 0 0;
    0 1 0;
    0 0 0;
    0 1 0;
    0 0 0];

P9=[0 0 0;
    0 1 0;
    0 0 0;
    1 1 0;
    1 1 0];

PE=[x1 x2 x3;
    x4 x5 x6;
    x7 x8 x9;
    x10 x11 x12;
    x13 x14 x15];

subplot(3,4,1), imagesc(P0), colormap(cool), axis image, axis ij
subplot(3,4,2), imagesc(P1), colormap(cool), axis image, axis ij
subplot(3,4,3), imagesc(P2), colormap(cool), axis image, axis ij
subplot(3,4,4), imagesc(P3), colormap(cool), axis image, axis ij
subplot(3,4,5), imagesc(P4), colormap(cool), axis image, axis ij
subplot(3,4,6), imagesc(P5), colormap(cool), axis image, axis ij
subplot(3,4,7), imagesc(P6), colormap(cool), axis image, axis ij
subplot(3,4,8), imagesc(P7), colormap(cool), axis image, axis ij
subplot(3,4,9), imagesc(P8), colormap(cool), axis image, axis ij
subplot(3,4,10), imagesc(P9), colormap(cool), axis image, axis ij
subplot(3,4,11), imagesc(PE), colormap(cool),axis image, axis ij
title('Patron de Entrada')

if Y==[0;0;0;0]
    subplot(3,4,12), imagesc(P0), colormap(cool), axis image, axis ij
     title('Patron de Salida')
end
if Y==[0;0;0;1]
    subplot(3,4,12), imagesc(P1), colormap(cool), axis image, axis ij
     title('Patron de Salida')
end
if Y==[0;0;1;0]
    subplot(3,4,12), imagesc(P2), colormap(cool), axis image, axis ij
     title('Patron de Salida')
end
if Y==[0;0;1;1]
    subplot(3,4,12), imagesc(P3), colormap(cool), axis image, axis ij
     title('Patron de Salida')
end
if Y==[0;1;0;0]
    subplot(3,4,12), imagesc(P4), colormap(cool), axis image, axis ij
     title('Patron de Salida')
end
if Y==[0;1;0;1]
   subplot(3,4,12), imagesc(P5), colormap(cool), axis image, axis ij
     title('Patron de Salida')
end
if Y==[0;1;1;0]
    subplot(3,4,12), imagesc(P6), colormap(cool), axis image, axis ij
     title('Patron de Salida')
end
if Y==[0;1;1;1]
  subplot(3,4,12), imagesc(P7), colormap(cool), axis image, axis ij
     title('Patron de Salida')
end
if Y==[1;0;0;0]
    subplot(3,4,12), imagesc(P8), colormap(cool), axis image, axis ij
     title('Patron de Salida')
end
if Y==[1;0;0;1]
    subplot(3,4,12), imagesc(P9), colormap(cool), axis image, axis ij
     title('Patron de Salida')
end

% subplot(3,4,1), imagesc(P0), colormap(gray(255)), axis image, axis ij
% subplot(3,4,2), imagesc(P1), colormap(gray(255)), axis image, axis ij
% subplot(3,4,3), imagesc(P2), colormap(gray(255)), axis image, axis ij
% subplot(3,4,4), imagesc(P3), colormap(gray(255)), axis image, axis ij
% subplot(3,4,5), imagesc(P4), colormap(gray(255)), axis image, axis ij
% subplot(3,4,6), imagesc(P5), colormap(gray(255)), axis image, axis ij
% subplot(3,4,7), imagesc(P6), colormap(gray(255)), axis image, axis ij
% subplot(3,4,8), imagesc(P7), colormap(gray(255)), axis image, axis ij
% subplot(3,4,9), imagesc(P8), colormap(gray(255)), axis image, axis ij
% subplot(3,4,10), imagesc(P9), colormap(gray(255)), axis image, axis ij
% subplot(3,4,11), imagesc(PE), colormap(gray(255)),axis image, axis ij
% title('Patron de Entrada')
% 
% if Y==[0;0;0;0]
%     subplot(3,4,12), imagesc(P0), colormap(gray(255)), axis image, axis ij
%      title('Patron de Salida')
% end
% if Y==[0;0;0;1]
%     subplot(3,4,12), imagesc(P1), colormap(gray(255)), axis image, axis ij
%      title('Patron de Salida')
% end
% if Y==[0;0;1;0]
%     subplot(3,4,12), imagesc(P2), colormap(gray(255)), axis image, axis ij
%      title('Patron de Salida')
% end
% if Y==[0;0;1;1]
%     subplot(3,4,12), imagesc(P3), colormap(gray(255)), axis image, axis ij
%      title('Patron de Salida')
% end
% if Y==[0;1;0;0]
%     subplot(3,4,12), imagesc(P4),colormap(gray(255)), axis image, axis ij
%      title('Patron de Salida')
% end
% if Y==[0;1;0;1]
%    subplot(3,4,12), imagesc(P5), colormap(gray(255)), axis image, axis ij
%      title('Patron de Salida')
% end
% if Y==[0;1;1;0]
%     subplot(3,4,12), imagesc(P6), colormap(gray(255)), axis image, axis ij
%      title('Patron de Salida')
% end
% if Y==[0;1;1;1]
%   subplot(3,4,12), imagesc(P7), colormap(gray(255)), axis image, axis ij
%      title('Patron de Salida')
% end
% if Y==[1;0;0;0]
%     subplot(3,4,12), imagesc(P8), colormap(gray(255)), axis image, axis ij
%      title('Patron de Salida')
% end
% if Y==[1;0;0;1]
%     subplot(3,4,12), imagesc(P9), colormap(gray(255)), axis image, axis ij
%      title('Patron de Salida')
% end
% 
% 
% 
