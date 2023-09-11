function dx=MVTS(t,x)
%Parametros suspencion automovil
m1=290; %Cuarto de masa
b1=1000; %Amortiguador
m2=59; %Rueda-neumatico-eje
k1=16182; %Elasticidad de suspencion
f=0; %Fuerza del actuador
k2=19000; %Elasticidad llanta
z1=0.05*sin(0.5*pi*t);%Desplzamiento vertical 1
z2= 0.05*sin(20*pi*t);%Desplzamiento vertical 2
z=z1;

dx=zeros(4,1);
%Matrices
M = [m1  0; 0  m2];
C = [b1  -b1; -b1  b1];
G = [k1 -k1; -k1 (k1+k2)];
U = [1 0; -1 k2];
%Definicion de la dinamica del sistema
dx(1) = x(3);
dx(2) = x(4);
dx(3:4) = M\(-C*[x(3); x(4)] - G*[x(1); x(2)] + U*[f; z]);

