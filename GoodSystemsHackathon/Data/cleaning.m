% CLEAR WORKSPACE EACH TIME BEFORE RUNNING
clear all

%% Load Preimported Water Data File and Covert to Timetable
    load('waterdata.mat');
    wat = table2timetable(waterdata);
    datetime(wat.hourly_time,'InputFormat','dd-MMM-yyyy HH:mm');

%% Load Preimported Electricity Data and Covert to Timetable
    load('electricitydata.mat');
    electricitydata.Properties.VariableNames([1]) = {'time'};
    elec = table2timetable(electricitydata);
    datetime(elec.time,'InputFormat','dd-MMM-yyyy HH:mm');
    
%% Load Preimported Weather Data and Covert to Timetable    
    load('weatherdata.mat');
    weth = table2timetable(weatherdata);
    datetime(weth.localhour,'InputFormat','dd-MMM-yyyy HH:mm');
    
    
%%
    weth(weth.latitude > 31,:)=[];
    weth.latitude(isnan(weth.latitude))=0;
    weth(weth.latitude < 30,:)=[];
    weth(:,5) = [];
    weth(:,5) = [];
    weth(:,6) = [];
    weth(:,7) = [];
    weth(:,8) = [];
    weth(:,9) = [];
    weth(:,9) = [];
    weth(:,9) = [];
    weth(:,10) = [];
    weth(:,11) = [];
    weth(:,12) = [];
    weth(:,13) = [];
    weth(:,14) = [];
    weth(:,14) = [];
    weth(:,13) = [];
    weth(:,13) = [];
    weth(:,13) = [];
    
%% Initializing and Connecting Variables
    writetimetable(weth,'test.xlsx')