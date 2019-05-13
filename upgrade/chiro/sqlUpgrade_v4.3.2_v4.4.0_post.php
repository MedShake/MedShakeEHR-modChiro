<?php

// retrait des anciens fichiers CSS et JS formulaire
@unlink($p['config']['webDirectory'].'/css/chiro.css');
@unlink($p['config']['webDirectory'].'/js/module/formsScripts/chiroATCD.js');
@unlink($p['config']['webDirectory'].'/js/module/formsScripts/chiroConsult.js');
