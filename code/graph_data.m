dataIn = readtable('../data/TREE_COMMON.csv');
dataIn2 = dataIn(:, [5, 6, 15, 19]);
newData = table2array(dataIn2);
temp = containers.Map;
mapper  = [1 2 4 5 6 8 9 10 11 12 13 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 44 45 46 47 48 49 50 51 53 54 55 56];
disp(length(mapper))
for i = 1:length(newData)
    newData(i, 2) = find(mapper == newData(i,2));
end

U = unique(newData(:,2));
C = arrayfun(@(n)newData(newData(:,2)==n,:),U,'uni',0);

thing = zeros(5);
thing = thing + 1;

for i = 1:length(C)
    temp = C(i);
    if (length(temp) > 1)
        thing(temp(1, 2)) = cast(mean(temp(:,4)), 'uint8');
    end
end

disp(C(1))



for i = 1:50
    
end

%year_height_arr = table2array(year_height);
%histogram(year_height(:, 2))
%tree131 = year_height_arr(year_height_arr(:, 2) == 131);

%histogram(table2array(tree131))
%disp(dataIn)
%histogram(year_height(:, 2))

figure
S = shaperead('usastatelo.shp');
numRegions = length(S);
mapshow(S)

cmap = colormap;
numColors = size(cmap, 1);

data = randi(numColors, 1, numRegions);

for i = 1:length(S)
    mapshow(S(i), 'FaceColor', cmap(thing(i),:))
end