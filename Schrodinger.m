function [psi,E] = Schrodinger(V)
L = 2; 
N=100;
x = linspace(-L, L, N)';
dx = x(2) - x(1);
number_of_modes=3;
m= 511000;                                   
hbar=197;  
T= diag(V,0);
Lap = (diag(ones((N-1),1),-1) - 2*diag(ones(N,1),0)+ diag(ones((N-1),1), 1))/(dx^2);
H = -1*(hbar^2/(2*m))*Lap+T;
[psi, E] = eig(H);

 Area=0;
 for i=1:100
     dA=(psi(i,1).^2)*dx;
     Area=Area+dA;
     
 end
 C = {'k','b','r'};
 figure(1)
 for i=1:number_of_modes
 subplot(2,1,1);
 plot(x,psi(:,i)./sqrt(Area),'color',C{i})  
 legend('\psi_{E_1}(x)','\psi_{E_2}(x)','\psi_{E_3}(x)');
 xlabel('Distance in x direction')
 ylabel('Normalized Wavefunction')
 hold on
 subplot(2,1,2);
 plot(x,V);
 xlabel('Distance in x direction')
 ylabel('Potential')
 
 end
     
E1=diag(E,0);

for i=1:number_of_modes
    disp(E1(i));
    
end