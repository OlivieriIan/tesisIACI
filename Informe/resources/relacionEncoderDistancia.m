clear all; close all; clc; 
% ========= Datos ========= 
Distancia_max = 400; %valor en cm
dist = 0:25:Distancia_max; %valor en cm
cant_ptos = length(dist);
encVal_total = [0	1130	2250	3430	4630	5830	7130	8400	9730	11120	12530	14020	15530	17130	18770	20520	22330];

% ========= Fitteo con cuadratica ========= 
p_real =  polyfit(dist',encVal_total',2);

% -- Fitteo con cuadratica --
fittedCurve_real = p_real(1)*dist.*dist + p_real(2)*dist+p_real(3);
error_rmse = 0;
for(ii = 1: cant_ptos)
    error_rmse = error_rmse +(encVal_total(ii)-fittedCurve_real(ii))^2; 
end
error_rmse = num2str(sqrt(error_rmse));
disp(['Error RMSE cuadratica: ',error_rmse]);
    

% -- Grafico de resultadas --
figure(1); hold all;
grid on;
set(gca,'color',[207/255, 231/255, 245/255]);
plot(dist,fittedCurve_real,'b', 'LineWidth',2);
plot(dist,encVal_total,'*r', 'LineWidth',2);
hold off;
title(['Ajuste con funcion cuadratica. Error RMSE = ',error_rmse],'FontSize',15,'FontWeight','bold');
xlabel('Distancia [cm]','FontSize',12,'FontWeight','bold');
ylabel('Cuentas encoder','FontSize',12,'FontWeight','bold');
legend('Funcion de ajuste','Datos originales');
set(gcf, 'Position', [100, 100, 960,570]);

% ========= Fitteo lineal con una sola recta ========= 
m_recta = (encVal_total(end)-encVal_total(1))/Distancia_max;
recta = dist*m_recta;

error_rmse = 0;
for(ii = 1: cant_ptos)
    error_rmse = error_rmse +(encVal_total(ii)-recta(ii))^2; 
end
error_rmse = num2str(sqrt(error_rmse));
disp(['Error RMSE recta: ',error_rmse]);

figure(2); hold all;
grid on;
set(gca,'color',[207/255, 231/255, 245/255]);
plot(dist,recta,'b', 'LineWidth',2);
plot(dist,encVal_total,'*r', 'LineWidth',2);
hold off;
title(['Ajuste con una unica recta. Error RMSE = ',error_rmse],'FontSize',15,'FontWeight','bold');
xlabel('Distancia [cm]','FontSize',12,'FontWeight','bold');
ylabel('Cuentas encoder','FontSize',12,'FontWeight','bold');
legend('Funcion de ajuste','Datos originales');
set(gcf, 'Position', [150, 150, 960,570]);

% =========  Fitteo lineal cada 25cm ========= 
syms cm;

m_porTramos = zeros(1,cant_ptos);
for jj = 1:cant_ptos-1
    m_porTramos(jj) = (encVal_total(jj+1)-encVal_total(jj))/25;
end

m_porTramos = [round(m_porTramos(1:end-1)) , round(m_porTramos(end-1))]; %le saco el ultimo 0 y le pongo la pendiente del 0 (0)
b_porTramos = encVal_total - m_porTramos.*dist;
fittedCurve_porTramo25cm = m_porTramos().*dist + b_porTramos;

error_rmse = 0;
for(ii = 1: cant_ptos)
    error_rmse = error_rmse +(encVal_total(ii)-fittedCurve_porTramo25cm(ii))^2; 
end
error_rmse = num2str(sqrt(error_rmse));
disp(['Error RMSE por tramos 25cm: ',error_rmse]);
%ittedCurve_porTramo_sym =  m_porTramos()*cm + b_porTramos; disp(fittedCurve_porTramo_sym);

figure(3); hold all;
grid on;
set(gca,'color',[207/255, 231/255, 245/255]);
plot(dist,fittedCurve_porTramo25cm,'b', 'LineWidth',2);
plot(dist,encVal_total,'*r', 'LineWidth',2);
hold off;
title(['Ajuste de datos con rectas cada 25cm. Error RMSE = ',error_rmse],'FontSize',15,'FontWeight','bold');
xlabel('Distancia [cm]','FontSize',12,'FontWeight','bold');
ylabel('Cuentas encoder','FontSize',12,'FontWeight','bold');
legend('Funcion de ajuste','Datos originales');
set(gcf, 'Position', [200, 200, 960,570]);


% =========  Fitteo lineal cada 100cm ========= 
% se prefirio tomar cada 100cm los fitteos para eliminar ruido, pq cada 25
% lo que pasaba era que algunas pendientes en vez de subir bajaban
mult = 4; %cuantos saltos de 25 agarro. como quiero cada 100, mult = 4
rangoPuntos = 1:mult:floor(cant_ptos)-1;
%calculo las pendientes
m_porTramos =  zeros(1,cant_ptos);
for jj = rangoPuntos;
    m_porTramos(jj) = (encVal_total(jj+mult)-encVal_total(jj))/(25*mult);
end

% si algun valor es nulo le pongo el anterior, para extender la recta
for jj = 1:cant_ptos
    if m_porTramos(jj)==0 
        m_porTramos(jj)=m_porTramos(jj-1);
    end
end


m_porTramos = [round(m_porTramos(1:end-1)) , round(m_porTramos(end-1))];
% calculo las ordenadas al origen
b_porTramos = zeros(1,cant_ptos);
for jj = rangoPuntos;
    b_porTramos(jj) = encVal_total(jj) - m_porTramos(jj).*dist(jj);
end
for jj = mult:1:floor(cant_ptos)-1
    if b_porTramos(jj)==0 
        b_porTramos(jj)=b_porTramos(jj-1);
    end
end
b_porTramos = [round(b_porTramos(1:end-1)) , round(b_porTramos(end-1))];



% Calculo los tramos, tanto numerica como simbolicamente
fittedCurve_porTramo100cm = m_porTramos.*dist + b_porTramos;
fittedCurve_porTramo_sym =  m_porTramos(1:mult:cant_ptos-1)*cm + b_porTramos(1:mult:cant_ptos-1); 
%disp(fittedCurve_porTramo_sym);

error_rmse = 0;
for(ii = 1: cant_ptos)
    error_rmse = error_rmse +(encVal_total(ii)-fittedCurve_porTramo100cm(ii))^2; 
end
error_rmse = num2str(sqrt(error_rmse));
disp(['Error RMSE por tramos 50cm: ',error_rmse]);

figure(4); hold all;
grid on;
set(gca,'color',[207/255, 231/255, 245/255]);
plot(dist,fittedCurve_porTramo100cm,'b', 'LineWidth',2);
plot(dist,encVal_total,'*r', 'LineWidth',2);
hold off;
title(['Ajuste de datos con rectas cada 100cm. Error RMSE = ',error_rmse],'FontSize',15,'FontWeight','bold');
xlabel('Distancia [cm]','FontSize',12,'FontWeight','bold');
ylabel('Cuentas encoder','FontSize',12,'FontWeight','bold');
legend('Funcion de ajuste','Datos originales');
set(gcf, 'Position', [250, 250, 960,570]);


