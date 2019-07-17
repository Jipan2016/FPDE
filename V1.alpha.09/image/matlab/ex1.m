clear all
clc
close all
figure(1),hold on,box on,grid on
for i = 1:4
	x = 0.01-i:0.01:0.99-i;
	y = gamma(x);
	plot(x,y,'Color','blue','linewidth',2);
    plot([-i,-i],[-7,7],'--','Color','red','linewidth',1);
end
x = 0.01:0.01:4;
y = gamma(x);
plot(x,y,'Color','blue','linewidth',2);
plot([0,0],[-7,7],'Color','black','linewidth',1);
plot([-4,4],[0,0],'Color','black','linewidth',1);
axis([-4,4,-7,7]);
xlabel('$x$','Interpreter','latex');
ylabel('$\Gamma(x)$','Interpreter','latex');
set(gcf, 'unit', 'normalized', 'position', [0.2 0.2 0.6 0.6])
x = [-3.5:1:0.5,0.5:0.5:4];
y = gamma(x);
scatter(x,y,50,'MarkerFaceColor','red','MarkerEdgeColor','red');
set(gca,'Fontsize',24,'FontName','Times New Roman')
saveas(gcf,'gamma.jpg')
print('gamma','-dpdf','-bestfit')

figure(2),hold on,box on,grid on
x = -4:0.01:4;
y = 1./gamma(x);
plot(x,y,'Color','blue','linewidth',2);
plot([0,0],[-4.2,4.2],'Color','black','linewidth',1);
plot([-4,4],[0,0],'Color','black','linewidth',1);
axis([-4,4,-4.2,4.2]);
xlabel('$x$','Interpreter','latex');
ylabel('$\frac{1}{\Gamma(x)}$','Interpreter','latex');
set(gcf, 'unit', 'normalized', 'position', [0.2 0.2 0.6 0.6])
x = -4:0.5:4;
y = 1./gamma(x);
scatter(x,y,50,'MarkerFaceColor','red','MarkerEdgeColor','red');
set(gca,'Fontsize',24,'FontName','Times New Roman')
saveas(gcf,'invgamma.jpg')
print('invgamma','-dpdf','-bestfit')