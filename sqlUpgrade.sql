
-- Modifications des données de la bdd d'une version à la suivante

-- 1.0.0. to 2.0.0
UPDATE forms SET yamlStructure='global:\r\n  formClass: \'newCS\' \r\nstructure:\r\n####### INTRODUCTION ######\r\n  row1:\r\n    head: \'Diagnostic\'\r\n    col1:                              \r\n      size: 12\r\n      bloc:                          \r\n        - 504,nolabel                 # Diagnostic\r\n  row2:                              \r\n    head: \'Évolution & Symptômes\'\r\n    col1:                              \r\n      size: 12\r\n      bloc:                          \r\n        - 498,nolabel,rows=4          # Évolution & Symptômes\r\n  row3:\r\n    class: \'chiroVArray\'\r\n    col1:                              \r\n      size: 12\r\n      bloc:\r\n        - template{chiroConsult}\r\n        - 507,nolabel\r\n        - 508,nolabel\r\n        - 509,nolabel\r\n        - 510,nolabel\r\n        - 511,nolabel\r\n        - 512,nolabel\r\n        - 513,nolabel\r\n        - 514,nolabel\r\n        - 515,nolabel\r\n        - 516,nolabel\r\n        - 517,nolabel\r\n        - 518,nolabel\r\n        - 519,nolabel\r\n        - 520,nolabel\r\n        - 521,nolabel\r\n        - 522,nolabel\r\n        - 523,nolabel\r\n        - 524,nolabel\r\n        - 525,nolabel\r\n        - 526,nolabel\r\n        - 527,nolabel\r\n        - 528,nolabel\r\n        - 529,nolabel\r\n        - 530,nolabel\r\n        - 531,nolabel\r\n        - 532,nolabel\r\n        - 533,nolabel\r\n        - 534,nolabel\r\n        - 535,nolabel\r\n        - 536,nolabel\r\n        - 537,nolabel\r\n        - 538,nolabel\r\n        - 539,nolabel\r\n        - 540,nolabel\r\n        - 541,nolabel\r\n        - 542,nolabel\r\n        - 543,nolabel\r\n        - 544,nolabel\r\n        - 545,nolabel\r\n        - 546,nolabel\r\n        - 547,nolabel\r\n        - 548,nolabel\r\n        - 549,nolabel\r\n        - 550,nolabel\r\n        - 551,nolabel\r\n        - 552,nolabel\r\n        - 553,nolabel\r\n        - 554,nolabel\r\n        - 555,nolabel\r\n        - 556,nolabel\r\n        - 584,nolabel\r\n        - 585,nolabel\r\n        - 586,nolabel\r\n        - 587,nolabel\r\n        - 588,nolabel\r\n        - 589,nolabel\r\n        - 590,nolabel\r\n        - 591,nolabel\r\n        - 592,nolabel\r\n        - 593,nolabel\r\n        - 594,nolabel\r\n        - 595,nolabel\r\n        - 596,nolabel\r\n        - 597,nolabel\r\n        - 598,nolabel\r\n        - 599,nolabel\r\n        - 600,nolabel\r\n        - 601,nolabel\r\n        - 602,nolabel\r\n        - 603,nolabel\r\n        - 604,nolabel\r\n        - 605,nolabel\r\n        - 606,nolabel\r\n        - 607,nolabel\r\n        - 608,nolabel\r\n        - 609,nolabel\r\n        - 610,nolabel\r\n        - 611,nolabel\r\n        - 612,nolabel\r\n        - 613,nolabel\r\n        - 614,nolabel\r\n        - 615,nolabel\r\n        - 616,nolabel\r\n        - 617,nolabel\r\n        - 618,nolabel\r\n        - 619,nolabel\r\n        - 620,nolabel\r\n        - 621,nolabel\r\n        - 622,nolabel\r\n        - 623,nolabel\r\n        - 624,nolabel\r\n        - 625,nolabel\r\n        - 626,nolabel\r\n        - 627,nolabel\r\n        - 628,nolabel\r\n        - 629,nolabel\r\n        - 630,nolabel\r\n        - 631,nolabel\r\n        - 632,nolabel\r\n        - 633,nolabel\r\n        - 634,nolabel\r\n        - 635,nolabel\r\n        - 636,nolabel\r\n        - 637,nolabel\r\n        - 638,nolabel\r\n        - 639,nolabel\r\n        - 640,nolabel\r\n        - 641,nolabel\r\n        - 642,nolabel\r\n        - 643,nolabel\r\n        - 644,nolabel\r\n        - 645,nolabel\r\n        - 646,nolabel\r\n        - 647,nolabel\r\n        - 648,nolabel\r\n        - 649,nolabel\r\n        - 650,nolabel\r\n        - 651,nolabel\r\n        - 652,nolabel\r\n        - 653,nolabel\r\n        - 654,nolabel\r\n        - 655,nolabel\r\n        - 656,nolabel\r\n        - 657,nolabel\r\n        - 658,nolabel\r\n        - 659,nolabel\r\n        - 660,nolabel\r\n        - 661,nolabel\r\n        - 662,nolabel\r\n        - 663,nolabel\r\n        - 664,nolabel\r\n        - 665,nolabel\r\n        - 666,nolabel\r\n        - 667,nolabel\r\n        - 668,nolabel\r\n        - 669,nolabel\r\n        - 670,nolabel\r\n        - 671,nolabel\r\n        - 672,nolabel\r\n        - 673,nolabel\r\n        - 674,nolabel\r\n        - 675,nolabel\r\n        - 676,nolabel\r\n        - 677,nolabel\r\n        - 678,nolabel\r\n        - 679,nolabel\r\n        - 680,nolabel\r\n        - 681,nolabel\r\n        - 682,nolabel\r\n        - 683,nolabel\r\n        - 684,nolabel\r\n        - 685,nolabel\r\n        - 686,nolabel\r\n        - 687,nolabel\r\n        - 688,nolabel\r\n        - 689,nolabel\r\n        - 690,nolabel\r\n        - 691,nolabel\r\n        - 692,nolabel\r\n        - 693,nolabel\r\n        - 694,nolabel\r\n        - 695,nolabel\r\n        - 696,nolabel\r\n        - 697,nolabel\r\n        - 698,nolabel\r\n        - 699,nolabel\r\n        - 700,nolabel\r\n        - 701,nolabel\r\n        - 702,nolabel\r\n        - 703,nolabel\r\n        - 704,nolabel\r\n        - 705,nolabel\r\n        - 706,nolabel\r\n        - 707,nolabel\r\n        - 708,nolabel\r\n        - 709,nolabel\r\n        - 710,nolabel\r\n        - 711,nolabel\r\n        - 712,nolabel\r\n        - 713,nolabel\r\n        - 714,nolabel\r\n        - 715,nolabel\r\n        - 716,nolabel\r\n        - 717,nolabel\r\n  row4:\r\n    class: \'chiroTArray\'\r\n    col1:\r\n      size: 6\r\n      bloc:\r\n         - 557\r\n         - 559\r\n         - 561\r\n         - 563\r\n         - 565\r\n         - 583\r\n    col2:\r\n      size: 6\r\n      bloc:\r\n         - 558\r\n         - 560\r\n         - 562\r\n         - 564\r\n         - 566\r\n         - \'SOT\'\r\n         - 568\r\n         - 569\r\n         - 570\r\n  row5:\r\n    col1:\r\n      size: 12\r\n      bloc:\r\n         - 567\r\n  row6:\r\n    col1:\r\n      size: 12\r\n      bloc:\r\n        - 718,nolabel,rows=8',
yamlStructureDefaut='global:\r\n  formClass: \'newCS\' \r\nstructure:\r\n####### INTRODUCTION ######\r\n  row1:\r\n    head: \'Diagnostic\'\r\n    col1:                              \r\n      size: 12\r\n      bloc:                          \r\n        - 504,nolabel                 # Diagnostic\r\n  row2:                              \r\n    head: \'Évolution & Symptômes\'\r\n    col1:                              \r\n      size: 12\r\n      bloc:                          \r\n        - 498,nolabel,rows=4          # Évolution & Symptômes\r\n  row3:\r\n    class: \'chiroVArray\'\r\n    col1:                              \r\n      size: 12\r\n      bloc:\r\n        - template{chiroConsult}\r\n        - 507,nolabel\r\n        - 508,nolabel\r\n        - 509,nolabel\r\n        - 510,nolabel\r\n        - 511,nolabel\r\n        - 512,nolabel\r\n        - 513,nolabel\r\n        - 514,nolabel\r\n        - 515,nolabel\r\n        - 516,nolabel\r\n        - 517,nolabel\r\n        - 518,nolabel\r\n        - 519,nolabel\r\n        - 520,nolabel\r\n        - 521,nolabel\r\n        - 522,nolabel\r\n        - 523,nolabel\r\n        - 524,nolabel\r\n        - 525,nolabel\r\n        - 526,nolabel\r\n        - 527,nolabel\r\n        - 528,nolabel\r\n        - 529,nolabel\r\n        - 530,nolabel\r\n        - 531,nolabel\r\n        - 532,nolabel\r\n        - 533,nolabel\r\n        - 534,nolabel\r\n        - 535,nolabel\r\n        - 536,nolabel\r\n        - 537,nolabel\r\n        - 538,nolabel\r\n        - 539,nolabel\r\n        - 540,nolabel\r\n        - 541,nolabel\r\n        - 542,nolabel\r\n        - 543,nolabel\r\n        - 544,nolabel\r\n        - 545,nolabel\r\n        - 546,nolabel\r\n        - 547,nolabel\r\n        - 548,nolabel\r\n        - 549,nolabel\r\n        - 550,nolabel\r\n        - 551,nolabel\r\n        - 552,nolabel\r\n        - 553,nolabel\r\n        - 554,nolabel\r\n        - 555,nolabel\r\n        - 556,nolabel\r\n        - 584,nolabel\r\n        - 585,nolabel\r\n        - 586,nolabel\r\n        - 587,nolabel\r\n        - 588,nolabel\r\n        - 589,nolabel\r\n        - 590,nolabel\r\n        - 591,nolabel\r\n        - 592,nolabel\r\n        - 593,nolabel\r\n        - 594,nolabel\r\n        - 595,nolabel\r\n        - 596,nolabel\r\n        - 597,nolabel\r\n        - 598,nolabel\r\n        - 599,nolabel\r\n        - 600,nolabel\r\n        - 601,nolabel\r\n        - 602,nolabel\r\n        - 603,nolabel\r\n        - 604,nolabel\r\n        - 605,nolabel\r\n        - 606,nolabel\r\n        - 607,nolabel\r\n        - 608,nolabel\r\n        - 609,nolabel\r\n        - 610,nolabel\r\n        - 611,nolabel\r\n        - 612,nolabel\r\n        - 613,nolabel\r\n        - 614,nolabel\r\n        - 615,nolabel\r\n        - 616,nolabel\r\n        - 617,nolabel\r\n        - 618,nolabel\r\n        - 619,nolabel\r\n        - 620,nolabel\r\n        - 621,nolabel\r\n        - 622,nolabel\r\n        - 623,nolabel\r\n        - 624,nolabel\r\n        - 625,nolabel\r\n        - 626,nolabel\r\n        - 627,nolabel\r\n        - 628,nolabel\r\n        - 629,nolabel\r\n        - 630,nolabel\r\n        - 631,nolabel\r\n        - 632,nolabel\r\n        - 633,nolabel\r\n        - 634,nolabel\r\n        - 635,nolabel\r\n        - 636,nolabel\r\n        - 637,nolabel\r\n        - 638,nolabel\r\n        - 639,nolabel\r\n        - 640,nolabel\r\n        - 641,nolabel\r\n        - 642,nolabel\r\n        - 643,nolabel\r\n        - 644,nolabel\r\n        - 645,nolabel\r\n        - 646,nolabel\r\n        - 647,nolabel\r\n        - 648,nolabel\r\n        - 649,nolabel\r\n        - 650,nolabel\r\n        - 651,nolabel\r\n        - 652,nolabel\r\n        - 653,nolabel\r\n        - 654,nolabel\r\n        - 655,nolabel\r\n        - 656,nolabel\r\n        - 657,nolabel\r\n        - 658,nolabel\r\n        - 659,nolabel\r\n        - 660,nolabel\r\n        - 661,nolabel\r\n        - 662,nolabel\r\n        - 663,nolabel\r\n        - 664,nolabel\r\n        - 665,nolabel\r\n        - 666,nolabel\r\n        - 667,nolabel\r\n        - 668,nolabel\r\n        - 669,nolabel\r\n        - 670,nolabel\r\n        - 671,nolabel\r\n        - 672,nolabel\r\n        - 673,nolabel\r\n        - 674,nolabel\r\n        - 675,nolabel\r\n        - 676,nolabel\r\n        - 677,nolabel\r\n        - 678,nolabel\r\n        - 679,nolabel\r\n        - 680,nolabel\r\n        - 681,nolabel\r\n        - 682,nolabel\r\n        - 683,nolabel\r\n        - 684,nolabel\r\n        - 685,nolabel\r\n        - 686,nolabel\r\n        - 687,nolabel\r\n        - 688,nolabel\r\n        - 689,nolabel\r\n        - 690,nolabel\r\n        - 691,nolabel\r\n        - 692,nolabel\r\n        - 693,nolabel\r\n        - 694,nolabel\r\n        - 695,nolabel\r\n        - 696,nolabel\r\n        - 697,nolabel\r\n        - 698,nolabel\r\n        - 699,nolabel\r\n        - 700,nolabel\r\n        - 701,nolabel\r\n        - 702,nolabel\r\n        - 703,nolabel\r\n        - 704,nolabel\r\n        - 705,nolabel\r\n        - 706,nolabel\r\n        - 707,nolabel\r\n        - 708,nolabel\r\n        - 709,nolabel\r\n        - 710,nolabel\r\n        - 711,nolabel\r\n        - 712,nolabel\r\n        - 713,nolabel\r\n        - 714,nolabel\r\n        - 715,nolabel\r\n        - 716,nolabel\r\n        - 717,nolabel\r\n  row4:\r\n    class: \'chiroTArray\'\r\n    col1:\r\n      size: 6\r\n      bloc:\r\n         - 557\r\n         - 559\r\n         - 561\r\n         - 563\r\n         - 565\r\n         - 583\r\n    col2:\r\n      size: 6\r\n      bloc:\r\n         - 558\r\n         - 560\r\n         - 562\r\n         - 564\r\n         - 566\r\n         - \'SOT\'\r\n         - 568\r\n         - 569\r\n         - 570\r\n  row5:\r\n    col1:\r\n      size: 12\r\n      bloc:\r\n         - 567\r\n  row6:\r\n    col1:\r\n      size: 12\r\n      bloc:\r\n        - 718,nolabel,rows=8' WHERE id=10;


UPDATE data_types SET formType='hidden' WHERE (formType='checkbox' and id!='568' and id!='569' and id!='570');

UPDATE  data_types SET name='chiroC0', placeholder='C0', label='C0', description='C0' where id=507;
UPDATE  data_types SET name='chiroC1', placeholder='C1', label='C1', description='C1' where id=508;
UPDATE  data_types SET name='chiroC2', placeholder='C2', label='C2', description='C2' where id=509;
UPDATE  data_types SET name='chiroC3', placeholder='C3', label='C3', description='C3' where id=510;
UPDATE  data_types SET name='chiroC4', placeholder='C4', label='C4', description='C4' where id=511;
UPDATE  data_types SET name='chiroC5', placeholder='C5', label='C5', description='C5' where id=512;
UPDATE  data_types SET name='chiroC6', placeholder='C6', label='C6', description='C6' where id=513;
UPDATE  data_types SET name='chiroC7', placeholder='C7', label='C7', description='C7' where id=514;
UPDATE  data_types SET name='chiroT1', placeholder='T1', label='T1', description='T1' where id=515;
UPDATE  data_types SET name='chiroT2', placeholder='T2', label='T2', description='T2' where id=516;
UPDATE  data_types SET name='chiroT3', placeholder='T3', label='T3', description='T3' where id=517;
UPDATE  data_types SET name='chiroT4', placeholder='T4', label='T4', description='T4' where id=518;
UPDATE  data_types SET name='chiroT5', placeholder='T5', label='T5', description='T5' where id=519;
UPDATE  data_types SET name='chiroT6', placeholder='T6', label='T6', description='T6' where id=520;
UPDATE  data_types SET name='chiroT7', placeholder='T7', label='T7', description='T7' where id=521;
UPDATE  data_types SET name='chiroT8', placeholder='T8', label='T8', description='T8' where id=522;
UPDATE  data_types SET name='chiroT9', placeholder='T9', label='T9', description='T9' where id=523;
UPDATE  data_types SET name='chiroT10', placeholder='T10', label='T10', description= 'T10' where id=524;
UPDATE  data_types SET name='chiroT11', placeholder='T11', label='T11', description= 'T11' where id=525;
UPDATE  data_types SET name='chiroT12', placeholder='T12', label='T12', description= 'T12' where id=526;
UPDATE  data_types SET name='chiroK1_Lt', placeholder='K1 Lt', label='K1 Lt', description= 'K1 Lt' where id=527;
UPDATE  data_types SET name='chiroK1_Rt', placeholder='K1 Rt', label='K1 Rt', description= 'K1 Rt' where id=528;
UPDATE  data_types SET name='chiroK2_Lt', placeholder='K2 Lt', label='K2 Lt', description= 'K2 Lt' where id=529;
UPDATE  data_types SET name='chiroK2_Rt', placeholder='K2 Rt', label='K2 Rt', description= 'K2 Rt' where id=530;
UPDATE  data_types SET name='chiroK3_Lt', placeholder='K3 Lt', label='K3 Lt', description= 'K3 Lt' where id=531;
UPDATE  data_types SET name='chiroK3_Rt', placeholder='K3 Rt', label='K3 Rt', description= 'K3 Rt' where id=532;
UPDATE  data_types SET name='chiroK4_Lt', placeholder='K4 Lt', label='K4 Lt', description= 'K4 Lt' where id=533;
UPDATE  data_types SET name='chiroK4_Rt', placeholder='K4 Rt', label='K4 Rt', description= 'K4 Rt' where id=534;
UPDATE  data_types SET name='chiroK5_Lt', placeholder='K5 Lt', label='K5 Lt', description= 'K5 Lt' where id=535;
UPDATE  data_types SET name='chiroK5_Rt', placeholder='K5 Rt', label='K5 Rt', description= 'K5 Rt' where id=536;
UPDATE  data_types SET name='chiroK6_Lt', placeholder='K6 Lt', label='K6 Lt', description= 'K6 Lt' where id=537;
UPDATE  data_types SET name='chiroK6_Rt', placeholder='K6 Rt', label='K6 Rt', description= 'K6 Rt' where id=538;
UPDATE  data_types SET name='chiroK7_Lt', placeholder='K7 Lt', label='K7 Lt', description= 'K7 Lt' where id=539;
UPDATE  data_types SET name='chiroK7_Rt', placeholder='K7 Rt', label='K7 Rt', description= 'K7 Rt' where id=540;
UPDATE  data_types SET name='chiroK8_Lt', placeholder='K8 Lt', label='K8 Lt', description= 'K8 Lt' where id=541;
UPDATE  data_types SET name='chiroK8_Rt', placeholder='K8 Rt', label='K8 Rt', description= 'K8 Rt' where id=542;
UPDATE  data_types SET name='chiroK9_Lt', placeholder='K9 Lt', label='K9 Lt', description= 'K9 Lt' where id=543;
UPDATE  data_types SET name='chiroK9_Rt', placeholder='K9 Rt', label='K9 Rt', description= 'K9 Rt' where id=544;
UPDATE  data_types SET name='chiroK10_Lt', placeholder='K10 Lt', label='K10 Lt', description= 'K10 Lt' where id=545;
UPDATE  data_types SET name='chiroK10_Rt', placeholder='K10 Rt', label='K10 Rt', description= 'K10 Rt' where id=546;
UPDATE  data_types SET name='chiroK11_Lt', placeholder='K11 Lt', label='K11 Lt', description= 'K11 Lt' where id=547;
UPDATE  data_types SET name='chiroK11_Rt', placeholder='K11 Rt', label='K11 Rt', description= 'K11 Rt' where id=548;
UPDATE  data_types SET name='chiroK12_Lt', placeholder='K12 Lt', label='K12 Lt', description= 'K12 Lt' where id=549;
UPDATE  data_types SET name='chiroK12_Rt', placeholder='K12 Rt', label='K12 Rt', description= 'K12 Rt' where id=550;
UPDATE  data_types SET name='chiroL1', placeholder='L1', label='L1', description= 'L1' where id=551;
UPDATE  data_types SET name='chiroL2', placeholder='L2', label='L2', description= 'L2' where id=552;
UPDATE  data_types SET name='chiroL3', placeholder='L3', label='L3', description= 'L3' where id=553;
UPDATE  data_types SET name='chiroL4', placeholder='L4', label='L4', description= 'L4' where id=554;
UPDATE  data_types SET name='chiroL5', placeholder='L5', label='L5', description= 'L5' where id=555;
UPDATE  data_types SET name='Coccyx', placeholder='Coccyx', label='Coccyx', description= 'Coccyx' where id=556;

INSERT INTO `data_types` (`id`, `groupe`, `name`, `placeholder`, `label`, `description`, `validationRules`, `validationErrorMsg`, `formType`, `formValues`, `type`, `cat`, `fromID`, `creationDate`, `durationLife`, `displayOrder`) VALUES
(584, 'medical','chiroCuneiforme_I_Lt', 'Cunéïforme I Lt', 'Cunéïforme I Lt', 'Cunéïforme I Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(585, 'medical','chiroCuneiforme_I_Rt', 'Cunéïforme I Rt', 'Cunéïforme I Rt', 'Cunéïforme I Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(586, 'medical','chiroCuneiforme_II_Lt', 'Cunéïforme II Lt', 'Cunéïforme II Lt', 'Cunéïforme II Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(587, 'medical','chiroCuneiforme_II_Rt', 'Cunéïforme II Rt', 'Cunéïforme II Rt', 'Cunéïforme II Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(588, 'medical','chiroCuneiforme_III_Lt', 'Cunéïforme III Lt', 'Cunéïforme III Lt', 'Cunéïforme III Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(589, 'medical','chiroCuneiforme_III_Rt', 'Cunéïforme III Rt', 'Cunéïforme III Rt', 'Cunéïforme III Rt', '','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(590, 'medical', 'chiroalcaneum_Lt','Calcanéum Lt','Calcanéum Lt','Calcanéum Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(591, 'medical', 'chiroalcaneum_Rt','Calcanéum Rt','Calcanéum Rt','Calcanéum Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(592, 'medical', 'chiroapitatum_Lt','Capitatum Lt','Capitatum Lt','Capitatum Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(593, 'medical', 'chiroapitatum_Rt','Capitatum Rt','Capitatum Rt','Capitatum Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(594, 'medical', 'chiroCuboide_Lt','Cuboïde Lt','Cuboïde Lt','Cuboïde Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(595, 'medical', 'chiroCuboide_Rt','Cuboïde Rt','Cuboïde Rt','Cuboïde Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(596, 'medical', 'chiroHamatum_Lt','Hamatum Lt','Hamatum Lt','Hamatum Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(597, 'medical', 'chiroHamatum_Rt','Hamatum Rt','Hamatum Rt','Hamatum Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(598, 'medical', 'chiroIlium_Lt','Ilium Lt','Ilium Lt','Ilium Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(599, 'medical', 'chiroIlium_Rt','Ilium Rt','Ilium Rt','Ilium Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(600, 'medical', 'chiroLunatum_Lt','Lunatum Lt','Lunatum Lt','Lunatum Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(601, 'medical', 'chiroLunatum_Rt','Lunatum Rt','Lunatum Rt','Lunatum Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(602, 'medical', 'chiroMetacarpe_I_Lt','Métacarpe I Lt','Métacarpe I Lt','Métacarpe I Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(603, 'medical', 'chiroMetacarpe_I_Rt','Métacarpe I Rt','Métacarpe I Rt','Métacarpe I Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(604, 'medical', 'chiroMetacarpe_II_Lt','Métacarpe II Lt','Métacarpe II Lt','Métacarpe II Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(605, 'medical', 'chiroMetacarpe_II_Rt','Métacarpe II Rt','Métacarpe II Rt','Métacarpe II Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(606, 'medical', 'chiroMetacarpe_III_Lt','Métacarpe III Lt','Métacarpe III Lt','Métacarpe III Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(607, 'medical', 'chiroMetacarpe_III_Rt','Métacarpe III Rt','Métacarpe III Rt','Métacarpe III Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(608, 'medical', 'chiroMetacarpe_IV_Lt','Métacarpe IV Lt','Métacarpe IV Lt','Métacarpe IV Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(609, 'medical', 'chiroMetacarpe_IV_Rt','Métacarpe IV Rt','Métacarpe IV Rt','Métacarpe IV Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(610, 'medical', 'chiroMetacarpe_V_Lt','Métacarpe V Lt','Métacarpe V Lt','Métacarpe V Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(611, 'medical', 'chiroMetacarpe_V_Rt','Métacarpe V Rt','Métacarpe V Rt','Métacarpe V Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(612, 'medical', 'chiroNaviculaire_Lt','Naviculaire Lt','Naviculaire Lt','Naviculaire Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(613, 'medical', 'chiroNaviculaire_Rt','Naviculaire Rt','Naviculaire Rt','Naviculaire Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(614, 'medical', 'chiroP1_I_Lt','P1 I Lt','P1 I Lt','P1 I Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(615, 'medical', 'chiroP1_I_Rt','P1 I Rt','P1 I Rt','P1 I Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(616, 'medical', 'chiroP1_II_Lt','P1 II Lt','P1 II Lt','P1 II Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(617, 'medical', 'chiroP1_II_Rt','P1 II Rt','P1 II Rt','P1 II Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(618, 'medical', 'chiroP1_III_Lt','P1 III Lt','P1 III Lt','P1 III Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(619, 'medical', 'chiroP1_III_Rt','P1 III Rt','P1 III Rt','P1 III Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(620, 'medical', 'chiroP1_IV_Lt','P1 IV Lt','P1 IV Lt','P1 IV Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(621, 'medical', 'chiroP1_IV_Rt','P1 IV Rt','P1 IV Rt','P1 IV Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(622, 'medical', 'chiroP1_V_Lt','P1 V Lt','P1 V Lt','P1 V Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(623, 'medical', 'chiroP1_V_Rt','P1 V Rt','P1 V Rt','P1 V Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(624, 'medical', 'chiroP2_I_Lt','P2 I Lt','P2 I Lt','P2 I Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(625, 'medical', 'chiroP2_I_Rt','P2 I Rt','P2 I Rt','P2 I Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(626, 'medical', 'chiroP2_II_Lt','P2 II Lt','P2 II Lt','P2 II Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(627, 'medical', 'chiroP2_II_Rt','P2 II Rt','P2 II Rt','P2 II Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(628, 'medical', 'chiroP2_III_Lt','P2 III Lt','P2 III Lt','P2 III Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(629, 'medical', 'chiroP2_III_Rt','P2 III Rt','P2 III Rt','P2 III Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(630, 'medical', 'chiroP2_IV_Lt','P2 IV Lt','P2 IV Lt','P2 IV Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(631, 'medical', 'chiroP2_IV_Rt','P2 IV Rt','P2 IV Rt','P2 IV Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(632, 'medical', 'chiroP2_V_Lt','P2 V Lt','P2 V Lt','P2 V Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(633, 'medical', 'chiroP2_V_Rt','P2 V Rt','P2 V Rt','P2 V Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(634, 'medical', 'chiroP3_I_Lt','P3 I Lt','P3 I Lt','P3 I Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(635, 'medical', 'chiroP3_I_Rt','P3 I Rt','P3 I Rt','P3 I Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(636, 'medical', 'chiroP3_II_Lt','P3 II Lt','P3 II Lt','P3 II Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(637, 'medical', 'chiroP3_II_Rt','P3 II Rt','P3 II Rt','P3 II Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(638, 'medical', 'chiroP3_III_Lt','P3 III Lt','P3 III Lt','P3 III Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(639, 'medical', 'chiroP3_III_Rt','P3 III Rt','P3 III Rt','P3 III Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(640, 'medical', 'chiroP3_IV_Lt','P3 IV Lt','P3 IV Lt','P3 IV Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(641, 'medical', 'chiroP3_IV_Rt','P3 IV Rt','P3 IV Rt','P3 IV Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(642, 'medical', 'chiroP3_V_Lt','P3 V Lt','P3 V Lt','P3 V Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(643, 'medical', 'chiroP3_V_Rt','P3 V Rt','P3 V Rt','P3 V Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(644, 'medical', 'chiro_p1_I_Lt','p1 I Lt','p1 I Lt','p1 I Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(645, 'medical', 'chiro_p1_I_Rt','p1 I Rt','p1 I Rt','p1 I Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(646, 'medical', 'chiro_p1_II_Lt','p1 II Lt','p1 II Lt','p1 II Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(647, 'medical', 'chiro_p1_II_Rt','p1 II Rt','p1 II Rt','p1 II Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(648, 'medical', 'chiro_p1_III_Lt','p1 III Lt','p1 III Lt','p1 III Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(649, 'medical', 'chiro_p1_III_Rt','p1 III Rt','p1 III Rt','p1 III Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(650, 'medical', 'chiro_p1_IV_Lt','p1 IV Lt','p1 IV Lt','p1 IV Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(651, 'medical', 'chiro_p1_IV_Rt','p1 IV Rt','p1 IV Rt','p1 IV Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(652, 'medical', 'chiro_p1_V_Lt','p1 V Lt','p1 V Lt','p1 V Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(653, 'medical', 'chiro_p1_V_Rt','p1 V Rt','p1 V Rt','p1 V Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(654, 'medical', 'chiro_p2_I_Lt','p2 I Lt','p2 I Lt','p2 I Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(655, 'medical', 'chiro_p2_I_Rt','p2 I Rt','p2 I Rt','p2 I Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(656, 'medical', 'chiro_p2_II_Lt','p2 II Lt','p2 II Lt','p2 II Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(657, 'medical', 'chiro_p2_II_Rt','p2 II Rt','p2 II Rt','p2 II Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(658, 'medical', 'chiro_p2_III_Lt','p2 III Lt','p2 III Lt','p2 III Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(659, 'medical', 'chiro_p2_III_Rt','p2 III Rt','p2 III Rt','p2 III Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(660, 'medical', 'chiro_p2_IV_Lt','p2 IV Lt','p2 IV Lt','p2 IV Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(661, 'medical', 'chiro_p2_IV_Rt','p2 IV Rt','p2 IV Rt','p2 IV Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(662, 'medical', 'chiro_p2_V_Lt','p2 V Lt','p2 V Lt','p2 V Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(663, 'medical', 'chiro_p2_V_Rt','p2 V Rt','p2 V Rt','p2 V Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(664, 'medical', 'chiroPatella_Lt','Patella_Lt','Patella_Lt','Patella_Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(665, 'medical', 'chiroPatella_Rt','Patella Rt','Patella Rt','Patella Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(666, 'medical', 'chiroPisiforme_Lt','Pisiforme Lt','Pisiforme Lt','Pisiforme Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(667, 'medical', 'chiroPisiforme_Rt','Pisiforme Rt','Pisiforme Rt','Pisiforme Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(668, 'medical', 'chiroSacrum','Sacrum','Sacrum','Sacrum','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(669, 'medical', 'chiroScaphoide_Lt','Scaphoide Lt','Scaphoide Lt','Scaphoide Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(670, 'medical', 'chiroScaphoide_Rt','Scaphoide Rt','Scaphoide Rt','Scaphoide Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(671, 'medical', 'chiroScapula_Lt','Scapula Lt','Scapula Lt','Scapula Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(672, 'medical', 'chiroScapula_Rt','Scapula Rt','Scapula Rt','Scapula Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(673, 'medical', 'chiroTalus_Lt','Talus Lt','Talus Lt','Talus Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(674, 'medical', 'chiroTalus Rt','Talus Rt','Talus Rt','Talus Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(675, 'medical', 'chiroTibia_Lt','Tibia Lt','Tibia Lt','Tibia Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(676, 'medical', 'chiroTibia_Rt','Tibia Rt','Tibia Rt','Tibia Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(677, 'medical', 'chiroTrapezium_Lt','Trapezium Lt','Trapezium Lt','Trapezium Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(678, 'medical', 'chiroTrapezium_Rt','Trapezium Rt','Trapezium Rt','Trapezium Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(679, 'medical', 'chiroTrapezoide_Lt','Trapézoïde Lt','Trapézoïde Lt','Trapézoïde Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(680, 'medical', 'chiroTrapezoide_Rt','Trapézoïde Rt','Trapézoïde Rt','Trapézoïde Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(681, 'medical', 'chiroTriquetrum_Lt','Triquetrum Lt','Triquetrum Lt','Triquetrum Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(682, 'medical', 'chiroTriquetrum_Rt','Triquetrum Rt','Triquetrum Rt','Triquetrum Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(683, 'medical', 'chiroMetatarse_I_Lt','Métatarse I Lt','Métatarse I Lt','Métatarse I_Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(684, 'medical', 'chiroMetatarse_I_Rt','Métatarse I Rt','Métatarse I Rt','Métatarse I_Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(685, 'medical', 'chiroMetatarse_II_Lt','Métatarse II Lt','Métatarse II Lt','Métatarse II Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(686, 'medical', 'chiroMetatarse_II_Rt','Métatarse II Rt','Métatarse II Rt','Métatarse II Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(687, 'medical', 'chiroMetatarse_III_Lt','Métatarse III Lt','Métatarse III Lt','Métatarse III Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(688, 'medical', 'chiroMetatarse_III_Rt','Métatarse III Rt','Métatarse III Rt','Métatarse III Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(689, 'medical', 'chiroMetatarse_IV_Lt','Métatarse IV Lt','Métatarse IV Lt','Métatarse IV Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(690, 'medical', 'chiroMetatarse_IV_Rt','Métatarse IV Rt','Métatarse IV Rt','Métatarse IV Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(691, 'medical', 'chiroMetatarse_V_Lt','Métatarse V Lt','Métatarse V Lt','Métatarse V Lt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(692, 'medical', 'chiroMetatarse_V_Rt','Métatarse V Rt','Métatarse V Rt','Métatarse V Rt','','', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(693, 'medical', 'chiroMetatarso-phalangienne_Lt', 'Métatarso-phalangienne Lt', 'Métatarso-phalangienne Lt', 'Métatarso-phalangienne Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(694, 'medical', 'chiroMetatarso-phalangienne_Rt', 'Métatarso-phalangienne Rt', 'Métatarso-phalangienne Rt', 'Métatarso-phalangienne Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(695, 'medical', 'chiroTibio-fibulaire_distale_Lt', 'Tibio-fibulaire distale Lt', 'Tibio-fibulaire distale Lt', 'Tibio-fibulaire distale Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(696, 'medical', 'chiroTibio-fibulaire_distale_Rt', 'Tibio-fibulaire distale Rt', 'Tibio-fibulaire distale Rt', 'Tibio-fibulaire distale Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(697, 'medical', 'chiroATM_Lt', 'ATM Lt', 'ATM Lt', 'ATM Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(698, 'medical', 'chiroATM_Rt', 'ATM Rt', 'ATM Rt', 'ATM Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(699, 'medical', 'chiroSterno-claviculaire_Lt', 'Sterno-claviculaire Lt', 'Sterno-claviculaire Lt', 'Sterno-claviculaire Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(700, 'medical', 'chiroSterno-claviculaire_Rt', 'Sterno-claviculaire Rt', 'Sterno-claviculaire Rt', 'Sterno-claviculaire Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(701, 'medical', 'chiroAcromio-claviculaire_Lt', 'Acromio-claviculaire Lt', 'Acromio-claviculaire Lt', 'Acromio-claviculaire Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(702, 'medical', 'chiroAcromio-claviculaire_Rt', 'Acromio-claviculaire Rt', 'Acromio-claviculaire Rt', 'Acromio-claviculaire Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(703, 'medical', 'chiroGleno-humerale_Lt', 'Gléno-humérale Lt', 'Gléno-humérale Lt', 'Gléno-humérale Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(704, 'medical', 'chiroGleno-humerale_Rt', 'Gléno-humérale Rt', 'Gléno-humérale Rt', 'Gléno-humérale Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(705, 'medical', 'chiroTete_radiale_Lt', 'Tête radiale Lt', 'Tête radiale Lt', 'Tête radiale Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(706, 'medical', 'chiroTete_radiale_Rt', 'Tête radiale Rt', 'Tête radiale Rt', 'Tête radiale Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(707, 'medical', 'chiroUlna_proximal_Lt', 'Ulna proximal Lt', 'Ulna proximal Lt', 'Ulna proximal Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(708, 'medical', 'chiroUlna_proximal_Rt', 'Ulna proximal Rt', 'Ulna proximal Rt', 'Ulna proximal Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(709, 'medical', 'chiroFemoro-acetabulaire_Lt', 'Fémoro-acétabulaire Lt', 'Fémoro-acétabulaire Lt', 'Fémoro-acétabulaire Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(710, 'medical', 'chiroFemoro-acetabulaire_Rt', 'Fémoro-acétabulaire Rt', 'Fémoro-acétabulaire Rt', 'Fémoro-acétabulaire Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(711, 'medical', 'chiroTibio-fibulaire_prox_Lt', 'Tibio-fibulaire prox Lt', 'Tibio-fibulaire prox Lt', 'Tibio-fibulaire prox Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(712, 'medical', 'chiroTibio-fibulaire_prox_Rt', 'Tibio-fibulaire prox Rt', 'Tibio-fibulaire prox Rt', 'Tibio-fibulaire prox Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(713, 'medical', 'chiroSymphyse', 'Symphyse', 'Symphyse', 'Symphyse', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(714, 'medical', 'chiroStyloide_radiale_Lt', 'Styloïde radiale Lt', 'Styloïde radiale Lt', 'Styloïde radiale Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(715, 'medical', 'chiroStyloide_radiale_Rt', 'Styloïde radiale Rt', 'Styloïde radiale Rt', 'Styloïde radiale Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(716, 'medical', 'chiroUlna_distal_Lt', 'Ulna distal Lt', 'Ulna distal Lt', 'Ulna distal Lt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1),
(717, 'medical', 'chiroUlna_distal_Rt', 'Ulna distal Rt', 'Ulna distal Rt', 'Ulna distal Rt', '', '', 'hidden', '', 'user', 35, 1, '2017-11-13 18:39:48', 3600, 1);

