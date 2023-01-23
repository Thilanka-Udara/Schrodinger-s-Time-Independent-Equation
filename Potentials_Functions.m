L = 2; % Length of Left and Right Boundry
N=100; % Number of Data Points
x = linspace(-L, L, N)'; % x Direction Data Points
dx = x(2) - x(1); % Step Size
number_of_modes=3; % We Will Find First Three Energy Values
m= 511000; % Mass of an Electron in ev                                  
hbar=197; % Modified Plank's Constant in ev 


%% Please uncomment this section.for Infinite Potential Well. 
s=length(x);
V=zeros(1,s); % Zero potential
E=Schrodinger(V);

%% Please uncomment this section.for Finite Potential Well.
% W=L/5; % Width of the Potential Well/2
% V=2+2*(heaviside(x-W)-heaviside(x+W)); % Potential Function
% E=Schrodinger(V);

%% Please uncomment this section.for quantum harmonic oscillator.
% omega=sqrt(1/m); % Angular Frequency. Spring Constant is one;
% V = 0.5*m*omega*omega*x.^(2); % Potential Function
% E=Schrodinger(V);

%% Please uncomment this section.for arbitary potential.
% W=-1; % Left Edge of An Arbitary Potential Well
% V=1.5*((heaviside(x-W))-(heaviside(x+W))); % Potential Function
% E=Schrodinger(V);
