clc;
clear;

clc;
clear;

SolarData = readmatrix("Merced_SAM_result.csv");
ModuleTemp = SolarData(1:8760,15);

timestep = 3600*[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24];

%Split the data into the different seasons
Spring = ModuleTemp(1897:4080,:);
Summer = ModuleTemp(4081:6336,:);
Autumn = ModuleTemp(6337:8520,:);
Winter = ModuleTemp([1:1896 8521:8760],:);

%Calculating the Average Spring Day
SP12AM = mean(Spring(1:24:end,:));
SP1AM  = mean(Spring(2:24:end,:));
SP2AM  = mean(Spring(3:24:end,:));
SP3AM  = mean(Spring(4:24:end,:));
SP4AM  = mean(Spring(5:24:end,:));
SP5AM  = mean(Spring(6:24:end,:));
SP6AM  = mean(Spring(7:24:end,:));
SP7AM  = mean(Spring(8:24:end,:));
SP8AM  = mean(Spring(9:24:end,:));
SP9AM  = mean(Spring(10:24:end,:));
SP10AM = mean(Spring(11:24:end,:));
SP11AM = mean(Spring(12:24:end,:));
SP12PM = mean(Spring(13:24:end,:));
SP1PM  = mean(Spring(14:24:end,:));
SP2PM  = mean(Spring(15:24:end,:));
SP3PM  = mean(Spring(16:24:end,:));
SP4PM  = mean(Spring(17:24:end,:));
SP5PM  = mean(Spring(18:24:end,:));
SP6PM  = mean(Spring(19:24:end,:));
SP7PM  = mean(Spring(20:24:end,:));
SP8PM  = mean(Spring(21:24:end,:));
SP9PM  = mean(Spring(22:24:end,:));
SP10PM = mean(Spring(23:24:end,:));
SP11PM = mean(Spring(24:24:end,:));

AverageSpringDayTemp = [SP12AM; 
                    SP1AM; 
                    SP2AM; 
                    SP3AM; 
                    SP4AM; 
                    SP5AM; 
                    SP6AM; 
                    SP7AM; 
                    SP8AM; 
                    SP9AM; 
                    SP10AM; 
                    SP11AM; 
                    SP12PM; 
                    SP1PM; 
                    SP2PM; 
                    SP3PM; 
                    SP4PM; 
                    SP5PM; 
                    SP6PM; 
                    SP7PM; 
                    SP8PM; 
                    SP9PM; 
                    SP10PM; 
                    SP11PM];


AverageSpringDay = [timestep,AverageSpringDayTemp];
writematrix(AverageSpringDay,'Spring_Average_Temp.txt');

%%

%Calculating the average Summer Day
S12AM = mean(Summer(1:24:end,:));
S1AM  = mean(Summer(2:24:end,:));
S2AM  = mean(Summer(3:24:end,:));
S3AM  = mean(Summer(4:24:end,:));
S4AM  = mean(Summer(5:24:end,:));
S5AM  = mean(Summer(6:24:end,:));
S6AM  = mean(Summer(7:24:end,:));
S7AM  = mean(Summer(8:24:end,:));
S8AM  = mean(Summer(9:24:end,:));
S9AM  = mean(Summer(10:24:end,:));
S10AM = mean(Summer(11:24:end,:));
S11AM = mean(Summer(12:24:end,:));
S12PM = mean(Summer(13:24:end,:));
S1PM  = mean(Summer(14:24:end,:));
S2PM  = mean(Summer(15:24:end,:));
S3PM  = mean(Summer(16:24:end,:));
S4PM  = mean(Summer(17:24:end,:));
S5PM  = mean(Summer(18:24:end,:));
S6PM  = mean(Summer(19:24:end,:));
S7PM  = mean(Summer(20:24:end,:));
S8PM  = mean(Summer(21:24:end,:));
S9PM  = mean(Summer(22:24:end,:));
S10PM = mean(Summer(23:24:end,:));
S11PM = mean(Summer(24:24:end,:));

AverageSummerDayTemp = [S12AM; 
                    S1AM; 
                    S2AM; 
                    S3AM; 
                    S4AM; 
                    S5AM; 
                    S6AM; 
                    S7AM; 
                    S8AM; 
                    S9AM; 
                    S10AM; 
                    S11AM; 
                    S12PM; 
                    S1PM; 
                    S2PM; 
                    S3PM; 
                    S4PM; 
                    S5PM; 
                    S6PM; 
                    S7PM; 
                    S8PM; 
                    S9PM; 
                    S10PM; 
                    S11PM];

AverageSummerDay = [timestep,AverageSummerDayTemp];
writematrix(AverageSummerDay,'Summer_Average_Temp.txt');

%%

%Calculating the average Autumn Day
A12AM = mean(Autumn(1:24:end,:));
A1AM  = mean(Autumn(2:24:end,:));
A2AM  = mean(Autumn(3:24:end,:));
A3AM  = mean(Autumn(4:24:end,:));
A4AM  = mean(Autumn(5:24:end,:));
A5AM  = mean(Autumn(6:24:end,:));
A6AM  = mean(Autumn(7:24:end,:));
A7AM  = mean(Autumn(8:24:end,:));
A8AM  = mean(Autumn(9:24:end,:));
A9AM  = mean(Autumn(10:24:end,:));
A10AM = mean(Autumn(11:24:end,:));
A11AM = mean(Autumn(12:24:end,:));
A12PM = mean(Autumn(13:24:end,:));
A1PM  = mean(Autumn(14:24:end,:));
A2PM  = mean(Autumn(15:24:end,:));
A3PM  = mean(Autumn(16:24:end,:));
A4PM  = mean(Autumn(17:24:end,:));
A5PM  = mean(Autumn(18:24:end,:));
A6PM  = mean(Autumn(19:24:end,:));
A7PM  = mean(Autumn(20:24:end,:));
A8PM  = mean(Autumn(21:24:end,:));
A9PM  = mean(Autumn(22:24:end,:));
A10PM = mean(Autumn(23:24:end,:));
A11PM = mean(Autumn(24:24:end,:));

AverageAutumnDayTemp = [A12AM; 
                    A1AM; 
                    A2AM; 
                    A3AM; 
                    A4AM; 
                    A5AM; 
                    A6AM; 
                    A7AM; 
                    A8AM; 
                    A9AM; 
                    A10AM; 
                    A11AM; 
                    A12PM; 
                    A1PM; 
                    A2PM; 
                    A3PM; 
                    A4PM; 
                    A5PM; 
                    A6PM; 
                    A7PM; 
                    A8PM; 
                    A9PM; 
                    A10PM; 
                    A11PM];

AverageAutumnDay = [timestep,AverageAutumnDayTemp];
writematrix(AverageAutumnDay,'Autumn_Average_Temp.txt');

%%

%Calculating the average Winter Day
W12AM = mean(Winter(1:24:end,:));
W1AM  = mean(Winter(2:24:end,:));
W2AM  = mean(Winter(3:24:end,:));
W3AM  = mean(Winter(4:24:end,:));
W4AM  = mean(Winter(5:24:end,:));
W5AM  = mean(Winter(6:24:end,:));
W6AM  = mean(Winter(7:24:end,:));
W7AM  = mean(Winter(8:24:end,:));
W8AM  = mean(Winter(9:24:end,:));
W9AM  = mean(Winter(10:24:end,:));
W10AM = mean(Winter(11:24:end,:));
W11AM = mean(Winter(12:24:end,:));
W12PM = mean(Winter(13:24:end,:));
W1PM  = mean(Winter(14:24:end,:));
W2PM  = mean(Winter(15:24:end,:));
W3PM  = mean(Winter(16:24:end,:));
W4PM  = mean(Winter(17:24:end,:));
W5PM  = mean(Winter(18:24:end,:));
W6PM  = mean(Winter(19:24:end,:));
W7PM  = mean(Winter(20:24:end,:));
W8PM  = mean(Winter(21:24:end,:));
W9PM  = mean(Winter(22:24:end,:));
W10PM = mean(Winter(23:24:end,:));
W11PM = mean(Winter(24:24:end,:));

AverageWinterDayTemp = [W12AM; 
                    W1AM; 
                    W2AM; 
                    W3AM; 
                    W4AM; 
                    W5AM; 
                    W6AM; 
                    W7AM; 
                    W8AM; 
                    W9AM; 
                    W10AM; 
                    W11AM; 
                    W12PM; 
                    W1PM; 
                    W2PM; 
                    W3PM; 
                    W4PM; 
                    W5PM; 
                    W6PM; 
                    W7PM; 
                    W8PM; 
                    W9PM; 
                    W10PM; 
                    W11PM];

AverageWinterDay = [timestep,AverageWinterDayTemp];
writematrix(AverageWinterDay,'Winter_Average_Temp.txt');

%%

%Calculating the Maximum Summer Day
MS12AM = max(Summer(1:24:end,:));
MS1AM  = max(Summer(2:24:end,:));
MS2AM  = max(Summer(3:24:end,:));
MS3AM  = max(Summer(4:24:end,:));
MS4AM  = max(Summer(5:24:end,:));
MS5AM  = max(Summer(6:24:end,:));
MS6AM  = max(Summer(7:24:end,:));
MS7AM  = max(Summer(8:24:end,:));
MS8AM  = max(Summer(9:24:end,:));
MS9AM  = max(Summer(10:24:end,:));
MS10AM = max(Summer(11:24:end,:));
MS11AM = max(Summer(12:24:end,:));
MS12PM = max(Summer(13:24:end,:));
MS1PM  = max(Summer(14:24:end,:));
MS2PM  = max(Summer(15:24:end,:));
MS3PM  = max(Summer(16:24:end,:));
MS4PM  = max(Summer(17:24:end,:));
MS5PM  = max(Summer(18:24:end,:));
MS6PM  = max(Summer(19:24:end,:));
MS7PM  = max(Summer(20:24:end,:));
MS8PM  = max(Summer(21:24:end,:));
MS9PM  = max(Summer(22:24:end,:));
MS10PM = max(Summer(23:24:end,:));
MS11PM = max(Summer(24:24:end,:));

MaxSummerDayTemp = [MS12AM; 
                    MS1AM; 
                    MS2AM; 
                    MS3AM; 
                    MS4AM; 
                    MS5AM; 
                    MS6AM; 
                    MS7AM; 
                    MS8AM; 
                    MS9AM; 
                    MS10AM; 
                    MS11AM; 
                    MS12PM; 
                    MS1PM; 
                    MS2PM; 
                    MS3PM; 
                    MS4PM; 
                    MS5PM; 
                    MS6PM; 
                    MS7PM; 
                    MS8PM; 
                    MS9PM; 
                    MS10PM; 
                    MS11PM];

MaxSummerDay = [timestep,MaxSummerDayTemp];
writematrix(MaxSummerDay,'Summer_Maximum_Temp.txt');

%%

%Calculating the Minimum Winter Day
MW12AM = min(Winter(1:24:end,:));
MW1AM  = min(Winter(2:24:end,:));
MW2AM  = min(Winter(3:24:end,:));
MW3AM  = min(Winter(4:24:end,:));
MW4AM  = min(Winter(5:24:end,:));
MW5AM  = min(Winter(6:24:end,:));
MW6AM  = min(Winter(7:24:end,:));
MW7AM  = min(Winter(8:24:end,:));
MW8AM  = min(Winter(9:24:end,:));
MW9AM  = min(Winter(10:24:end,:));
MW10AM = min(Winter(11:24:end,:));
MW11AM = min(Winter(12:24:end,:));
MW12PM = min(Winter(13:24:end,:));
MW1PM  = min(Winter(14:24:end,:));
MW2PM  = min(Winter(15:24:end,:));
MW3PM  = min(Winter(16:24:end,:));
MW4PM  = min(Winter(17:24:end,:));
MW5PM  = min(Winter(18:24:end,:));
MW6PM  = min(Winter(19:24:end,:));
MW7PM  = min(Winter(20:24:end,:));
MW8PM  = min(Winter(21:24:end,:));
MW9PM  = min(Winter(22:24:end,:));
MW10PM = min(Winter(23:24:end,:));
MW11PM = min(Winter(24:24:end,:));

MinimumWinterDayTemp = [MW12AM; 
                    MW1AM; 
                    MW2AM; 
                    MW3AM; 
                    MW4AM; 
                    MW5AM; 
                    MW6AM; 
                    MW7AM; 
                    MW8AM; 
                    MW9AM; 
                    MW10AM; 
                    MW11AM; 
                    MW12PM; 
                    MW1PM; 
                    MW2PM; 
                    MW3PM; 
                    MW4PM; 
                    MW5PM; 
                    MW6PM; 
                    MW7PM; 
                    MW8PM; 
                    MW9PM; 
                    MW10PM; 
                    MW11PM];

MinWinterDay = [timestep,MinimumWinterDayTemp];
writematrix(MinWinterDay,'Winter_Minumum_Temp.txt');
