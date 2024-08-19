-- Fix spells timers for Hemathion (18692)
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 18692) AND (`source_type` = 0) AND (`id` IN (0, 1, 2));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18692, 0, 0, 0, 0, 0, 100, 0, 5000, 15000, 5000, 35000, 0, 0, 11, 9573, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Hemathion - In Combat - Cast Flame Breath'),
(18692, 0, 1, 0, 0, 0, 100, 0, 5000, 15000, 40000, 60000, 0, 0, 11, 14100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Hemathion - In Combat - Cast Terrifying Roar'),
(18692, 0, 2, 0, 12, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 38895, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Hemathion - Between 0-20% Health - Cast Devour (No Repeat)');
