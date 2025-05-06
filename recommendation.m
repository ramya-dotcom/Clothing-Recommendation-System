% Create and evaluate the fuzzy system
function result = recommendation(temperature, windspeed, humidity, rainprob)

    fis = readfis('mamdanitype_TG.fis');
    output = evalfis(fis, [temperature, windspeed, humidity, rainprob]);

% Convert numeric output to linguistic terms
%funtion category = interpretOutput(output)
    if output <= 0.6
        category = "Cold Wear";
    elseif output <= 1.2
        category = "Rain Wear";
    elseif output <= 2.2
        category = "Normal Wear";
    else
        category = "Warm Wear";
    end

% Get the clothing recommendation
    % clothing = interpretOutput(output);
    disp(['Recommend clothing: ', category]);
    result = output; %category;
end