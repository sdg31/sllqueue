clc;
clear all;
close all;

format shorte;

shell = [4649493 3770122 3469847 3389201 3475271 3381943 3480179 3321800 3387028 3307892 3550493 3535334 3367803 3426443 4035629 4330597 3378585 3410935 3280477 3491300 3371356 3383910 3603967 3375127 3330888 6841974 3395152 3364291 3352529 3374887 3402438 3532589 3548839 3369711 3644168 3447306 3524686 3455413 3237311 3446427 3319873 3483070 3341518 3411944 3333715 3508989 3497366 3586076 3433962 3330572 3407279 3386102 3506683 3352902 3599398 3371089 3386241 3427680 3587215 7425555 3402183 3352519 3376435 3324452 3322069 3337297 3461042 3324489 3463005 3359159 3338914 3401168 3430984 3432240 3354508 3529637 3457093 3504685 3514225 3469163 3440759 3439390 3387382 3361341 3376204 3384073 3324284 3378690 3399693 3505963 3424204 3958184 4070503 3830746 3630228 3459867 3405880 3348728 3342232 3377923 ];
bubble = [527980299 525360538 521327441 521393322 558238022 520837052 522060072 521127245 535368430 524270526 519085281 528182951 527403479 531282360 626790390 604221243 526019978 546783247 515134353 531214638 522129449 525141245 542221622 520016052 527458233 517994789 530537004 521789599 527285364 521526344 524632757 525895044 523435976 512971218 522289889 515238010 520898327 515219746 520735231 534408667 521376738 514128788 519393700 522324732 528773597 530191346 519227607 522828620 521121695 525233680 520093316 521136280 535335225 518346164 524190085 518889776 520710605 526522036 514796881 520904733 524144573 515951839 526689558 515412398 519452461 524158470 520929154 525079312 519886814 521837229 526805819 528174053 520654247 522469988 521263570 524970283 517437737 527551793 520263582 527226933 513723848 527650708 521542222 520497150 521058291 519113046 540224965 524419050 519978769 520785150 535637460 635641986 580178895 518581891 522939116 521055112 530000741 519449671 531059961 559705980 ];
insertion = [258433982 244810297 259619804 249362138 248526839 246576192 248857817 248370363 250922546 247831738 253209099 248037444 248595121 273512246 300786281 246516828 261304578 247228548 245627669 247945934 250120797 251321495 247796074 256363429 251407460 246742169 247008005 254441598 256497514 249410203 262191316 250096054 247886418 248019085 247550655 246478423 244276159 247668870 246119412 247441590 247556840 255544893 246720154 247127659 251200677 262024183 253747558 248362441 247399273 256287669 247871018 249422232 257136304 247434857 253782923 246830068 247157776 244096187 248336924 246310064 248704563 250453232 248444791 249134713 246921122 249904510 248087297 248996804 250016198 256136542 249400936 249038498 249903237 253296467 248632697 254550940 245847131 249115481 248409416 246974454 245322695 248011666 257073444 246342586 249174965 248557144 252013688 256886414 252523872 246850361 295117846 305296857 253338915 251967479 245593115 246428809 251999346 253638462 255263637 259104679 ];

figure(1);
subplot(2, 2, 1);
histogram(shell);
hold on;
shell_mean = mean(shell)
plot([shell_mean,shell_mean],ylim,'r--','LineWidth',2);
hold off;
title('Shell Sort');
xlabel('Run Time (ns)');
ylabel('Number of Sorts');

subplot(2, 2, 2);
histogram(bubble);
hold on;
bubble_mean = mean(bubble)
plot([bubble_mean,bubble_mean],ylim,'r--','LineWidth',2);
hold off;
title('Bubble Sort');
xlabel('Run Time (ns)');
ylabel('Number of Sorts');

subplot(2, 2, 3);
histogram(insertion);
hold on;
insertion_mean = mean(insertion)
plot([insertion_mean,insertion_mean],ylim,'r--','LineWidth',2);
hold off;
title('Insertion Sort');
xlabel('Run Time (ns)');
ylabel('Number of Sorts');

subplot(2, 2, 4);
histogram(shell);
hold on;
histogram(bubble);
histogram(insertion);
title('Comparison');
legend('shell', 'bubble', 'insertion');
xlabel('Run Time (ns)');
ylabel('Number of Sorts');

x = 100:100:10000;
shell = [23978 53658 86544 144908 139887 125171 155919 195530 234725 243273 496744 282226 330800 372893 387201 426774 712190 494525 485922 515332 548892 557775 582595 614309 653844 723826 726062 1091768 761779 871957 981628 930846 895888 949359 951152 1084716 1013340 1060252 1088047 1118668 2616103 1546970 1208147 1250942 1407110 1450184 1338354 2751355 2111601 2690235 1495486 1644210 1592642 1737024 1748328 1804653 1768710 1869664 1812500 1820507 1828754 2145513 1995232 2296076 2033519 2094389 2068911 2293495 2214638 2423991 2433380 2435624 2326208 2372776 2316116 2428420 2497695 2539346 2730115 2637765 2668591 4232283 2961528 2842819 2844593 2772476 2865835 2801269 2936419 2843363 3149931 3109054 3401967 3138671 3194772 3440810 3228005 3269406 3292285 3409112 ];
bubble = [85038 319191 719049 1417482 1803179 1728336 2201903 2879609 3605736 6332130 7438279 6549355 7711620 15104622 12775113 11692161 15309019 19690093 16738833 25617641 20543533 23924680 24870902 33235818 29986073 32336641 34794366 41927059 47923624 45027568 52210767 56791397 53334957 63392955 60208239 70332689 71188300 77576417 81864116 84719161 111540686 115553310 92564684 124366823 123720894 149216741 146844910 158359690 153947755 133873436 135054368 147952327 190441556 210051622 199844408 164346573 209223619 202238448 228070345 187372923 194682904 192864141 206321739 212489360 218796229 228101121 296429755 247473933 332434507 326019096 331700889 269641482 277499618 291991701 292407885 301111825 301924344 316510149 321473245 335309743 342359700 345448524 373699196 370451930 377292635 385730263 398789448 403024197 406708367 424980304 432963625 434702574 456569994 465178781 471230656 484351619 496604508 507317367 518684559 528976741 ];
insertion = [49382 161504 493401 574338 731040 913530 1214990 1649764 1997886 5401506 3091622 4140099 4021610 5485648 8504148 11891748 7148100 9966826 8948010 9825983 10968205 11999768 13731595 24172033 16539818 22365098 23696640 21065890 22375228 21705028 24184831 24638132 27847907 28661816 30124804 32425042 32502822 35953819 37934946 38918270 55046193 54700731 53496483 71391964 51786999 86189587 76265209 77628414 82892899 62175027 64915779 87386139 102673488 107619132 85925316 78704667 112428039 83308489 85489865 89933817 92442342 93384157 97443113 99763164 110916134 107936548 161478468 128970333 139855276 164310164 122869272 129910185 130897409 137314314 139037325 142705495 145097551 149195888 173558537 156111148 162259247 164747435 167325079 177524953 175295319 183748172 186462733 190802181 194911642 200342821 210329724 210136420 215330133 223606967 220126037 228898772 229828337 234266377 240260478 254554446 ];

figure(2);
plot(x, shell, x, bubble, x, insertion);
title('Comparison');
legend('shell', 'bubble', 'insertion');
xlabel('Number of Elements Sorted');
ylabel('Run Time (ns)');