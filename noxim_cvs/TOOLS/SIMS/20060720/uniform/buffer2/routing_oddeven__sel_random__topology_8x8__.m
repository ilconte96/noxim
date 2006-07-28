% fname: routing_oddeven__sel_random__topology_8x8__.m
% ./noxim -routing oddeven -sel random -dimx 8 -dimy 8  -sim 10000 -warmup 2000 -size 8 8 -buffer 2 

function [max_pir, max_throughput, min_delay] = routing_oddeven__sel_random__topology_8x8__(symbol)

data = [
%             pir      avg_delay     throughput      max_delay       rpackets         rflits
            0.007        19.5015      0.0558105            100           3573          28575
            0.007        19.7299      0.0550137            111           3521          28167
            0.007         19.097      0.0533906             95           3421          27336
            0.007        19.3018      0.0544199            119           3482          27863
            0.007        19.3807      0.0567734             90           3633          29068
            0.007        19.8302      0.0570547            126           3651          29212
            0.007        19.4064       0.054998            131           3521          28159
            0.007         19.614      0.0542285            135           3469          27765
            0.007        19.3549       0.055457             84           3550          28394
            0.007        20.0161      0.0562129            105           3598          28781
            0.007        19.7996      0.0555664            156           3557          28450
            0.007        19.4828      0.0554102             99           3544          28370
            0.007        19.7922      0.0566191            128           3624          28989
            0.007          19.56      0.0563184            115           3607          28835
            0.007        19.8484      0.0568906            123           3641          29128
            0.007        19.4455      0.0556074            152           3558          28471
            0.007        19.0313      0.0549004             93           3513          28109
            0.007         19.088      0.0552285             96           3534          28277
            0.007        19.1948      0.0565957             96           3624          28977
            0.007        19.7363       0.055209            121           3534          28267
            0.008        21.6852      0.0665156            144           4257          34056
            0.008        21.7233       0.062666            171           4012          32085
            0.008        21.2998      0.0646953            122           4139          33124
            0.008        20.8707        0.06475            135           4146          33152
            0.008        20.9513      0.0628574            113           4021          32183
            0.008        21.6597      0.0626973            164           4011          32101
            0.008        20.5444      0.0649648            114           4159          33262
            0.008        21.7498      0.0645918            115           4137          33071
            0.008        20.8879      0.0635801             97           4069          32553
            0.008        21.6017      0.0627871            134           4017          32147
            0.008        21.2169      0.0624648            118           3997          31982
            0.008        21.6156      0.0646836            159           4142          33118
            0.008         20.692      0.0625938            101           4007          32048
            0.008        21.3104      0.0634141            147           4056          32468
            0.008        20.8866      0.0634688            150           4064          32496
            0.008        20.6423      0.0637461            158           4076          32638
            0.008        21.5363      0.0657363            118           4210          33657
            0.008        21.6228      0.0643789            113           4117          32962
            0.008        21.7233      0.0641406            151           4105          32840
            0.008        21.1506      0.0631113            110           4038          32313
            0.009        24.1449      0.0724219            163           4632          37080
            0.009        23.2015      0.0726445            161           4650          37194
            0.009         25.493      0.0722187            180           4619          36976
            0.009          22.13      0.0689668            226           4415          35311
            0.009        24.9023      0.0723105            176           4626          37023
            0.009        24.3561      0.0717207            166           4591          36721
            0.009        24.0168      0.0736973            123           4715          37733
            0.009        23.5176         0.0725            146           4641          37120
            0.009        24.1584       0.071834            186           4595          36779
            0.009        24.1572      0.0721074            161           4617          36919
            0.009        24.2263      0.0742031            185           4751          37992
            0.009        24.6312      0.0725059            211           4639          37123
            0.009        24.1161      0.0722656            162           4625          37000
            0.009        22.9471       0.071209            140           4558          36459
            0.009        23.7973      0.0705176            170           4513          36105
            0.009        24.1441      0.0713555            169           4565          36534
            0.009        23.1454      0.0719785            176           4608          36853
            0.009         23.181      0.0716855            147           4586          36703
            0.009        23.6257      0.0708906            145           4539          36296
            0.009        22.2951      0.0708437            124           4534          36272
             0.01        27.0168      0.0801895            286           5132          41057
             0.01        27.4049      0.0805547            236           5159          41244
             0.01        27.5629       0.078377            293           5013          40129
             0.01         27.259      0.0803809            155           5146          41155
             0.01        28.7378      0.0810234            207           5184          41484
             0.01        32.3527      0.0811816            439           5197          41565
             0.01        28.8925      0.0811094            215           5191          41528
             0.01        27.7729      0.0792754            212           5077          40589
             0.01        26.6736      0.0793711            188           5080          40638
             0.01        30.0458      0.0821699            273           5257          42071
             0.01        29.8518      0.0807676            334           5169          41353
             0.01         34.643       0.080832            403           5174          41386
             0.01        26.3673      0.0798828            191           5113          40900
             0.01        28.7072       0.081248            261           5201          41599
             0.01        28.7189      0.0816641            183           5226          41812
             0.01        30.6105      0.0804277            265           5145          41179
             0.01        27.1577      0.0800801            238           5124          41001
             0.01        26.4028      0.0798652            192           5112          40891
             0.01         30.428      0.0789336            360           5051          40414
             0.01        24.2799      0.0764121            180           4894          39123
            0.011        40.2811      0.0869199            517           5560          44503
            0.011        33.0384      0.0879961            206           5628          45054
            0.011        34.1448      0.0873437            416           5592          44720
            0.011        36.6543      0.0882715            300           5650          45195
            0.011        30.4859      0.0885937            261           5668          45360
            0.011        33.7376      0.0875371            277           5607          44819
            0.011        41.7763      0.0867676            518           5557          44425
            0.011         40.778       0.087916            476           5626          45013
            0.011        30.9334      0.0883867            246           5657          45254
            0.011        72.6002      0.0886309            937           5673          45379
            0.011        41.2378      0.0864004            686           5534          44237
            0.011        39.9067      0.0862832            577           5521          44177
            0.011        33.2295       0.086918            427           5564          44502
            0.011        34.2039      0.0853789            394           5459          43714
            0.011        33.9569      0.0878301            340           5618          44969
            0.011        32.1738       0.086832            275           5558          44458
            0.011         34.613      0.0894121            219           5723          45779
            0.011        44.4244      0.0886934            607           5678          45411
            0.011        35.7504        0.08725            312           5586          44672
            0.011        39.9993      0.0889199            396           5689          45527
            0.012        284.025      0.0954414           3414           6110          48866
            0.012        80.1834      0.0907598           1269           5808          46469
            0.012        75.5386      0.0930156           1150           5952          47624
            0.012        118.275      0.0974004           1427           6235          49869
            0.012        80.2504      0.0942949           1178           6035          48279
            0.012        82.7456       0.095959           1161           6141          49131
            0.012        80.5257      0.0967324           1231           6192          49527
            0.012        45.6742      0.0958242            583           6132          49062
            0.012        67.7649      0.0945859           1020           6054          48428
            0.012        83.0924      0.0912754           1318           5845          46733
            0.012        53.1982      0.0949004            673           6071          48589
            0.012        59.6242      0.0976504            771           6248          49997
            0.012        122.789      0.0942012           1733           6031          48231
            0.012        245.548       0.098457           2652           6301          50410
            0.012        64.4908      0.0968535            676           6198          49589
            0.012         77.989      0.0941367           1087           6024          48198
            0.012        83.3814      0.0949766           1129           6081          48628
            0.012        102.483      0.0963359           1444           6162          49324
            0.012        83.7427      0.0952656           1364           6097          48776
            0.012        131.266      0.0937324           1963           5995          47991
            0.013        902.057       0.084084           8208           5381          43051
            0.013        333.406      0.0983945           3274           6296          50378
            0.013        347.825      0.0924082           5535           5912          47313
            0.013        457.038       0.081709           6858           5232          41835
            0.013        548.107      0.0868613           7037           5559          44473
            0.013        105.666      0.0980801           1537           6274          50217
            0.013         295.73      0.0964141           3616           6168          49364
            0.013        526.431       0.088834           6024           5685          45483
            0.013        334.439      0.0981055           5219           6282          50230
            0.013        530.453       0.102061           5535           6533          52255
            0.013        256.486      0.0940176           4233           6021          48137
            0.013        475.547      0.0905625           5771           5792          46368
            0.013        320.284      0.0921602           5317           5894          47186
            0.013        365.237      0.0855918           4840           5476          43823
            0.013        684.811      0.0912852           6327           5845          46738
            0.013         474.06      0.0890664           6290           5699          45602
            0.013        419.524      0.0928984           4863           5945          47564
            0.013        585.461       0.092002           5699           5889          47105
            0.013        590.444      0.0835625           6885           5350          42784
            0.013        717.503      0.0941914           6167           6027          48226
            0.014        601.951       0.085127           7138           5445          43585
            0.014        767.479      0.0789551           8080           5054          40425
            0.014        660.657      0.0793457           7813           5078          40625
            0.014        614.101      0.0886699           7347           5673          45399
            0.014        672.478      0.0850527           7328           5448          43547
            0.014        628.127      0.0835801           6896           5348          42793
            0.014         909.74      0.0839063           7900           5367          42960
            0.014        631.069      0.0835039           7458           5344          42754
            0.014         802.04      0.0824434           8517           5278          42211
            0.014        794.068      0.0797949           7565           5107          40855
            0.014        729.987      0.0788457           7726           5047          40369
            0.014        525.731      0.0931934           6679           5967          47715
            0.014        735.908      0.0857969           7190           5489          43928
            0.014        764.167      0.0846113           7610           5414          43321
            0.014        646.412      0.0803633           7537           5147          41146
            0.014        646.005      0.0811367           7760           5194          41542
            0.014        575.686      0.0838086           6798           5362          42910
            0.014        843.334      0.0812363           7285           5196          41593
            0.014        803.041      0.0846016           7750           5414          43316
            0.014        517.684      0.0869668           7608           5565          44527
            0.015        1051.16      0.0796836           8524           5101          40798
            0.015        1062.73      0.0735391           8821           4703          37652
            0.015         679.94      0.0835742           7987           5351          42790
            0.015         949.59      0.0778379           7818           4980          39853
            0.015        963.349      0.0754219           8117           4822          38616
            0.015        873.028      0.0784629           8016           5018          40173
            0.015        1064.64      0.0777266           8708           4977          39796
            0.015        1242.59      0.0775176           8407           4962          39689
            0.015        1096.38      0.0762109           8174           4881          39020
            0.015        948.139      0.0808066           8232           5173          41373
            0.015        867.387      0.0779531           8855           4986          39912
            0.015        737.771      0.0814434           8488           5214          41699
            0.015        1306.93      0.0758301           9061           4850          38825
            0.015        929.566      0.0806406           8586           5159          41288
            0.015        997.756      0.0809297           8205           5182          41436
            0.015         915.43      0.0781484           7850           4999          40012
            0.015        1132.68      0.0745332           9505           4769          38161
            0.015        677.231       0.083082           7581           5315          42538
            0.015        1005.32      0.0801152           8596           5128          41019
            0.015         773.93      0.0817637           7970           5232          41863
            0.016        1090.45      0.0786133           8295           5031          40250
            0.016        949.045      0.0771797           8657           4937          39516
            0.016        1122.51      0.0806484           8959           5159          41292
            0.016        1162.98      0.0780723           8916           4998          39973
            0.016        1053.33      0.0791074           8685           5065          40503
            0.016        1106.38      0.0798301           8889           5111          40873
            0.016        1036.87      0.0805859           8506           5159          41260
            0.016        1123.94      0.0739648           8192           4730          37870
            0.016         1160.7      0.0804746           8179           5154          41203
            0.016         1036.5      0.0797266           8488           5101          40820
            0.016        1184.79      0.0743672           8987           4765          38076
            0.016        1114.05      0.0768672           8693           4915          39356
            0.016        1158.55      0.0778652           8883           4981          39867
            0.016        1282.26      0.0745938           8997           4773          38192
            0.016        1063.23      0.0744316           8896           4760          38109
            0.016        1013.23      0.0778809           8923           4985          39875
            0.016        998.255       0.078707           8528           5039          40298
            0.016        1176.97      0.0788848           8886           5048          40389
            0.016        1259.51      0.0760996           8665           4869          38963
            0.016        1158.78      0.0761309           8938           4870          38979
];

rows = size(data, 1);
cols = size(data, 2);

data_delay = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+1);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_delay = [data_delay; data(ifirst, 1:cols-5), avg ci];
end

figure(1);
hold on;
plot(data_delay(:,1), data_delay(:,2), symbol);

data_throughput = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+2);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_throughput = [data_throughput; data(ifirst, 1:cols-5), avg ci];
end

figure(2);
hold on;
plot(data_throughput(:,1), data_throughput(:,2), symbol);

data_maxdelay = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+3);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_maxdelay = [data_maxdelay; data(ifirst, 1:cols-5), avg ci];
end

figure(3);
hold on;
plot(data_maxdelay(:,1), data_maxdelay(:,2), symbol);


%-------- Saturation Analysis -----------
slope=[];
for i=2:size(data_throughput,1),
    slope(i-1) = (data_throughput(i,2)-data_throughput(i-1,2))/(data_throughput(i,1)-data_throughput(i-1,1));
end

for i=2:size(slope,2),
    if slope(i) < (0.95*mean(slope(1:i)))
        max_pir = data_throughput(i, 1);
        max_throughput = data_throughput(i, 2);
        min_delay = data_delay(i, 2);
        break;
    end
end