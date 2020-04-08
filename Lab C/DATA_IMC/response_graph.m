set(0,'DefaultLineLineWidth',1.5)


load('no_uncertanities_no_disturbance.mat')
subplot(3,1,1)
plot(out.y_out.data(:,1))
hold on
plot(out.r.data(:,1),'--')
ylabel('Relative altitude')
xlabel('t [s]')
xlim([0,10000])
legend('Relative altitude', 'Reference step signal')
title('IMC controller response')

subplot(3,1,2)
plot(out.y_out.data(:,2))
hold on
plot(out.r.data(:,2),'--')
ylabel('Forward speed')
xlabel('t [s]')
xlim([0,10000])
legend('Forward speed', 'Reference step signal')

subplot(3,1,3)
plot(out.y_out.data(:,3))
hold on
plot(out.r.data(:,3),'--')
ylabel('Pitch angle')
xlabel('t [s]')
xlim([0,10000])
legend('Pitch angle', 'Reference step signal')



