function stars = stars() 
    %Get star coordinates from txt file
    %Path currently hardcoded. With the workspace saved, we should no
    %longer need this class
    filePath = 'C:\Users\zephi\Documents\385_Project\SOEN385_project\SOEN385_Winer_2018_Proj\Datafile_StarLocationsForTelescopProject.txt';
    fileID = fopen(filePath,'r');
    formatSpec = '%d %d';
    sizeA = [3 Inf];
    starsArr = fscanf(fileID,formatSpec,sizeA);
    starsArrTrans = starsArr';
    %stars = starArray';
    fclose(fileID);
    [~,idx] = sort(starsArrTrans(:,2)); % sort just the first row
    stars = starsArrTrans(idx,:)';   % sort the whole matrix using the sort indices
    
    %Generates an array of 3 integer representing the coordination of the "stars"
    %{
    starArray = [];
    for index = 1:100
        starArray = [getRandomCoord starArray];
    end

    stars = starArray;
    %}
end

%{
function randomCoords = getRandomCoord()
    import pkg.Coordinates.*;
    x = 179*rand(1,1);
    y = 179*rand(1,1);
    z = 179*rand(1,1);

    randomCoords = Coordinates(x,y,z);
end
%}