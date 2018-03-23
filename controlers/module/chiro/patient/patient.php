<?php
/*
 * This file is part of MedShakeEHR.
 *
 * Copyright (c) 2017
 * Bertrand Boutillier <b.boutillier@gmail.com>
 * http://www.medshake.net
 *
 * MedShakeEHR is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * MedShakeEHR is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with MedShakeEHR.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * Patient : la page du dossier patient
 *
 * @author Bertrand Boutillier <b.boutillier@gmail.com>
 * @contrib fr33z00 <https://www.github.com/fr33z00>
 */

// liste des formulaires fixes au 1er affichage dossier patient pour JS
$p['page']['listeForms']=array('chiroATCD','baseSynthese');

$form_chiroATCD = new msForm();
$form_chiroATCD->setFormIDbyName($p['page']['formName_chiroATCD']='chiroATCD');
$form_chiroATCD->getPrevaluesForPatient($p['page']['patient']['id']);
$p['page']['formData_chiroATCD']=$form_chiroATCD->getForm();

$form_baseSynthese = new msForm();
$form_baseSynthese->setFormIDbyName($p['page']['formName_baseSynthese']='baseSynthese');
$form_baseSynthese->getPrevaluesForPatient($p['page']['patient']['id']);
$p['page']['formData_baseSynthese']=$form_baseSynthese->getForm();

$typeCs_csChiro = new msData;
$p['page']['typeCs_csChiro']=$typeCs_csChiro->getDataTypesFromCatName('csChiro', array('id','label', 'formValues'));

$data=new msData;
$reglements=$data->getDataTypesFromCatName('porteursReglement', array('id', 'module', 'label', 'description', 'formValues'));
foreach ($reglements as $v) {
    if ($v['module']=='chiro') {
        $p['page']['formReglement'][]=$v;
    }
}

