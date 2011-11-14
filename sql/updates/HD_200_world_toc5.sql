DELETE FROM `spell_script_names` WHERE spell_id IN (66867, 67534, 67830, 66482, 63130, 63131, 63132, 62575, 68282, 68284, 62626);
INSERT INTO `spell_script_names` VALUES
(66867, 'spell_eadric_hammer_of_righteous'), -- Hammer can be picked by target if isn't under HoJ effect
(66515, 'spell_paletress_shield'),           -- Reflect 25% of abosorbed damage
(67534, 'spell_toc5_hex_mending'),           -- Hex of mending spell effect
(67830, 'spell_toc5_ride_mount'),            -- Allow ride only if a Lance is equiped
(66482, 'spell_toc5_defend');                -- Add visual shields depending on stack size

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 66905;
INSERT INTO `spell_linked_spell` VALUES
(66905, -66904, 0, 'Eadric Hammer of Righteous');  -- Remove the Hammer of Righteous spell after using it

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 13 AND SourceEntry = 66905;
INSERT INTO `conditions` VALUES
(13, 0, 66905, 0, 18, 1, 35119, 0, 0, '', 'Eadric Hammer of Rigtheous'); -- Target Eadric with Hammer of Righteous

-- Achievements
DELETE FROM achievement_criteria_data WHERE criteria_id IN (12310, 12311, 12312, 12313, 12314, 12318, 12319, 12320, 12321, 12322);
INSERT INTO `achievement_criteria_data` VALUES
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
(12310, 12, 1, 0, ''),
(12311, 12, 1, 0, ''),
(12312, 12, 1, 0, ''),
(12313, 12, 1, 0, ''),
(12314, 12, 1, 0, ''),
(12318, 12, 1, 0, ''),
(12319, 12, 1, 0, ''),
(12320, 12, 1, 0, ''),
(12321, 12, 1, 0, ''),
(12322, 12, 1, 0, ''),
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