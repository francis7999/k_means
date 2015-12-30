function [center, label] = kmeans(data, center_init, N, M, iter)
center = center_init;
time = 0;
label=ones(N);
while (time <= iter )    
    time=time+1;
    for i=1:N
        dist=inf;
        for j=1:M
            t=norm(data(i,:)-center(j,:));
            if t<dist                
                dist=t;
                no=j;
            end
        end
        label(i)=no;
    end
    for j=1:M        
        sum=[0,0];
        number=0;
        for i=1:N
            if label(i)==j                
                sum=sum+data(i,:);                
                number=number+1;
            end
        end
        sum=sum/number;        
        center(j,:)=sum;
    end
end
