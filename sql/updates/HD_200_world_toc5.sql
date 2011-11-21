DELETE FROM `spell_script_names` WHERE spell_id IN (66515, 66867, 67534, 67830, 66482);
INSERT INTO `spell_script_names` VALUES
(66867, 'spell_eadric_hammer_of_righteous'), -- Hammer can be picked by target if isn't under HoJ effect
(66515, 'spell_paletress_shield'),           -- Reflect 25% of abosorbed damage
(67534, 'spell_toc5_hex_mending'),           -- Hex of mending spell effect
(67830, 'spell_toc5_ride_mount'),            -- Allow ride only if a Lance is equiped
(66482, 'spell_toc5_defend');                -- Add visual shields depending on stack size

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 66905;
INSERT INTO `spell_linked_spell` VALUES
(66905, -66904, 0, 'Eadric Hammer of Righteous');  -- Remove the Hammer of Righteous spell after using it

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (66905, 67705, 67715, 66798);
INSERT INTO `conditions` VALUES
(13, 0, 66905, 0, 18, 1, 35119, 0, 0, '', 'Eadric Hammer of Rigtheous'), -- Target Eadric with Hammer of Righteous
(13, 0, 66798, 0, 18, 1, 35005, 0, 0, '', 'The Black Kinght - Deaths Respite'),
(13, 0, 66798, 0, 18, 1, 35004, 0, 0, '', 'The Black Kinght - Deaths Respite'),
(13, 0, 67705, 0, 18, 2, 35005, 0, 0, '', 'The Black Kinght - Raise Arelas Brightstar'),
(13, 0, 67715, 0, 18, 2, 35004, 0, 0, '', 'The Black Kinght - Raise Arelas Brightstar');

-- Achievements
DELETE FROM achievement_criteria_data WHERE criteria_id IN (11863, 11420, 12439, 11858);
DELETE FROM achievement_criteria_data WHERE criteria_id BETWEEN 12298 AND 12306;
DELETE FROM achievement_criteria_data WHERE criteria_id BETWEEN 12310 AND 12324;
DELETE FROM achievement_criteria_data WHERE criteria_id BETWEEN 11904 AND 11927;
INSERT INTO `achievement_criteria_data` VALUES
-- Champion achievements (Normal)
(11420, 18, 0, 0, ''),
(12298, 18, 0, 0, ''),
(12299, 18, 0, 0, ''),
(12300, 18, 0, 0, ''),
(12301, 18, 0, 0, ''),
(12302, 18, 0, 0, ''),
(12303, 18, 0, 0, ''),
(12304, 18, 0, 0, ''),
(12305, 18, 0, 0, ''),
(12306, 18, 0, 0, ''),
-- Champion achievements (Hero)
(12310, 18, 0, 0, ''),
(12311, 18, 0, 0, ''),
(12312, 18, 0, 0, ''),
(12313, 18, 0, 0, ''),
(12314, 18, 0, 0, ''),
(12318, 18, 0, 0, ''),
(12319, 18, 0, 0, ''),
(12320, 18, 0, 0, ''),
(12321, 18, 0, 0, ''),
(12322, 18, 0, 0, ''),
-- Memories achievment
(11863, 18, 0, 0, ''),
(11904, 18, 0, 0, ''),
(11905, 18, 0, 0, ''),
(11906, 18, 0, 0, ''),
(11907, 18, 0, 0, ''),
(11908, 18, 0, 0, ''),
(11909, 18, 0, 0, ''),
(11910, 18, 0, 0, ''),
(11911, 18, 0, 0, ''),
(11912, 18, 0, 0, ''),
(11913, 18, 0, 0, ''),
(11914, 18, 0, 0, ''),
(11915, 18, 0, 0, ''),
(11916, 18, 0, 0, ''),
(11917, 18, 0, 0, ''),
(11918, 18, 0, 0, ''),
(11919, 18, 0, 0, ''),
(11920, 18, 0, 0, ''),
(11921, 18, 0, 0, ''),
(11922, 18, 0, 0, ''),
(11923, 18, 0, 0, ''),
(11924, 18, 0, 0, ''),
(11925, 18, 0, 0, ''),
(11926, 18, 0, 0, ''),
(11927, 18, 0, 0, ''),
-- Champion achievements (Hero)
(12310, 12, 1, 0, ''),
(12311, 12, 1, 0, ''),
(12312, 12, 1, 0, ''),
(12313, 12, 1, 0, ''),
(12314, 12, 1, 0, ''),
(12315, 12, 1, 0, ''),
(12316, 12, 1, 0, ''),
(12317, 12, 1, 0, ''),
(12318, 12, 1, 0, ''),
(12319, 12, 1, 0, ''),
(12320, 12, 1, 0, ''),
(12321, 12, 1, 0, ''),
(12322, 12, 1, 0, ''),
(12323, 12, 1, 0, ''),
(12324, 12, 1, 0, ''),
(12439, 12, 1, 0, ''),
-- Faceroller achievement
(11858, 12, 1, 0, ''),
-- Memories achievement
(11863, 12, 1, 0, ''),
(11904, 12, 1, 0, ''),
(11905, 12, 1, 0, ''),
(11906, 12, 1, 0, ''),
(11907, 12, 1, 0, ''),
(11908, 12, 1, 0, ''),
(11909, 12, 1, 0, ''),
(11910, 12, 1, 0, ''),
(11911, 12, 1, 0, ''),
(11912, 12, 1, 0, ''),
(11913, 12, 1, 0, ''),
(11914, 12, 1, 0, ''),
(11915, 12, 1, 0, ''),
(11916, 12, 1, 0, ''),
(11917, 12, 1, 0, ''),
(11918, 12, 1, 0, ''),
(11919, 12, 1, 0, ''),
(11920, 12, 1, 0, ''),
(11921, 12, 1, 0, ''),
(11922, 12, 1, 0, ''),
(11923, 12, 1, 0, ''),
(11924, 12, 1, 0, ''),
(11925, 12, 1, 0, ''),
(11926, 12, 1, 0, ''),
(11927, 12, 1, 0, '');

-- Script Names for ArgentSoilders
UPDATE creature_template SET ScriptName = 'npc_argent_monk' WHERE entry = 35305;
UPDATE creature_template SET ScriptName = 'npc_argent_lightwielder' WHERE entry = 35309;
UPDATE creature_template SET ScriptName = 'npc_argent_priest' WHERE entry = 35307;
UPDATE `creature_template` SET `mechanic_immune_mask` = '650854267' WHERE `entry` IN (35305, 35309, 35307, 12488, 12439, 12448);

DELETE FROM `creature_template_addon` WHERE (`entry` IN (35614, 35311));
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(35614, '', 0, 0, 0, 0, 67782), -- Desecration Stalker (Periodic Desecration)
(35311, '', 0, 0, 0, 0, 67196); -- Fountain of Light (Periodic Light rain)
-- Set Desecration Stalker as invisible passive trigger
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 35614;
-- Set Light Fountain as passive (Flags not working, why?)
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 35311;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=35311 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35311, 0, 0, 0, 25, 0, 100, 7, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fountain of Light - Set passive');

-- Memories equip templates
UPDATE `creature_template` SET `equipment_id` = 22 WHERE `entry` IN  (34942, 35531);
UPDATE `creature_template` SET `equipment_id` = 1431 WHERE `entry` IN (35028, 35541);
UPDATE `creature_template` SET `equipment_id` = 1178 WHERE `entry` IN (35030, 35530);
UPDATE `creature_template` SET `equipment_id` = 1330 WHERE `entry` IN (35031, 35536);
UPDATE `creature_template` SET `equipment_id` = 1808 WHERE `entry` IN (35036, 35543);
UPDATE `creature_template` SET `equipment_id` = 1496 WHERE `entry` IN (35037, 35535);
UPDATE `creature_template` SET `equipment_id` = 2216 WHERE `entry` IN (35042, 35533);
UPDATE `creature_template` SET `equipment_id` = 714 WHERE `entry` IN (35045, 35534);
UPDATE `creature_template` SET `equipment_id` = 271 WHERE `entry` IN (35049, 35529);

-- Update spells for players mounts
UPDATE `creature_template` SET `spell1` = 68505, `spell2` = 62575, `spell3` = 68282, `spell4` = 66482 WHERE `entry` IN (35644, 36558);

-- Allow mounted combat on Faction champions and Grand Faction Champions
UPDATE `creature_template` SET `type_flags` = 2048, `ScriptName` = 'generic_vehicleAI_toc5' WHERE `entry` IN (35328, 35329, 35331, 35332, 35330, 35314, 35325, 35327, 35323, 35326);
UPDATE `creature_template` SET `type_flags` = 2048 WHERE `entry` IN (35572, 35569, 35571, 35570, 35617, 34705, 34702, 34701, 34657, 34703);
-- For Hero entries
CREATE TABLE `entry_temp` (`id` INT);
INSERT INTO `entry_temp` SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry` IN (35572, 35569, 35571, 35570, 35617, 34705, 34702, 34701, 34657, 34703);
UPDATE `creature_template` SET `type_flags` = 2048 WHERE `entry` IN (SELECT id FROM`entry_temp`);
DROP TABLE `entry_temp`;

-- Set main gate closed by default
UPDATE `gameobject` SET `state` = 1 WHERE `guid` = 150081;

-- Waypoints for Black Knight Gryphon
DELETE FROM `script_waypoint` WHERE `entry` = 35491;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(35491,1,781.513,657.99,466.821,0,''),
(35491,2,759.005,665.142,462.541,0,''),
(35491,3,732.937,657.164,452.678,0,''),
(35491,4,717.491,646.009,440.137,0,''),
(35491,5,707.57,628.978,431.129,0,''),
(35491,6,705.164,603.628,422.957,0,''),
(35491,7,716.351,588.49,420.802,0,''),
(35491,8,741.703,580.168,420.523,0,''),
(35491,9,761.634,586.383,422.206,0,''),
(35491,10,775.983,601.992,423.606,0,''),
(35491,11,769.051,624.686,420.035,0,''),
(35491,12,756.582,631.692,412.53,0,''),
(35491,13,744.841,634.505,411.575,2000,''),
(35491,14,759.005,665.142,462.541,0,''),
(35491,15,747.127,813.51,460.707,0,'');

/*
Convertir a script_text
(35004,1,0,'Los expectadores de la Alianza animan a %t.',12,0,100,1,0,13838,'Announcer - Alliance Cheers 1'),
(35004,1,1,'Los expectadores de la Alianza animan a %t.',12,0,100,1,0,13840,'Announcer - Alliance Cheers 2'),
(35004,2,0,'Los expectadores de la Horda animan a %t.',12,0,100,1,0,13839,'Announcer - Horde Cheers 1'),
(35004,2,1,'Los expectadores de la Horda animan a %t.',12,0,100,1,0,13841,'Announcer - Horde Cheers 2'),
(@PALETRESS,6,0,'�Rememoraci�n oscura comienza a lanzar Pesadilla L�cida!',41,0,100,0,0,0,'Paletress - Warning - Waking nightmare'),
*/
SET @TIRION       := 34996;
SET @THRALL       := 34994;
SET @GARROSH      := 34995;
SET @VARIAN       := 34992;
SET @JAINA        := 34990;

SET @EADRIC       := 35119;
SET @PALETRESS    := 34928;
SET @BLACK_KNIGHT := 35451;

-- Texts
DELETE FROM creature_text WHERE entry IN (35004, 35005, @TIRION, @THRALL, @GARROSH , @VARIAN , @JAINA, @EADRIC, @PALETRESS, @BLACK_KNIGHT);
INSERT INTO creature_text (entry, groupid, id, TEXT, TYPE, LANGUAGE, probability, emote, duration, sound, COMMENT) VALUES
-- INTROS

-- -- Mounted Gauntlet
(35004,0,0,'Los Atracasol est�n orgullosos de presentar a sus representantes en estas pruebas de combate.',14,0,100,1,0,0,'Announcer - Player Horde Champions - Intro'),
(35005,0,0,'El Pacto de Plata est� encantado de presentar a sus luchadores para este evento, Alto Se�or.',14,0,100,1,0,0,'Announcer - Player Alliance Champions - Intro'),
(@TIRION,0,0,'Bienvenidos campeones. Hoy, ante los ojos de vuestros lideres y compa�eros os probareis como combatientes dignos.',14,0,100,1,0,0,'Tirion - Intro'),
-- -- -- Horde Version
(@THRALL,0,0,'�Luchad con fuerza, Horda! �Lok\'tar Ogar!',14,0,100,1,0,0,'Thrall - Intro'),
(@GARROSH,0,0,'�Por fin! Un combate digno de ser contemplado.',12,0,100,1,0,0,'Garrosh - Intro'),
(@VARIAN,0,0,'No he venido hasta aqu� para ver animales despezandose entre ellos sin ning�n criterio, Tirion.',12,0,100,1,0,0,'Varian - Intro'),
(@JAINA,0,0,'Son combatientes dignos, ya lo ver�s.',12,0,100,1,0,0,'Jaina - Intro'),
-- -- // Horde Version
(@TIRION,1,0,'Primero os enfrentareis a tres de los Grandes Campeones del Torneo. Estos feroces contendientes han derrotado a todos los dem�s hasta alcanzar la m�xima habilidad en la justa.',14,0,100,1,0,0,'Tirion - Intro'),
-- -- Horde Version
(35004,1,0,'Aqu� llega el peque�o pero mortal Ambrose Chisparrayo, Gran Campe�n de Gnomeregan.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro'),
(35004,2,0,'Colosos, el enorme Gran Campe�n de El Exodar, est� saliendo por la puerta.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro'),
(35004,3,0,'Est� entrando en la arena la Gran Campeona de Darnassus, la h�bil centinela Jaelyne Unicanto.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro'),
(35004,4,0,'Fuerte y orgulloso, �aclamad al mariscal Jacob Alerius, el Gran Campe�n de Ventormenta!',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro'),
(35004,5,0,'Hoy el poder de los enanos est� representado por la Gran Campeona de Forjaz, Lana Martillotenaz.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro'),
-- // Horde Version
-- -- Alliance Version
(35005,1,0,'�Saliendo por la puerta Eressea Cantoalba, h�bil maga y Gran Campeona de Lunargenta!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro'),
(35005,2,0,'�En lo alto de su kodo, aqu� esta el venerable Runok Ferocr�n, Gran Campe�n de Cima del Trueno!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro'),
(35005,3,0,'�Entrando en la arena el enjuto pero peligroso Zul\'tore, Campe�n de los Sen\'jin!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro'),
(35005,4,0,'�Presentamos al Gran Campe�n de Orgrimmar, Mokra el Trituracr�neos!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro'),
(35005,5,0,'�Representando la tenacidad de los Renegados, aqu� esta el Gran Campe�n de Entra�as, Mortacechador Visceri!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro'),
-- // Alliance version
-- // Mounted Gauntlet

-- -- Argent Challenge
(@TIRION,2,0,'�Buen combate! Vuestro pr�ximo reto viene de los mismisimos cargos de la Cruzada. Sereis puestos a prueba contra sus considerables habilidades.',14,0,100,1,0,0,'Tirion - Intro'),
-- -- -- Eadric
(35004,11,0,'Entrando en la arena, tenemos a un palad�n que no es un extra�o para los campos de batalla, ni los Campos del Torneo. �El gran campe�n de la Cruzada Argenta, Eadric el Puro!',14,0,100,1,0,0,'Announcer - Eadric - Intro'),
(35005,11,0,'Entrando en la arena, tenemos a un palad�n que no es un extra�o para los campos de batalla, ni los Campos del Torneo. �El gran campe�n de la Cruzada Argenta, Eadric el Puro!',14,0,100,1,0,0,'Announcer - Eadric - Intro'),
(@EADRIC,10,0,'�Aceptais el reto? �No hay vuelta atras!',12,0,100,1,0,16134,'Eadric - Intro'),
-- -- // Eadric
-- -- -- Paletress
(35004,12,0,'La siguiente combatiente no tiene rival alguno en su pasi�n al apoyar a la Luz. �Les entrego a la confesora Argenta Cabelloclaro!',14,0,100,1,0,0,'Announcer - Paletress - Intro'),
(35005,12,0,'La siguiente combatiente no tiene rival alguno en su pasi�n al apoyar a la Luz. �Les entrego a la confesora Argenta Cabelloclaro!',14,0,100,1,0,0,'Announcer - Paletress - Intro'),
(@PALETRESS,10,0,'Gracias buen heraldo. Tus palabras son muy amables.',12,0,100,1,0,16245,'Paletress - Intro'),
(@PALETRESS,11,0,'Que la luz me de fuerzas para ser un reto digno.',12,0,100,1,0,16246,'Paletress - Intro'),
-- -- // Paletress
(@TIRION,3,0,'�Podeis comenzar!',14,0,100,1,0,0,'Tirion - Intro'),
-- // Argent Challenge

-- -- Black Knight
(@TIRION,4,0,'Bien hecho. Habeis probado vuestra val�a hoy...',14,0,100,1,0,0,'Tirion - Intro'),
(35004,13,0,'�Qu� es eso que hay cerca de las vigas?',12,0,100,1,0,0,'Announcer - Black Knight - Intro'),
(35005,13,0,'�Qu� es eso que hay cerca de las vigas?',12,0,100,1,0,0,'Announcer - Black Knight - Intro'),
(@BLACK_KNIGHT,10,0,'Has estropeado mi gran entrada, rata.',12,0,100,1,0,16256,'Black Knight - Intro'),
(@TIRION,5,0,'�Qu� significa esto?',14,0,100,1,0,0,'Tirion - Intro'),
(@BLACK_KNIGHT,11,0,'�Realmente pensabas que derrotar�as a un agente del Rey Ex�nime en los campos de tu pat�tico torneo?',12,0,100,1,0,16257,'Black Knight - Intro'),
(@BLACK_KNIGHT,12,0,'He venido a terminar mi cometido.',12,0,100,1,0,16258,'Black Knight - Intro'),
(@GARROSH,10,0,'�Hacedlo picadillo!',14,0,100,1,0,0,'Garrosh - Black Knight - Intro'),
(@VARIAN,10,0,'�No os quedeis ah� mirando; matadlo!',14,0,100,1,0,0,'Varian - Black Knight - Intro'),
-- // Black Knight
-- //INTROS

-- COMBAT TEXTS
-- -- Eadric
(@EADRIC,1,0,'�Preparaos!',14,0,100,0,0,16135,'Eadric - Aggro'),
(@EADRIC,2,0,'�Martillo del honrado!',14,0,100,0,0,16136,'Eadric - Hammer'),
(@EADRIC,3,0,'�Tu! �Tienes que practicar m�s!',14,0,100,0,0,16137,'Eadric - Slay 1'),
(@EADRIC,3,1,'�No! �No! �Y otra vez no! �No es suficiente!',14,0,100,0,0,16138,'Eadric - Slay 2'),
(@EADRIC,4,0,'�Me rindo! Lo admito. Un trabajo excelente. �Puedo escaparme ya?',14,0,100,0,0,16139,'Eadric - Death'),
(@EADRIC,5,0,'%s comienza a irradiar luz. �Cubrios los ojos!',41,0,100,0,0,0,'Eadric - Warning - Radiance'),
(@EADRIC,6,0,'%s comienza a lanzar Martillo del Honrado sobre $N.',41,0,100,0,0,0,'Eadric - Warning - Hammer'),
-- // Eadric
-- -- Paletress
(@PALETRESS,1,0,'Bien entonces. Comencemos.',14,0,100,0,0,16247,'Paletress - Aggro'),
(@PALETRESS,2,0,'Aprovecha este tiempo para pensar en tus haza�as.',14,0,100,0,0,16248,'Paletress - Summon Memory'),
(@PALETRESS,3,0,'Descansa.',14,0,100,0,0,16250,'Paletress - Slay 1'),
(@PALETRESS,3,1,'Ve en paz.',14,0,100,0,0,16251,'Paletress - Slay 2'),
(@PALETRESS,4,0,'�Un trabajo excelente!',14,0,100,0,0,16252,'Paletress - Death'),
(@PALETRESS,5,0,'Incluso el recuerdo m�s oscuro se desvanece al afrontarlo.',14,0,100,0,0,16249,'Paletress - Memory dies'),
-- // Paletress
-- -- Black Knight
(@BLACK_KNIGHT,1,0,'�Esta farsa acaba aqu�!',14,0,100,0,0,16259,'Black Knight - Aggro'),
(@BLACK_KNIGHT,2,0,'Pat�tico.',14,0,100,0,0,16260,'Black Knight - Slay 1'),
(@BLACK_KNIGHT,2,1,'�Qu� desperdicio!',14,0,100,0,0,16261,'Black Knight - Slay 2'),
(@BLACK_KNIGHT,3,0,'�Me estorbaba esa carne putrefacta!',14,0,100,0,0,16262,'Black Knight - Skeleton Res'),
(@BLACK_KNIGHT,4,0,'No necesito huesos para vencerte.',14,0,100,0,0,16263,'Black Knight - Ghost Res'),
(@BLACK_KNIGHT,5,0,'�No! No debo fallar... otra vez...',14,0,100,0,0,16264,'Black Knight - Death');
-- // Black Knight
-- //COMBAT TEXTS