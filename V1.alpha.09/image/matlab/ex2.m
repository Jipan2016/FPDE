clear all
clc
close all
figure(1),hold on,box on,grid on
x = -3:0.01:3;
y1 = erf(x);
y2 = erfc(x);
g1 = plot(x,y1,'Color','blue','linewidth',2);
g2 = plot(x,y2,'Color','red','linewidth',2);
plot([0,0],[-1.2,2.2],'Color','black','linewidth',1);
plot([-3.2,3.2],[0,0],'Color','black','linewidth',1);
axis([-3.2,3.1,-1.2,2.2]);
xlabel('$x$','Interpreter','latex');
legend([g1,g2],{'erf$(x)$','erfc$(x)$'},'location','best','Interpreter','latex');
set(gcf, 'unit', 'normalized', 'position', [0.2 0.2 0.6 0.6])
set(gca,'Fontsize',24,'FontName','Times New Roman')
saveas(gcf,'erf.jpg')
print('erf','-dpdf','-bestfit')