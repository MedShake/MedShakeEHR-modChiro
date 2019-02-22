SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

INSERT IGNORE INTO `system` (`name`,`groupe`,`value`) VALUES
('chiro', 'module', 'v4.3.1');

INSERT IGNORE INTO `configuration` (`name`, `level`, `module`, `value`) VALUES
('administratifSecteurHonoraires', 'module', 'chiro', '');

INSERT IGNORE INTO `actes_base` (`code`, `activite`, `phase`, `label`, `type`, `dataYaml`, `tarifUnit`, `fromID`, `creationDate`) VALUES
('CsChiro', '1', '0', 'Consulte chiro', 'Libre', 'tarifBase: 50', 'euro', 1, '2019-01-01 00:00:00'),
('Echo', '1', '0', 'Echo chiro', 'Libre', 'tarifBase: 20', 'euro', 1, '2019-01-01 00:00:00');

INSERT IGNORE INTO `actes_cat` (`name`, `label`, `description`, `module`, `fromID`, `creationDate`, `displayOrder`) VALUES
('chiroCatExam', 'Examens  module chiro', '', 'chiro', 1, '2018-01-01 00:00:00', 2),
('chiroCatConsult', 'Consultations', '', 'chiro', 1, '2018-01-01 00:00:00', 1);

SET @catID = (SELECT actes_cat.id FROM actes_cat WHERE actes_cat.name='chiroCatConsult');
INSERT IGNORE INTO `actes` (`cat`, `label`, `shortLabel`, `details`, `flagImportant`, `flagCmu`, `fromID`, `toID`, `creationDate`) VALUES
(@catID, 'Consultation chiropratique', 'Cs', 'CsChiro:', 1, 0, 1, 0, '2018-01-01 00:00:00'),
(@catID, 'Consultation + échographie', 'Cs + Echo', 'CsChiro:\nEcho:', 0, 0, 1, 0, '2018-01-01 00:00:00');

SET @catID = (SELECT actes_cat.id FROM actes_cat WHERE actes_cat.name='chiroCatExam');
INSERT IGNORE INTO `actes` (`cat`, `label`, `shortLabel`, `details`, `flagImportant`, `flagCmu`, `fromID`, `toID`, `creationDate`) VALUES
(@catID, 'Echographie', 'Echo', 'Echo:', 0, 0, 1, 0, '2018-01-01 00:00:00');

INSERT IGNORE INTO `data_cat` (`groupe`, `name`, `label`, `description`, `type`, `fromID`, `creationDate`) VALUES
('typecs', 'csChiro', 'Consultations chiro', 'consultations possibles', 'user', 1, '2018-01-01 00:00:00'),
('medical', 'dataCsChiro', 'Données formulaire de Cs du module chiro', '', 'user', 1, '2018-01-01 00:00:00');

SET @catID = (SELECT data_cat.id FROM data_cat WHERE data_cat.name='csChiro');
INSERT IGNORE INTO `data_types` (`groupe`, `name`, `placeholder`, `label`, `description`, `validationRules`, `validationErrorMsg`, `formType`, `formValues`, `module`, `cat`, `fromID`, `creationDate`, `durationLife`, `displayOrder`) VALUES
('typecs', 'csChiroGroup', '', 'Nouvelle consultation', 'support parent pour les consultations chiro', '', '', '', 'chiroConsult', 'chiro', @catID, 1, '2018-01-01 00:00:00', 86400, 1);

SET @catID = (SELECT data_cat.id FROM data_cat WHERE data_cat.name='porteursReglement');
INSERT IGNORE INTO `data_types` (`groupe`, `name`, `placeholder`, `label`, `description`, `validationRules`, `validationErrorMsg`, `formType`, `formValues`, `module`, `cat`, `fromID`, `creationDate`, `durationLife`, `displayOrder`) VALUES
('reglement', 'chiroReglePorteur', '', 'Règlement', 'Règlement honoraires libres', '', '', '', 'baseReglementLibre', 'chiro', @catID, 1, '2018-01-01 00:00:00', 1576800000, 1);

SET @catID = (SELECT data_cat.id FROM data_cat WHERE data_cat.name='reglementItems');
INSERT IGNORE INTO `data_types` (`groupe`, `name`, `placeholder`, `label`, `description`, `validationRules`, `validationErrorMsg`, `formType`, `formValues`, `module`, `cat`, `fromID`, `creationDate`, `durationLife`, `displayOrder`) VALUES
('reglement', 'chiroRegleTarifCejour', '', 'Tarif', 'tarif appliqué ce jour', '', '', 'text', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 1576800000, 1);

SET @catID = (SELECT data_cat.id FROM data_cat WHERE data_cat.name='atcd');
INSERT IGNORE INTO `data_types` (`groupe`, `name`, `placeholder`, `label`, `description`, `validationRules`, `validationErrorMsg`, `formType`, `formValues`, `module`, `cat`, `fromID`, `creationDate`, `durationLife`, `displayOrder`) VALUES
('medical', 'chiroAtcdPerso', 'Antécédents personnels médicaux', 'Antécédents médicaux', 'Antécédents médicaux', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroAtcdNMS', 'Antécédents neuro-musculo-squelettiques personnels', 'Antécédents neuro-musculo-squelettiques', 'Antécédents neuro-musculo-squelettiques personnels', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroAtcdChir', 'Antécédents chirurgicaux personnels', 'Antécédents chirurgicaux', 'Antécédents chirurgicaux personnels', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroAtcdTraitements', 'Traitements', 'Médicaments / Compléments alimentaires', 'Traitements médicamenteux et alimentaires personnels', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroAccidents', 'Accidents et Traumas', 'Accidents et Traumas', 'Accidents et Traumas', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroSports', 'Sports & Activités', 'Sports & Activités', '', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 3);

SET @catID = (SELECT data_cat.id FROM data_cat WHERE data_cat.name='dataCsChiro');
INSERT IGNORE INTO `data_types` (`groupe`, `name`, `placeholder`, `label`, `description`, `validationRules`, `validationErrorMsg`, `formType`, `formValues`, `module`, `cat`, `fromID`, `creationDate`, `durationLife`, `displayOrder`) VALUES
('medical', 'chiroEvolSym', 'Evolution & symptômes', '', 'Evolution & symptômes', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroDiagnostic', 'Diagnostic', '', 'Diagnostic', '', '', 'text', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMusculaire', 'Musculaire', 'Musculaire', 'Musculaire', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCranien', 'Cranien', 'Cranien', 'Cranien', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroAK', 'AK', 'AK', 'AK', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTBM', 'TBM', 'TBM', 'TBM', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroNET', 'NET', 'NET', 'NET', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroWhitesonNot', 'Whiteson/NOT', 'Whiteson/NOT', 'Whiteson/NOT', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroThompson', 'Thompson', 'Thompson', 'Thompson', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroActivator', 'Activator', 'Activator', 'Activator', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTapeStrap', 'Tape/Strap', 'Tape/Strap', 'Tape/Strap', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroHIO', 'HIO', 'HIO', 'HIO', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroAutres', 'Autres', 'Autres', 'Autres', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroSOTCat1', 'SOT Cat I', 'Cat I', 'SOT Cat I', '', '', 'checkbox', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroSOTCat2', 'SOT Cat II', 'Cat II', 'SOT Cat II', '', '', 'checkbox', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroSOTCat3', 'SOT Cat III', 'Cat III', 'SOT Cat III', '', '', 'checkbox', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroExtrem', 'Extrémités', 'Extrémités', 'Extrémités', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTibio_fibulaire_distale_Lt', 'Tibio-fibulaire distale Lt', 'Tibio-fibulaire distale Lt', 'Tibio-fibulaire distale Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTibio_fibulaire_distale_Rt', 'Tibio-fibulaire distale Rt', 'Tibio-fibulaire distale Rt', 'Tibio-fibulaire distale Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetacarpe_IV_Lt', 'Métacarpe IV Lt', 'Métacarpe IV Lt', 'Métacarpe IV Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetacarpe_IV_Rt', 'Métacarpe IV Rt', 'Métacarpe IV Rt', 'Métacarpe IV Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetacarpe_V_Lt', 'Métacarpe V Lt', 'Métacarpe V Lt', 'Métacarpe V Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTibia_Lt', 'Tibia Lt', 'Tibia Lt', 'Tibia Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTalus_Rt', 'Talus Rt', 'Talus Rt', 'Talus Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP3_IV_Lt', 'P3 IV Lt', 'P3 IV Lt', 'P3 IV Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP3_IV_Rt', 'P3 IV Rt', 'P3 IV Rt', 'P3 IV Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP3_V_Lt', 'P3 V Lt', 'P3 V Lt', 'P3 V Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP3_V_Rt', 'P3 V Rt', 'P3 V Rt', 'P3 V Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p1_I_Lt', 'p1 I Lt', 'p1 I Lt', 'p1 I Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p1_I_Rt', 'p1 I Rt', 'p1 I Rt', 'p1 I Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p1_II_Lt', 'p1 II Lt', 'p1 II Lt', 'p1 II Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p1_II_Rt', 'p1 II Rt', 'p1 II Rt', 'p1 II Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p1_III_Lt', 'p1 III Lt', 'p1 III Lt', 'p1 III Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p1_III_Rt', 'p1 III Rt', 'p1 III Rt', 'p1 III Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p1_IV_Lt', 'p1 IV Lt', 'p1 IV Lt', 'p1 IV Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p1_IV_Rt', 'p1 IV Rt', 'p1 IV Rt', 'p1 IV Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p1_V_Lt', 'p1 V Lt', 'p1 V Lt', 'p1 V Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p1_V_Rt', 'p1 V Rt', 'p1 V Rt', 'p1 V Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p2_I_Lt', 'p2 I Lt', 'p2 I Lt', 'p2 I Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p2_I_Rt', 'p2 I Rt', 'p2 I Rt', 'p2 I Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p2_II_Lt', 'p2 II Lt', 'p2 II Lt', 'p2 II Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p2_II_Rt', 'p2 II Rt', 'p2 II Rt', 'p2 II Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p2_III_Lt', 'p2 III Lt', 'p2 III Lt', 'p2 III Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p2_III_Rt', 'p2 III Rt', 'p2 III Rt', 'p2 III Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p2_IV_Lt', 'p2 IV Lt', 'p2 IV Lt', 'p2 IV Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p2_IV_Rt', 'p2 IV Rt', 'p2 IV Rt', 'p2 IV Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p2_V_Lt', 'p2 V Lt', 'p2 V Lt', 'p2 V Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiro_p2_V_Rt', 'p2 V Rt', 'p2 V Rt', 'p2 V Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroPatella_Lt', 'Patella Lt', 'Patella Lt', 'Patella Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroPatella_Rt', 'Patella Rt', 'Patella Rt', 'Patella Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroPisiforme_Lt', 'Pisiforme Lt', 'Pisiforme Lt', 'Pisiforme Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroPisiforme_Rt', 'Pisiforme Rt', 'Pisiforme Rt', 'Pisiforme Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroSacrum', 'Sacrum', 'Sacrum', 'Sacrum', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroScaphoide_Lt', 'Scaphoïde Lt', 'Scaphoïde Lt', 'Scaphoïde Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroScaphoide_Rt', 'Scaphoïde Rt', 'Scaphoïde Rt', 'Scaphoïde Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroScapula_Lt', 'Scapula Lt', 'Scapula Lt', 'Scapula Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroScapula_Rt', 'Scapula Rt', 'Scapula Rt', 'Scapula Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTalus_Lt', 'Talus Lt', 'Talus Lt', 'Talus Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarso_phalangienne_Rt', 'Métatarso-phalangienne Rt', 'Métatarso-phalangienne Rt', 'Métatarso-phalangienne Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarso_phalangienne_Lt', 'Métatarso-phalangienne Lt', 'Métatarso-phalangienne Lt', 'Métatarso-phalangienne Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarse_V_Rt', 'Métatarse V Rt', 'Métatarse V Rt', 'Métatarse V Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarse_V_Lt', 'Métatarse V Lt', 'Métatarse V Lt', 'Métatarse V Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarse_IV_Rt', 'Métatarse IV Rt', 'Métatarse IV Rt', 'Métatarse IV Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarse_IV_Lt', 'Métatarse IV Lt', 'Métatarse IV Lt', 'Métatarse IV Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarse_III_Rt', 'Métatarse III Rt', 'Métatarse III Rt', 'Métatarse III Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarse_III_Lt', 'Métatarse III Lt', 'Métatarse III Lt', 'Métatarse III Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarse_II_Rt', 'Métatarse II Rt', 'Métatarse II Rt', 'Métatarse II Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarse_II_Lt', 'Métatarse II Lt', 'Métatarse II Lt', 'Métatarse II Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarse_I_Rt', 'Métatarse I Rt', 'Métatarse I Rt', 'Métatarse I_Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetatarse_I_Lt', 'Métatarse I Lt', 'Métatarse I Lt', 'Métatarse I_Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTriquetrum_Rt', 'Triquetrum Rt', 'Triquetrum Rt', 'Triquetrum Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTriquetrum_Lt', 'Triquetrum Lt', 'Triquetrum Lt', 'Triquetrum Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTrapezoide_Rt', 'Trapézoïde Rt', 'Trapézoïde Rt', 'Trapézoïde Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTrapezoide_Lt', 'Trapézoïde Lt', 'Trapézoïde Lt', 'Trapézoïde Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTrapezium_Rt', 'Trapezium Rt', 'Trapezium Rt', 'Trapezium Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTrapezium_Lt', 'Trapezium Lt', 'Trapezium Lt', 'Trapezium Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTibia_Rt', 'Tibia Rt', 'Tibia Rt', 'Tibia Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP3_III_Rt', 'P3 III Rt', 'P3 III Rt', 'P3 III Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP3_III_Lt', 'P3 III Lt', 'P3 III Lt', 'P3 III Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP3_II_Rt', 'P3 II Rt', 'P3 II Rt', 'P3 II Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP3_II_Lt', 'P3 II Lt', 'P3 II Lt', 'P3 II Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP2_V_Rt', 'P2 V Rt', 'P2 V Rt', 'P2 V Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP2_V_Lt', 'P2 V Lt', 'P2 V Lt', 'P2 V Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP2_IV_Rt', 'P2 IV Rt', 'P2 IV Rt', 'P2 IV Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP2_IV_Lt', 'P2 IV Lt', 'P2 IV Lt', 'P2 IV Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP2_III_Rt', 'P2 III Rt', 'P2 III Rt', 'P2 III Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP2_III_Lt', 'P2 III Lt', 'P2 III Lt', 'P2 III Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP2_II_Rt', 'P2 II Rt', 'P2 II Rt', 'P2 II Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP2_II_Lt', 'P2 II Lt', 'P2 II Lt', 'P2 II Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP2_I_Rt', 'P2 I Rt', 'P2 I Rt', 'P2 I Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP2_I_Lt', 'P2 I Lt', 'P2 I Lt', 'P2 I Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP1_V_Rt', 'P1 V Rt', 'P1 V Rt', 'P1 V Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP1_V_Lt', 'P1 V Lt', 'P1 V Lt', 'P1 V Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroSterno_claviculaire_Lt', 'Sterno-claviculaire Lt', 'Sterno-claviculaire Lt', 'Sterno-claviculaire Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroATM_Rt', 'ATM Rt', 'ATM Rt', 'ATM Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroATM_Lt', 'ATM Lt', 'ATM Lt', 'ATM Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP1_IV_Lt', 'P1 IV Lt', 'P1 IV Lt', 'P1 IV Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP1_IV_Rt', 'P1 IV Rt', 'P1 IV Rt', 'P1 IV Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP1_III_Lt', 'P1 III Lt', 'P1 III Lt', 'P1 III Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP1_III_Rt', 'P1 III Rt', 'P1 III Rt', 'P1 III Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP1_II_Rt', 'P1 II Rt', 'P1 II Rt', 'P1 II Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP1_II_Lt', 'P1 II Lt', 'P1 II Lt', 'P1 II Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP1_I_Rt', 'P1 I Rt', 'P1 I Rt', 'P1 I Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroP1_I_Lt', 'P1 I Lt', 'P1 I Lt', 'P1 I Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroNaviculaire_Rt', 'Naviculaire Rt', 'Naviculaire Rt', 'Naviculaire Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroNaviculaire_Lt', 'Naviculaire Lt', 'Naviculaire Lt', 'Naviculaire Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetacarpe_V_Rt', 'Métacarpe V Rt', 'Métacarpe V Rt', 'Métacarpe V Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetacarpe_III_Rt', 'Métacarpe III Rt', 'Métacarpe III Rt', 'Métacarpe III Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetacarpe_III_Lt', 'Métacarpe III Lt', 'Métacarpe III Lt', 'Métacarpe III Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetacarpe_II_Lt', 'Métacarpe II Lt', 'Métacarpe II Lt', 'Métacarpe II Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetacarpe_II_Rt', 'Métacarpe II Rt', 'Métacarpe II Rt', 'Métacarpe II Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetacarpe_I_Rt', 'Métacarpe I Rt', 'Métacarpe I Rt', 'Métacarpe I Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroLunatum_Rt', 'Lunatum Rt', 'Lunatum Rt', 'Lunatum Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroMetacarpe_I_Lt', 'Métacarpe I Lt', 'Métacarpe I Lt', 'Métacarpe I Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroIlium_Lt', 'Ilium Lt', 'Ilium Lt', 'Ilium Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroIlium_Rt', 'Ilium Rt', 'Ilium Rt', 'Ilium Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroLunatum_Lt', 'Lunatum Lt', 'Lunatum Lt', 'Lunatum Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroHamatum_Rt', 'Hamatum Rt', 'Hamatum Rt', 'Hamatum Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroHamatum_Lt', 'Hamatum Lt', 'Hamatum Lt', 'Hamatum Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCuboide_Rt', 'Cuboïde Rt', 'Cuboïde Rt', 'Cuboïde Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCuboide_Lt', 'Cuboïde Lt', 'Cuboïde Lt', 'Cuboïde Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCapitatum_Rt', 'Capitatum Rt', 'Capitatum Rt', 'Capitatum Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCapitatum_Lt', 'Capitatum Lt', 'Capitatum Lt', 'Capitatum Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCalcaneum_Rt', 'Calcanéum Rt', 'Calcanéum Rt', 'Calcanéum Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCuneiforme_III_Rt', 'Cunéïforme III Rt', 'Cunéïforme III Rt', 'Cunéïforme III Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCalcaneum_Lt', 'Calcanéum Lt', 'Calcanéum Lt', 'Calcanéum Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCuneiforme_III_Lt', 'Cunéïforme III Lt', 'Cunéïforme III Lt', 'Cunéïforme III Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCuneiforme_II_Rt', 'Cunéïforme II Rt', 'Cunéïforme II Rt', 'Cunéïforme II Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCuneiforme_II_Lt', 'Cunéïforme II Lt', 'Cunéïforme II Lt', 'Cunéïforme II Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCuneiforme_I_Lt', 'Cunéïforme I Lt', 'Cunéïforme I Lt', 'Cunéïforme I Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCuneiforme_I_Rt', 'Cunéïforme I Rt', 'Cunéïforme I Rt', 'Cunéïforme I Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroSterno_claviculaire_Rt', 'Sterno-claviculaire Rt', 'Sterno-claviculaire Rt', 'Sterno-claviculaire Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroAcromio_claviculaire_Lt', 'Acromio-claviculaire Lt', 'Acromio-claviculaire Lt', 'Acromio-claviculaire Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroAcromio_claviculaire_Rt', 'Acromio-claviculaire Rt', 'Acromio-claviculaire Rt', 'Acromio-claviculaire Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroGleno_humerale_Lt', 'Gléno-humérale Lt', 'Gléno-humérale Lt', 'Gléno-humérale Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroGleno_humerale_Rt', 'Gléno-humérale Rt', 'Gléno-humérale Rt', 'Gléno-humérale Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTete_radiale_Lt', 'Tête radiale Lt', 'Tête radiale Lt', 'Tête radiale Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTete_radiale_Rt', 'Tête radiale Rt', 'Tête radiale Rt', 'Tête radiale Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroUlna_proximal_Lt', 'Ulna proximal Lt', 'Ulna proximal Lt', 'Ulna proximal Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroUlna_proximal_Rt', 'Ulna proximal Rt', 'Ulna proximal Rt', 'Ulna proximal Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroFemoro_acetabulaire_Lt', 'Fémoro-acétabulaire Lt', 'Fémoro-acétabulaire Lt', 'Fémoro-acétabulaire Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroFemoro_acetabulaire_Rt', 'Fémoro-acétabulaire Rt', 'Fémoro-acétabulaire Rt', 'Fémoro-acétabulaire Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTibio_fibulaire_prox_Lt', 'Tibio-fibulaire prox Lt', 'Tibio-fibulaire prox Lt', 'Tibio-fibulaire prox Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroTibio_fibulaire_prox_Rt', 'Tibio-fibulaire prox Rt', 'Tibio-fibulaire prox Rt', 'Tibio-fibulaire prox Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroSymphyse', 'Symphyse', 'Symphyse', 'Symphyse', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroStyloide_radiale_Lt', 'Styloïde radiale Lt', 'Styloïde radiale Lt', 'Styloïde radiale Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroStyloide_radiale_Rt', 'Styloïde radiale Rt', 'Styloïde radiale Rt', 'Styloïde radiale Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroUlna_distal_Lt', 'Ulna distal Lt', 'Ulna distal Lt', 'Ulna distal Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroUlna_distal_Rt', 'Ulna distal Rt', 'Ulna distal Rt', 'Ulna distal Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroNotes', 'Notes', 'Notes', 'Notes', '', '', 'textarea', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroC0', 'C0', 'C0', 'C0', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroC1', 'C1', 'C1', 'C1', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroC2', 'C2', 'C2', 'C2', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroC3', 'C3', 'C3', 'C3', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroC4', 'C4', 'C4', 'C4', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroC5', 'C5', 'C5', 'C5', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroC6', 'C6', 'C6', 'C6', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroC7', 'C7', 'C7', 'C7', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT1', 'T1', 'T1', 'T1', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT2', 'T2', 'T2', 'T2', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT3', 'T3', 'T3', 'T3', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT4', 'T4', 'T4', 'T4', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT5', 'T5', 'T5', 'T5', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT6', 'T6', 'T6', 'T6', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT7', 'T7', 'T7', 'T7', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT8', 'T8', 'T8', 'T8', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT9', 'T9', 'T9', 'T9', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT10', 'T10', 'T10', 'T10', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT11', 'T11', 'T11', 'T11', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroT12', 'T12', 'T12', 'T12', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK1_Lt', 'K1 Lt', 'K1 Lt', 'K1 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK1_Rt', 'K1 Rt', 'K1 Rt', 'K1 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK2_Lt', 'K2 Lt', 'K2 Lt', 'K2 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK2_Rt', 'K2 Rt', 'K2 Rt', 'K2 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK3_Lt', 'K3 Lt', 'K3 Lt', 'K3 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK3_Rt', 'K3 Rt', 'K3 Rt', 'K3 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK4_Lt', 'K4 Lt', 'K4 Lt', 'K4 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK4_Rt', 'K4 Rt', 'K4 Rt', 'K4 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK5_Lt', 'K5 Lt', 'K5 Lt', 'K5 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK5_Rt', 'K5 Rt', 'K5 Rt', 'K5 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK6_Lt', 'K6 Lt', 'K6 Lt', 'K6 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK6_Rt', 'K6 Rt', 'K6 Rt', 'K6 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK7_Lt', 'K7 Lt', 'K7 Lt', 'K7 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK7_Rt', 'K7 Rt', 'K7 Rt', 'K7 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK8_Lt', 'K8 Lt', 'K8 Lt', 'K8 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK8_Rt', 'K8 Rt', 'K8 Rt', 'K8 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK9_Lt', 'K9 Lt', 'K9 Lt', 'K9 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK9_Rt', 'K9 Rt', 'K9 Rt', 'K9 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK10_Lt', 'K10 Lt', 'K10 Lt', 'K10 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK10_Rt', 'K10 Rt', 'K10 Rt', 'K10 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK11_Lt', 'K11 Lt', 'K11 Lt', 'K11 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK11_Rt', 'K11 Rt', 'K11 Rt', 'K11 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK12_Lt', 'K12 Lt', 'K12 Lt', 'K12 Lt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroK12_Rt', 'K12 Rt', 'K12 Rt', 'K12 Rt', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroL1', 'L1', 'L1', 'L1', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroL2', 'L2', 'L2', 'L2', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroL3', 'L3', 'L3', 'L3', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroL4', 'L4', 'L4', 'L4', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroL5', 'L5', 'L5', 'L5', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1),
('medical', 'chiroCoccyx', 'Coccyx', 'Coccyx', 'Coccyx', '', '', 'hidden', '', 'chiro', @catID, 1, '2018-01-01 00:00:00', 3600, 1);

SET @catID = (SELECT forms_cat.id FROM forms_cat WHERE forms_cat.name='systemForm');
INSERT IGNORE INTO `forms` (`module`, `internalName`, `name`, `description`, `dataset`, `groupe`, `formMethod`, `formAction`, `cat`, `type`, `yamlStructure`, `printModel`) VALUES
('chiro', 'chiroReglement', 'Formulaire règlement', 'formulaire pour le règlement', 'data_types', 'reglement', 'post', '/patient/ajax/saveReglementForm/', @catID, 'public', 'structure:\r\n row1:\r\n  col1: \r\n    size: 4\r\n    bloc: \r\n      - chiroRegleTarifCejour,readonly,plus={€},class=regleTarifCejour  		#499  Tarif\n  col2: \r\n    size: 4\r\n    bloc: \r\n      - regleDepaCejour,plus={€},class=regleDepaCejour                 		#199  Dépassement\n  col3: \r\n    size: 4\r\n    bloc: \r\n      - regleFacture,readonly,plus={€},class=regleFacture           		#196  Facturé\n row2:\r\n  col1: \r\n    size: 4\r\n    bloc: \r\n      - regleCB,plus={€},class=regleCB                         		#194  CB\n  col2: \r\n    size: 4\r\n    bloc: \r\n      - regleCheque,plus={€},class=regleCheque                     		#193  Chèque\n  col3: \r\n    size: 4\r\n    bloc: \r\n      - regleEspeces,plus={€},class=regleEspeces                    		#195  Espèces\n row3:\r\n  col1: \r\n    size: 6\r\n    bloc: \r\n      - regleIdentiteCheque,class=regleIdentiteCheque                        		#205  Identité payeur', '');

SET @catID = (SELECT forms_cat.id FROM forms_cat WHERE forms_cat.name='formATCD');
INSERT IGNORE INTO `forms` (`module`, `internalName`, `name`, `description`, `dataset`, `groupe`, `formMethod`, `formAction`, `cat`, `type`, `yamlStructure`, `printModel`) VALUES
('chiro', 'chiroATCD', 'Formulaire latéral chiro écran patient principal (atcd)', 'formulaire en colonne latéral du dossier patient (atcd)', 'data_types', 'medical', 'post', '', @catID, 'public', 'structure:\r\n  row1:                              # 1re rangée\r\n    col1:                            # 1re colonne  \r\n      size: 4\r\n      bloc:                          # Types utilisés\r\n        - poids                          		#34   Poids\n    col2:                            # 2e colonne  \r\n      size: 4\r\n      bloc:                          # Types utilisés\r\n        - taillePatient                  		#35   Taille\n    col3:                            # 3e colonne  \r\n      size: 4\r\n      bloc:                          # Types utilisés\r\n        - imc,readonly                   		#43   IMC\n  row2:                              # 2e rangée\r\n    col1:                            # 1re colonne  \r\n      size: 12\r\n      bloc:                          # Types utilisés\r\n        - job                            		#19   Activité professionnelle\n        - chiroSports,rows=2                  		#501  Sports & Activités\n        - chiroAtcdTraitements,rows=2         		#499  Médicaments / Compléments alimentaires\n        - chiroAccidents,rows=2               		#500  Accidents et Traumas\n        - allergies,rows=2               		#66   Allergies\n        - toxiques                       		#42   Toxiques\n  row3:                              # 3e rangée\r\n    col1:                            # 1re colonne  \r\n      size: 12\r\n      bloc:                          # Types utilisés\r\n        - chiroAtcdNMS,rows=2            		#40   Antécédents neuro-musculo-squelettiques\n        - chiroAtcdChir,rows=2           		#41   Antécédents chirurgicaux\n        - chiroAtcdPerso,rows=2               		#39   Antécédents médicaux\n        - atcdFamiliaux,rows=2           		#38   Antécédents familiaux', '');

SET @catID = (SELECT forms_cat.id FROM forms_cat WHERE forms_cat.name='formCS');
INSERT IGNORE INTO `forms` (`module`, `internalName`, `name`, `description`, `dataset`, `groupe`, `formMethod`, `formAction`, `cat`, `type`, `yamlStructure`, `printModel`) VALUES
('chiro','chiroConsult', 'Formulaire CS', 'formulaire de consultation chiro', 'data_types', 'medical', 'post', '/patient/ajax/saveCsForm/ignoreEmpty/', @catID, 'public', 'global:\r\n  formClass: \'chiroCS hide\' \r\nstructure:\r\n####### INTRODUCTION ######\r\n  row1:\r\n    head: \'Diagnostic\'\r\n    col1:                              \r\n      size: 12\r\n      bloc:                          \r\n        - chiroDiagnostic,nolabel             		#504  \r\n  row2:                              \r\n    class: \'chiroEvolSym\'\r\n    head: \'Évolution & Symptômes\'\r\n    col1:                              \r\n      size: 12\r\n      bloc:                          \r\n        - chiroEvolSym,nolabel,rows=4    		#498  \r\n  row3:\r\n    class: \'chiroTArray\'\r\n    col1:\r\n      size: 6\r\n      bloc:\r\n         - chiroMusculaire               		#557  Musculaire\r\n         - chiroAK                       		#559  AK\r\n         - chiroNET                      		#561  NET\r\n         - chiroThompson                 		#563  Thompson\r\n         - chiroTapeStrap                		#565  Tape/Strap\r\n         - chiroExtrem                   		#583  Extrémités\r\n    col2:\r\n      size: 6\r\n      bloc:\r\n         - chiroCranien                  		#558  Cranien\r\n         - chiroTBM                      		#560  TBM\r\n         - chiroWhitesonNot              		#562  Whiteson/NOT\r\n         - chiroActivator                		#564  Activator\r\n         - chiroHIO                      		#566  HIO\r\n         - label{SOT}                        		\r\n         - chiroSOTCat1                  		#568  Cat I\r\n         - chiroSOTCat2                  		#569  Cat II\r\n         - chiroSOTCat3                  		#570  Cat III\r\n  row4:\r\n    class: \'chiroAutres\'\r\n    col1:\r\n      size: 12\r\n      bloc:\r\n         - chiroAutres                   		#567  Autres\r\n  row5:\r\n    class: \'chiroNotes\'\r\n    col1:\r\n      size: 12\r\n      bloc:\r\n        - chiroNotes,nolabel,rows=8      		#718  Notes\r\n  row6:\r\n    class: \'chiroVArray\'\r\n    col1:                              \r\n      size: 12\r\n      bloc:\r\n        - template{chiroConsult}        		\r\n        - chiroCuneiforme_I_Lt,nolabel   		#584  Cunéïforme I Lt\r\n        - chiroCuneiforme_I_Rt,nolabel   		#585  Cunéïforme I Rt\r\n        - chiroCuneiforme_II_Lt,nolabel  		#586  Cunéïforme II Lt\r\n        - chiroCuneiforme_II_Rt,nolabel  		#587  Cunéïforme II Rt\r\n        - chiroCuneiforme_III_Lt,nolabel 		#588  Cunéïforme III Lt\r\n        - chiroCuneiforme_III_Rt,nolabel 		#589  Cunéïforme III Rt\r\n        - chiroCalcaneum_Lt,nolabel       		#590  Calcanéum Lt\r\n        - chiroCalcaneum_Rt,nolabel       		#591  Calcanéum Rt\r\n        - chiroCapitatum_Lt,nolabel       		#592  Capitatum Lt\r\n        - chiroCapitatum_Rt,nolabel       		#593  Capitatum Rt\r\n        - chiroCuboide_Lt,nolabel        		#594  Cuboïde Lt\r\n        - chiroCuboide_Rt,nolabel        		#595  Cuboïde Rt\r\n        - chiroHamatum_Lt,nolabel        		#596  Hamatum Lt\r\n        - chiroHamatum_Rt,nolabel        		#597  Hamatum Rt\r\n        - chiroIlium_Lt,nolabel          		#598  Ilium Lt\r\n        - chiroIlium_Rt,nolabel          		#599  Ilium Rt\r\n        - chiroLunatum_Lt,nolabel        		#600  Lunatum Lt\r\n        - chiroLunatum_Rt,nolabel        		#601  Lunatum Rt\r\n        - chiroMetacarpe_I_Lt,nolabel    		#602  Métacarpe I Lt\r\n        - chiroMetacarpe_I_Rt,nolabel    		#603  Métacarpe I Rt\r\n        - chiroMetacarpe_II_Lt,nolabel   		#604  Métacarpe II Lt\r\n        - chiroMetacarpe_II_Rt,nolabel   		#605  Métacarpe II Rt\r\n        - chiroMetacarpe_III_Lt,nolabel  		#606  Métacarpe III Lt\r\n        - chiroMetacarpe_III_Rt,nolabel  		#607  Métacarpe III Rt\r\n        - chiroMetacarpe_IV_Lt,nolabel   		#608  Métacarpe IV Lt\r\n        - chiroMetacarpe_IV_Rt,nolabel   		#609  Métacarpe IV Rt\r\n        - chiroMetacarpe_V_Lt,nolabel    		#610  Métacarpe V Lt\r\n        - chiroMetacarpe_V_Rt,nolabel    		#611  Métacarpe V Rt\r\n        - chiroNaviculaire_Lt,nolabel    		#612  Naviculaire Lt\r\n        - chiroNaviculaire_Rt,nolabel    		#613  Naviculaire Rt\r\n        - chiroP1_I_Lt,nolabel           		#614  P1 I Lt\r\n        - chiroP1_I_Rt,nolabel           		#615  P1 I Rt\r\n        - chiroP1_II_Lt,nolabel          		#616  P1 II Lt\r\n        - chiroP1_II_Rt,nolabel          		#617  P1 II Rt\r\n        - chiroP1_III_Lt,nolabel         		#618  P1 III Lt\r\n        - chiroP1_III_Rt,nolabel         		#619  P1 III Rt\r\n        - chiroP1_IV_Lt,nolabel          		#620  P1 IV Lt\r\n        - chiroP1_IV_Rt,nolabel          		#621  P1 IV Rt\r\n        - chiroP1_V_Lt,nolabel           		#622  P1 V Lt\r\n        - chiroP1_V_Rt,nolabel           		#623  P1 V Rt\r\n        - chiroP2_I_Lt,nolabel           		#624  P2 I Lt\r\n        - chiroP2_I_Rt,nolabel           		#625  P2 I Rt\r\n        - chiroP2_II_Lt,nolabel          		#626  P2 II Lt\r\n        - chiroP2_II_Rt,nolabel          		#627  P2 II Rt\r\n        - chiroP2_III_Lt,nolabel         		#628  P2 III Lt\r\n        - chiroP2_III_Rt,nolabel         		#629  P2 III Rt\r\n        - chiroP2_IV_Lt,nolabel          		#630  P2 IV Lt\r\n        - chiroP2_IV_Rt,nolabel          		#631  P2 IV Rt\r\n        - chiroP2_V_Lt,nolabel           		#632  P2 V Lt\r\n        - chiroP2_V_Rt,nolabel           		#633  P2 V Rt\r\n        - chiroP3_II_Lt,nolabel          		#636  P3 II Lt\r\n        - chiroP3_II_Rt,nolabel          		#637  P3 II Rt\r\n        - chiroP3_III_Lt,nolabel         		#638  P3 III Lt\r\n        - chiroP3_III_Rt,nolabel         		#639  P3 III Rt\r\n        - chiroP3_IV_Lt,nolabel          		#640  P3 IV Lt\r\n        - chiroP3_IV_Rt,nolabel          		#641  P3 IV Rt\r\n        - chiroP3_V_Lt,nolabel           		#642  P3 V Lt\r\n        - chiroP3_V_Rt,nolabel           		#643  P3 V Rt\r\n        - chiro_p1_I_Lt,nolabel          		#644  p1 I Lt\r\n        - chiro_p1_I_Rt,nolabel          		#645  p1 I Rt\r\n        - chiro_p1_II_Lt,nolabel         		#646  p1 II Lt\r\n        - chiro_p1_II_Rt,nolabel         		#647  p1 II Rt\r\n        - chiro_p1_III_Lt,nolabel        		#648  p1 III Lt\r\n        - chiro_p1_III_Rt,nolabel        		#649  p1 III Rt\r\n        - chiro_p1_IV_Lt,nolabel         		#650  p1 IV Lt\r\n        - chiro_p1_IV_Rt,nolabel         		#651  p1 IV Rt\r\n        - chiro_p1_V_Lt,nolabel          		#652  p1 V Lt\r\n        - chiro_p1_V_Rt,nolabel          		#653  p1 V Rt\r\n        - chiro_p2_I_Lt,nolabel          		#654  p2 I Lt\r\n        - chiro_p2_I_Rt,nolabel          		#655  p2 I Rt\r\n        - chiro_p2_II_Lt,nolabel         		#656  p2 II Lt\r\n        - chiro_p2_II_Rt,nolabel         		#657  p2 II Rt\r\n        - chiro_p2_III_Lt,nolabel        		#658  p2 III Lt\r\n        - chiro_p2_III_Rt,nolabel        		#659  p2 III Rt\r\n        - chiro_p2_IV_Lt,nolabel         		#660  p2 IV Lt\r\n        - chiro_p2_IV_Rt,nolabel         		#661  p2 IV Rt\r\n        - chiro_p2_V_Lt,nolabel          		#662  p2 V Lt\r\n        - chiro_p2_V_Rt,nolabel          		#663  p2 V Rt\r\n        - chiroPatella_Lt,nolabel        		#664  Patella Lt\r\n        - chiroPatella_Rt,nolabel        		#665  Patella Rt\r\n        - chiroPisiforme_Lt,nolabel      		#666  Pisiforme Lt\r\n        - chiroPisiforme_Rt,nolabel      		#667  Pisiforme Rt\r\n        - chiroSacrum,nolabel            		#668  Sacrum\r\n        - chiroScaphoide_Lt,nolabel      		#669  Scaphoïde Lt\r\n        - chiroScaphoide_Rt,nolabel      		#670  Scaphoïde Rt\r\n        - chiroScapula_Lt,nolabel        		#671  Scapula Lt\r\n        - chiroScapula_Rt,nolabel        		#672  Scapula Rt\r\n        - chiroTalus_Lt,nolabel          		#673  Talus Lt\r\n        - chiroTalus_Rt,nolabel          		#674  Talus Rt\r\n        - chiroTibia_Lt,nolabel          		#675  Tibia Lt\r\n        - chiroTibia_Rt,nolabel          		#676  Tibia Rt\r\n        - chiroTrapezium_Lt,nolabel      		#677  Trapezium Lt\r\n        - chiroTrapezium_Rt,nolabel      		#678  Trapezium Rt\r\n        - chiroTrapezoide_Lt,nolabel     		#679  Trapézoïde Lt\r\n        - chiroTrapezoide_Rt,nolabel     		#680  Trapézoïde Rt\r\n        - chiroTriquetrum_Lt,nolabel     		#681  Triquetrum Lt\r\n        - chiroTriquetrum_Rt,nolabel     		#682  Triquetrum Rt\r\n        - chiroMetatarse_I_Lt,nolabel    		#683  Métatarse I Lt\r\n        - chiroMetatarse_I_Rt,nolabel    		#684  Métatarse I Rt\r\n        - chiroMetatarse_II_Lt,nolabel   		#685  Métatarse II Lt\r\n        - chiroMetatarse_II_Rt,nolabel   		#686  Métatarse II Rt\r\n        - chiroMetatarse_III_Lt,nolabel  		#687  Métatarse III Lt\r\n        - chiroMetatarse_III_Rt,nolabel  		#688  Métatarse III Rt\r\n        - chiroMetatarse_IV_Lt,nolabel   		#689  Métatarse IV Lt\r\n        - chiroMetatarse_IV_Rt,nolabel   		#690  Métatarse IV Rt\r\n        - chiroMetatarse_V_Lt,nolabel    		#691  Métatarse V Lt\r\n        - chiroMetatarse_V_Rt,nolabel    		#692  Métatarse V Rt\r\n        - chiroMetatarso_phalangienne_Lt,nolabel 		#693  Métatarso -phalangienne Lt\r\n        - chiroMetatarso_phalangienne_Rt,nolabel 		#694  Métatarso -phalangienne Rt\r\n        - chiroTibio_fibulaire_distale_Lt,nolabel 		#695  Tibio-fibulaire distale Lt\r\n        - chiroTibio_fibulaire_distale_Rt,nolabel 		#696  Tibio-fibulaire distale Rt\r\n        - chiroATM_Lt,nolabel            		#697  ATM Lt\r\n        - chiroATM_Rt,nolabel            		#698  ATM Rt\r\n        - chiroSterno_claviculaire_Lt,nolabel 		#699  Sterno-claviculaire Lt\r\n        - chiroSterno_claviculaire_Rt,nolabel 		#700  Sterno-claviculaire Rt\r\n        - chiroAcromio_claviculaire_Lt,nolabel 		#701  Acromio-claviculaire Lt\r\n        - chiroAcromio_claviculaire_Rt,nolabel 		#702  Acromio-claviculaire Rt\r\n        - chiroGleno_humerale_Lt,nolabel 		#703  Gleno-humérale Lt\r\n        - chiroGleno_humerale_Rt,nolabel 		#704  Gléno-humérale Rt\r\n        - chiroTete_radiale_Lt,nolabel   		#705  Tête radiale Lt\r\n        - chiroTete_radiale_Rt,nolabel   		#706  Tête radiale Rt\r\n        - chiroUlna_proximal_Lt,nolabel  		#707  Ulna proximal Lt\r\n        - chiroUlna_proximal_Rt,nolabel  		#708  Ulna proximal Rt\r\n        - chiroFemoro_acetabulaire_Lt,nolabel 		#709  Fémoro-acétabulaire Lt\r\n        - chiroFemoro_acetabulaire_Rt,nolabel 		#710  Fémoro-acétabulaire Rt\r\n        - chiroTibio_fibulaire_prox_Lt,nolabel 		#711  Tibio-fibulaire prox Lt\r\n        - chiroTibio_fibulaire_prox_Rt,nolabel 		#712  Tibio-fibulaire prox Rt\r\n        - chiroSymphyse,nolabel          		#713  Symphyse\r\n        - chiroStyloide_radiale_Lt,nolabel 		#714  Styloïde radiale Lt\r\n        - chiroStyloide_radiale_Rt,nolabel 		#715  Styloïde radiale Rt\r\n        - chiroUlna_distal_Lt,nolabel    		#716  Ulna distal Lt\r\n        - chiroUlna_distal_Rt,nolabel    		#717  Ulna distal Rt\r\n        - chiroC0,nolabel                		#719  C0\r\n        - chiroC1,nolabel                		#720  C1\r\n        - chiroC2,nolabel                		#721  C2\r\n        - chiroC3,nolabel                		#722  C3\r\n        - chiroC4,nolabel                		#723  C4\r\n        - chiroC5,nolabel                		#724  C5\r\n        - chiroC6,nolabel                		#725  C6\r\n        - chiroC7,nolabel                		#726  C7\r\n        - chiroT1,nolabel                		#727  T1\r\n        - chiroT2,nolabel                		#728  T2\r\n        - chiroT3,nolabel                		#729  T3\r\n        - chiroT4,nolabel                		#730  T4\r\n        - chiroT5,nolabel                		#731  T5\r\n        - chiroT6,nolabel                		#732  T6\r\n        - chiroT7,nolabel                		#733  T7\r\n        - chiroT8,nolabel                		#734  T8\r\n        - chiroT9,nolabel                		#735  T9\r\n        - chiroT10,nolabel               		#736  T10\r\n        - chiroT11,nolabel               		#737  T11\r\n        - chiroT12,nolabel               		#738  T12\r\n        - chiroK1_Lt,nolabel             		#739  K1 Lt\r\n        - chiroK1_Rt,nolabel             		#740  K1 Rt\r\n        - chiroK2_Lt,nolabel             		#741  K2 Lt\r\n        - chiroK2_Rt,nolabel             		#742  K2 Rt\r\n        - chiroK3_Lt,nolabel             		#743  K3 Lt\r\n        - chiroK3_Rt,nolabel             		#744  K3 Rt\r\n        - chiroK4_Lt,nolabel             		#745  K4 Lt\r\n        - chiroK4_Rt,nolabel             		#746  K4 Rt\r\n        - chiroK5_Lt,nolabel             		#747  K5 Lt\r\n        - chiroK5_Rt,nolabel             		#748  K5 Rt\r\n        - chiroK6_Lt,nolabel             		#749  K6 Lt\r\n        - chiroK6_Rt,nolabel             		#750  K6 Rt\r\n        - chiroK7_Lt,nolabel             		#751  K7 Lt\r\n        - chiroK7_Rt,nolabel             		#752  K7 Rt\r\n        - chiroK8_Lt,nolabel             		#753  K8 Lt\r\n        - chiroK8_Rt,nolabel             		#754  K8 Rt\r\n        - chiroK9_Lt,nolabel             		#755  K9 Lt\r\n        - chiroK9_Rt,nolabel             		#756  K9 Rt\r\n        - chiroK10_Lt,nolabel            		#757  K10 Lt\r\n        - chiroK10_Rt,nolabel            		#758  K10 Rt\r\n        - chiroK11_Lt,nolabel            		#759  K11 Lt\r\n        - chiroK11_Rt,nolabel            		#760  K11 Rt\r\n        - chiroK12_Lt,nolabel            		#761  K12 Lt\r\n        - chiroK12_Rt,nolabel            		#762  K12 Rt\r\n        - chiroL1,nolabel                		#763  L1\r\n        - chiroL2,nolabel                		#764  L2\r\n        - chiroL3,nolabel                		#765  L3\r\n        - chiroL4,nolabel                		#766  L4\r\n        - chiroL5,nolabel                		#767  L5\r\n        - chiroCoccyx,nolabel            		#768  Coccyx\r\n', 'csChiro');
