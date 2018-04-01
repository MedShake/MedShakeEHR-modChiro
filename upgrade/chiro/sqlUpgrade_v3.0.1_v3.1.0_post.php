<?php

unlink($p['homepath'].'controlers/module/chiro/patient/actions/inc-ajax-extractReglementForm.php');
unlink($p['homepath'].'controlers/module/chiro/patient/actions/inc-ajax-saveReglementForm.php');
unlink($p['homepath'].'controlers/module/chiro/compta/actions/comptaActions.php');
unlink($p['config']['templatesFolder'].'chiro/patient/patientReglementForm.html.twig');
unlink($p['config']['templatesFolder'].'chiro/patient/inc-ajax-detReglement.html.twig');
unlink($p['config']['templatesFolder'].'chiro/configuration/configActes.html.twig');
unlink($p['config']['templatesFolder'].'chiro/configuration/configActesBase.html.twig');
unlink($p['config']['templatesFolder'].'chiro/configuration/configActesCat.html.twig');
unlink($p['config']['templatesFolder'].'chiro/compta/compta.html.twig');
unlink($p['config']['templatesFolder'].'chiro/compta/comptaToday.html.twig');
unlink($p['config']['templatesFolder'].'chiro/compta/comptaMemoTarifs.html.twig');

