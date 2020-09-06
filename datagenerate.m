x1 = rand(1000,1); x2 = rand(1000,1); X = [x1 x2];

for i = 1:size(x1)
    if x1(i) < .28 && x2(i) < .2
        y(i) = 1;
    else
        y(i) = 0;
    end
    if x1(i) > .28 && x1(i) < .6
        if x2(i) > .2 && x2(i) < .5
            y(i) = 0;
        else
            y(i) = 1;
        end
    end
    if x1(i) > .6
        if x2(i) >.5 && x2(i) < .9
            y(i) = 1;
        else
            y(i) = 0;
        end
    end
end


plotdata(X,y); 

filename = "dataset2.mat"; 
save(filename, 'X','y'); 

