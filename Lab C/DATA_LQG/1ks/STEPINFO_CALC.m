clear
maxTime = 1000
i = 1;
load('no_uncertanities_no_disturbance.mat') %1
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;

load('u1_uncertanities_no_disturbance.mat')%2
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u2_uncertanities_no_disturbance.mat')%3
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u3_uncertanities_no_disturbance.mat')%4
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u1u2_uncertanities_no_disturbance.mat')%5
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u1u3_uncertanities_no_disturbance.mat')%6
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u2u3_uncertanities_no_disturbance.mat')%7
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u1u2u3_uncertanities_no_disturbance.mat')%8
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('no_uncertanities_with_disturbance.mat')%9
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u1_uncertanities_with_disturbance.mat')%10
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u2_uncertanities_with_disturbance.mat')%11
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u3_uncertanities_with_disturbance.mat')%12
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u1u2_uncertanities_with_disturbance.mat')%13
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u1u3_uncertanities_with_disturbance.mat')%14
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u2u3_uncertanities_with_disturbance.mat')%15
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;
load('u1u2u3_uncertanities_with_disturbance.mat')%16
y = out.y.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
STEPINF(i,1) = stepinfo(y1, linspace(0, maxTime, length(y)))
STEPINF(i,2) = stepinfo(y2, linspace(0, maxTime, length(y)))
STEPINF(i,3) = stepinfo(y3, linspace(0, maxTime, length(y)))
i = i+1;

% bar(STEPINF,'stacked')
% ylabel('Total RMSE')
% title('RMSE of control y r(t) - y(t)')
% legend('Relative altitude', 'Forward speed', 'Pitch angle')
% xticks(1:16)
% xticklabels({'N/A','u1','u2','u3', 'u1u2', 'u1u3', 'u2u3', 'u1u2u3','N/A','u1','u2','u3', 'u1u2', 'u1u3', 'u2u3', 'u1u2u3'})
% xtickangle(45)
% set(gca, 'YGrid', 'on', 'XGrid', 'off')
% set(gca, 'GridAlpha', 0.5)

