<?php
$file_list=[
    $p['homepath'].'controlers/module/chiro/patient/actions/inc-ajax-extractReglementForm.php',
    $p['homepath'].'controlers/module/chiro/compta/actions/comptaActions.php',
    $p['config']['templatesFolder'].'chiro/patient/patientReglementForm.html.twig',
    $p['config']['templatesFolder'].'chiro/patient/inc-ajax-detReglement.html.twig',
    $p['config']['templatesFolder'].'chiro/configuration/configActes.html.twig',
    $p['config']['templatesFolder'].'chiro/configuration/configActesBase.html.twig',
    $p['config']['templatesFolder'].'chiro/configuration/configActesCat.html.twig',
    $p['config']['templatesFolder'].'chiro/compta/compta.html.twig',
    $p['config']['templatesFolder'].'chiro/compta/comptaToday.html.twig',
    $p['config']['templatesFolder'].'chiro/compta/comptaMemoTarifs.html.twig'
];

foreach ($file_list as $file) {
  if (is_file($file))
    unlink($file);
}
