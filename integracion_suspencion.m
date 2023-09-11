%Funcion ode45 que resuelve numericamente el sisema MVTS
[t,x]=ode45(@MVTS,[0 10], [0 0 0 0]);
%Valores de x1, x2, x1', x2'
%La funcion retorna los valores de x y t
%Grafica masa 1
figure(1)
plot(t,x(:,1),'b');
grid on
title("Desplazamiento 1");
xlabel("Tiempo");
ylabel("Posición");
%Grafica masa 2
figure(2)
plot(t,x(:,2),'r');
grid on
title("Desplazamiento 2");
xlabel("Tiempo");
ylabel("Posición");
%Graficas juntas
figure(3)
plot(t,x(:,1),'b');
grid on
hold on
title("Posición de D1 y D2");
xlabel("Tiempo");
ylabel("Posición");
plot(t,x(:,2),'r');
grid on
