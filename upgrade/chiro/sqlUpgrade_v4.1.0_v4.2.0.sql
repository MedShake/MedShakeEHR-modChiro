-- Modifications des données de la bdd de v4.1.0 à v4.2.0

UPDATE `system` SET `value`='v4.2.0' WHERE `name`='chiro';

-- configuration : formulaires de règlements du module
INSERT INTO `configuration` (`name`, `level`, `toID`, `module`, `cat`, `type`, `description`, `value`) VALUES ( 'administratifReglementFormulaires', 'module', '0', 'chiro', 'Règlements', 'liste', '', 'chiroReglePorteur');
