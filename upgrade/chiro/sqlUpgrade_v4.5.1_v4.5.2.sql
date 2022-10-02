-- Modifications des données de la bdd

UPDATE `system` SET `value`='v4.6.1' WHERE `name`='chiro';

-- configuration
INSERT IGNORE INTO `configuration` (`name`, `level`, `toID`, `module`, `cat`, `type`, `description`, `value`) VALUES
('administratifReglementFormulaires', 'module', '0', 'chiro', 'Règlements', 'liste', NULL, 'chiroReglePorteur');