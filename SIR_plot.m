function SIR_plot(x)
B = struct;

if istable(x)
    B.p = table2array(x);
else
    B.p = x;
end
B.optim = 1;

B = SIR_model(B);

figure
subplot(1,2,1)
plot(B.Idata_time,B.Idata,'o');
hold on
plot(B.T,B.Y(:,2));
hold off
xlabel('time(days)')
ylabel('Number of Infected people')
legend({'data','I(t)'})

subplot(1,2,2)
plot(B.Rdata_time,B.Rdata,'o');
hold on
plot(B.T,B.Y(:,3));
hold off
xlabel('time(days)')
ylabel('Number of Recovered people')
legend({'data','R(t)'})
end
