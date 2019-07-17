clear all
clc
close all
f = @(x,y) exp(-(x+i*y).^2);
x = - 3:0.01:3;
y = - 3:0.01:3;
[xx,yy] = meshgrid(x,y);
zz = f(xx,yy);
figure(1)
subplot(2,2,1);hold on,box on,grid on
axis([-3,3,-3,3]);axis square,colormap(jet);
contourf(xx,yy,real(zz),[-(10.^(0:0.075:0.6))+1,10.^(0:0.075:0.6)-1],'LineWidth',1);
set(gca,'Fontsize',16,'FontName','Times New Roman')
colorbar()
subplot(2,2,2);hold on,box on,grid on
axis([-3,3,-3,3]);axis square,colormap(jet);
contourf(xx,yy,imag(zz),[-(10.^(0:0.075:0.6))+1,10.^(0:0.075:0.6)-1],'LineWidth',1);
set(gca,'Fontsize',16,'FontName','Times New Roman')
colorbar()
subplot(2,2,3);hold on,box on,grid on
axis([-3,3,-3,3]);axis square,colormap(jet);
contourf(xx,yy,abs(zz),10.^(0:0.075:0.6)-1,'LineWidth',1);
set(gca,'Fontsize',16,'FontName','Times New Roman')
colorbar()
subplot(2,2,4);hold on,box on,grid on
axis([-3,3,-3,3]);axis square,colormap(jet);
contourf(xx,yy,angle(zz),-pi:pi/4:pi,'LineWidth',1);
colorbar()
set(gca,'Fontsize',16,'FontName','Times New Roman')
set(gcf, 'unit', 'normalized', 'position', [0 0 0.8 1])
saveas(gcf,'erfz1.jpg')
print('erfz1','-dpdf','-bestfit')