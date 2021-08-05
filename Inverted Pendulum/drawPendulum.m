function drawPendulum(t,x,m1,m2,g,l)
s = x(:,1);
phi = x(:,3);
Epot = m2 * g * l * cos(phi);

% dimensions
W = 1*sqrt(m1/5);  % cart width
H = .5*sqrt(m1/5); % cart height
mr = .3*sqrt(m2);  % mass radius

% positions
px = s - l*sin(phi);
py = H/2 + l*cos(phi);

% create new figure and 
figure('position', [50 500 500 400])
plot([-10 10],[0 0],'w','LineWidth',2)
hold on

% plot the cart
h1=rectangle('Position',[s(1)-W/2,0,W,H],'Curvature',.1,'FaceColor',[1 0.1 0.1],'EdgeColor',[1 1 1]);

% plot the pole
h2=plot([s(1) px(1)],[0 py(1)],'w','LineWidth',2);
h3=rectangle('Position',[px(1)-mr/2,py(1)-mr/2,mr,mr],'Curvature',1,'FaceColor',[.3 0.3 1],'EdgeColor',[1 1 1]);
h4=text(0.95, 1.5, ['phi: ', num2str(1)]);
h5=text(0.95, 1.7, ['Epot: ', num2str(1)]);
set(h4,'color','w', 'fontsize', 14);
set(h5,'color','w', 'fontsize', 14);
xlim([-2 2]);
ylim([-2 2]);
set(gca,'Color','k','XColor','w','YColor','w')
set(gcf,'Color','k')
 
tic

% animation in a for loop 
for k=1:length(t)

  % update pole and cart position
  set(h1, 'position',[s(k)-W/2,0,W,H]);
  set(h2, 'XData',[s(k) px(k)], 'YData', [H/2 py(k)]);
  set(h3, 'position', [px(k)-mr/2,py(k)-mr/2,mr,mr]);
  set(h4, 'string',['phi: ', num2str(phi(k))]);
  set(h5, 'string',['Epot: ', num2str(Epot(k))]);
  drawnow();
  
  % strop the animation when q is pressed
  if (kbhit (1) == 'q')
    break
  end
  
  % meassure the time and create a fixed time loop
  t2=toc;
  while t2 < t(k)
    t2 = toc;
  end
  t3(k) = t2;
  
end

%figure
%plot(diff(t3));
%legend('plot time');
end