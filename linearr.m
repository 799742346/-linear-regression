
%axes('linewidth',1, 'box', 'on', 'FontSize',16);
x=load("x.txt");
y=load('y.txt');
figure
plot(x,y,'r.','MarkerEdgeColor','r','MarkerSize',20)
xlabel('压力/Mpa','fontsize',18)
ylabel('V(cm/s)','fontsize',18)


set(gca,'FontSize',10);

set(gca,'linewidth',1.5)
Lxx=sum((x-mean(x)).^2);
Lxy=sum((x-mean(x)).*(y-mean(y)));
b1=Lxy/Lxx;
b0=mean(y)-b1*mean(x);
y1=b1*x+b0;
hold on
plot(x,y1,'-blue','linewidth',2);

m2=LinearModel.fit(x,y)  %函数进行线性回归


