clear
i = 1;
load('no_uncertanities_no_disturbance.mat') %1
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;

load('u1_uncertanities_no_disturbance.mat')%2
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u2_uncertanities_no_disturbance.mat')%3
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u3_uncertanities_no_disturbance.mat')%4
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u1u2_uncertanities_no_disturbance.mat')%5
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u1u3_uncertanities_no_disturbance.mat')%6
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u2u3_uncertanities_no_disturbance.mat')%7
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u1u2u3_uncertanities_no_disturbance.mat')%8
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('no_uncertanities_with_disturbance.mat')%9
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u1_uncertanities_with_disturbance.mat')%10
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u2_uncertanities_with_disturbance.mat')%11
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u3_uncertanities_with_disturbance.mat')%12
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u1u2_uncertanities_with_disturbance.mat')%13
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u1u3_uncertanities_with_disturbance.mat')%14
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u2u3_uncertanities_with_disturbance.mat')%15
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;
load('u1u2u3_uncertanities_with_disturbance.mat')%16
y = out.r.data-out.y_out.data
y1 = y(:,1);
y2 = y(:,2);
y3 = y(:,3);
RMSE(i,1) = sqrt(mean((y1).^2))
RMSE(i,2) = sqrt(mean((y2).^2))
RMSE(i,3) = sqrt(mean((y3).^2))
i = i+1;

bar(RMSE,'stacked')
ylabel('Total RMSE')
title('RMSE of control error r(t) - y(t)')
legend('Relative altitude', 'Forward speed', 'Pitch angle')
xticks(1:16)
xticklabels({'N/A','u1','u2','u3', 'u1u2', 'u1u3', 'u2u3', 'u1u2u3','N/A','u1','u2','u3', 'u1u2', 'u1u3', 'u2u3', 'u1u2u3'})
xtickangle(45)
set(gca, 'YGrid', 'on', 'XGrid', 'off')
set(gca, 'GridAlpha', 0.5)

