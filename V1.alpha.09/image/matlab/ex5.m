clear all
clc
close all
pmax = 100;

figure(1),hold on,box on,grid on
for n = 0:5
	x = -3.2:0.01:3.2;
	y = zeros(size(x));
    for p = 0:pmax
        y = y+factorial(n)/sqrt(pi)*(-1)^p*x.^(n*p+1)/(n*p+1)/factorial(p);
    end
	plot(x,y,'linewidth',2,'Displayname',['$ ~ n = ',num2str(n),'$']);
end
plot([0,0],[-3.8,3.8],'Color','black','linewidth',1,'HandleVisibility','off');
plot([-3.2,3.2],[0,0],'Color','black','linewidth',1,'HandleVisibility','off');
axis([-3.2,3.2,-3.8,3.8]);
legend('show','location','Southeast','Interpreter','latex');
xlabel('$x$','Interpreter','latex');
ylabel('$E_n(x)$','Interpreter','latex');
set(gcf, 'unit', 'normalized', 'position', [0.2 0.2 0.8 0.8])
set(gca,'Fontsize',24,'FontName','Times New Roman')
saveas(gcf,'Enx.jpg')
print('Enx','-dpdf','-bestfit')
