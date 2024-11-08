% %% This will extract info from a single .txt-file of your choosing
close all
clear all
SpectrumStart = 232; 
SpectrumEnd = 915; 

%% Now decompose these data
Temp20 = load("TRspectroscopy.mat");
AllData = Temp20.AllData;
Temp22 = load("wavelength.mat");
wavelength = Temp22.wavelength;
Temp25 = load("ContinuousIllumination.mat");
Abs120msCont = Temp25.Abs120msCont;

%% ========================================================================
DtAllData = [7 10 15 20 30 45 60 90 120 150 200 300 400 500 600 900]; 
[U2,S2,V2] = svd(AllData);
for i = 1:size(U2,1)
svdAllData(i,:) = mean(U2(:,i))*V2(:,i)*S2(i,i);        % Gives basis spectra after SVD decomposition. 
end
svdComps = svdAllData(1:2,:);
x0 = ones(1,2+3*size(svdComps,1)); x0(1:2) = [10^(-1) 10^(-4)]; 
fun = @(x)(LinearSumDiffs(x,AllData,svdComps,DtAllData));
x = fminsearch(fun,x0);
A1 = exp(-x(1)*DtAllData); 
A2 = x(1)/(x(2)-x(1))*(exp(-x(1)*DtAllData) - (exp(-x(2)*DtAllData))); 
% Make a linear time grid to sum components by time-window
t5 = [0:1:250]; 
A3 = exp(-x(1)*t5); 
A4 = x(1)/(x(2)-x(1))*(exp(-x(1)*t5) - (exp(-x(2)*t5))); 
Comp1 = x(3:size(svdComps,1)+2)*svdComps; 
Comp2 = x(size(svdComps,1)+3:2*size(svdComps,1)+2)*svdComps;

% spectra2save = [wavelength; Comp1; Comp2]; 
% save('Spectral_Basis.mat','spectra2save');

% Print rate constants
k1 = 1/x(1)/1000;
k2 = 1/x(2)/1000; 
for i =1:size(AllData,1)
       fun = @(x)(sum((AllData(i,:) - x(1)*Comp1 - x(2)*Comp2).^2));
       x0 = [A1(i) A2(i)];
       temp4(i,:) = fminsearch(fun,x0);
end
       fun = @(x)(sum((Abs120msCont - x(1)*Comp1 - x(2)*Comp2).^2));
       x0 = [0.3 0.3];
       temp5 = fminsearch(fun,x0); 
      
%% =====================================================================================================================       
figure('Position', [750 50 450 1000])
subplot(3,1,1)
plot(wavelength,AllData,'linewidth',0.5,'color','k'); 
hold on; axis([300 700 -0.25 0.2]);
plot(wavelength,Comp1,'linewidth',2.5,'color',[0.9290 0.6940 0.1250]); 
plot(wavelength,Comp2,'linewidth',2.5,'color',[0 0.4470 0.7410]); 
axis([300 700 -0.3 0.2]);
xlabel('Wavelength (nm)')
ylabel('\DeltaAbsorption (OD)')
box on; set(gca,'linewidth',2); set(gca,'FontSize',14);

subplot(3,1,2)
semilogx(DtAllData,A1,'linewidth',2,'color',[0.9290 0.6940 0.1250]); 
hold on; 
semilogx(DtAllData,A2,'linewidth',2,'color',[0 0.4470 0.7410]); 
semilogx(DtAllData,temp4(:,1),'o','linewidth',1.5,'color',[0.9290 0.6940 0.1250]);
semilogx(DtAllData,temp4(:,2),'o','linewidth',1.5,'color',[0 0.4470 0.7410]);
semilogx(DtAllData,A1 + A2,'linewidth',1.5,'color','k'); 
  axis([3.5 3250 0 1.2]);
    xlabel('Time (ms)')
    xticks([10 100 1000])
    ylabel('Population')
    box on; set(gca,'linewidth',2); set(gca,'FontSize',14);

% Draw Figure for Giorgia's paper. Use 240 ms Cont. 
       fun = @(x)(sum((Abs120msCont - x(1)*Comp1 - x(2)*Comp2).^2));
       x0 = [0.3 0.3];
       temp5 = fminsearch(fun,x0); 
       
subplot(3,1,3) 
      plot(wavelength,Abs120msCont,'linewidth',3,'color','k')
    hold on      
     plot(wavelength,temp5(1)*Comp1,'linewidth',2.5,'color',[0.9290 0.6940 0.1250]) 
     plot(wavelength,temp5(2)*Comp2,'linewidth',2.5,'color',[0 0.4470 0.7410])
          plot(wavelength,temp5(1)*Comp1 + temp5(2)*Comp2,'linewidth',1.5,'color',[0.6350 0.0780 0.1840])
    axis([300 700 -0.3 0.2]);
    xlabel('Wavelength (nm)')
    ylabel('\DeltaAbsorption (OD)')
    box on; set(gca,'linewidth',2); set(gca,'FontSize',14);
       
%%  Write function to minimize 
function SumFit = LinearSumDiffs(yi,yii,yiii,yiv) 
k(1:2) = yi(1:2);
x = yi(3:size(yi,2));
Data = yii; 
svdComps = yiii; 
Dt = yiv;
Comp1 = x(1:size(svdComps,1))*svdComps; 
Comp2 = x(size(svdComps,1)+1:2*size(svdComps,1))*svdComps;
A1 = exp(-k(1)*Dt); 
A2 = k(1)/(k(2)-k(1))*(exp(-k(1)*Dt) - (exp(-k(2)*Dt)));
SumFit = sum(sum((transpose(A1)*Comp1 +transpose(A2)*Comp2 - Data).^2));
end 