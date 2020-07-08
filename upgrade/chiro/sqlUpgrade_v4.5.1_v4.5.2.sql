-- Modifications des données de la bdd

UPDATE `system` SET `value`='v4.5.2' WHERE `name`='chiro';

-- configuration
INSERT IGNORE INTO `configuration` (`name`, `level`, `toID`, `module`, `cat`, `type`, `description`, `value`) VALUES
('administratifSecteurHonoraires', 'module', '0', 'chiro', NULL, NULL, NULL, NULL),
('administratifReglementFormulaires', 'module', '0', 'chiro', 'Règlements', 'liste', NULL, 'chiroReglePorteur');