clc, clearvars

x_center = 0;
y_center = 0;

disp('Front, Fz = 1550N')
maxLatF = 2170; %N
maxLongF = 2218; 

for i = 1:1200
    x(i) = maxLongF * cos(2*pi*i/1000) + x_center;
    y(i) = maxLatF * sin(2*pi*i/1000) + y_center;
end
plot(x, y)
xlabel('Fx')
ylabel('Fy')
xlim([-2250 2250])
ylim([-2250 2250])

nineLong = .9 * maxLongF;
eightLong = .8 * maxLongF;
sevenLong = .7 * maxLongF;
sixLong = .6 * maxLongF;
fiveLong = .5 * maxLongF;
fourLong = .4 * maxLongF;
threeLong = .3 * maxLongF;
twoLong = .2 * maxLongF;
oneLong = .1 * maxLongF;

disp(['100% accel: Fx = ', num2str(maxLongF), ' Fy = 0'])

i = 1;
while x(i) > nineLong
    i = i +1;
end

disp(['90% accel: Fx = ', num2str(nineLong), ' Fy = ', num2str(y(i))])

i = 1;
while x(i) > eightLong
    i = i +1;
end

disp(['80% accel: Fx = ', num2str(eightLong), ' Fy = ', num2str(y(i))])

i = 1;
while x(i) > sevenLong
    i = i +1;
end

disp(['70% accel: Fx = ', num2str(sevenLong), ' Fy = ', num2str(y(i))])

i = 1;
while x(i) > sixLong
    i = i +1;
end

disp(['60% accel: Fx = ', num2str(sixLong), ' Fy = ', num2str(y(i))])

i = 1;
while x(i) > fiveLong
    i = i +1;
end

disp(['50% accel: Fx = ', num2str(fiveLong), ' Fy = ', num2str(y(i))])

i = 1;
while x(i) > fourLong
    i = i +1;
end

disp(['40% accel: Fx = ', num2str(fourLong), ' Fy = ', num2str(y(i))])

i = 1;
while x(i) > threeLong
    i = i +1;
end

disp(['30% accel: Fx = ', num2str(threeLong), ' Fy = ', num2str(y(i))])

i = 1;
while x(i) > twoLong
    i = i +1;
end

disp(['20% accel: Fx = ', num2str(twoLong), ' Fy = ', num2str(y(i))])

i = 1;
while x(i) > oneLong
    i = i +1;
end

disp(['10% accel: Fx = ', num2str(oneLong), ' Fy = ', num2str(y(i))])



disp(['0% accel: Fx = 0 ', ' Fy = ', num2str(maxLatF)])