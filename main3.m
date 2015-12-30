data1 = mvnrnd([0.2, 0.2], [0.1, 0; 0, 0.1], 100);
data2 = mvnrnd([0.8, 0.8], [0.1, 0; 0, 0.1], 10);
data =[data1;data2];
[N, M] = size(data);
center_init = rand(M, 2);
[center, label] = kmeans(data, center_init, N, M, 500);
temp = ['o','+','^','x','s','d'];
color = ['b', 'm', 'c','k','y','g'];
for i=1:N                         
    plot(data(i,1),data(i,2),'Marker',temp(label(i)), 'Color',color(label(i)));
    hold on;
end
for j=1:m    
    plot(center(j,1),center(j,2),temp(j),'MarkerSize',15,'Color','r');
    hold on; 
end