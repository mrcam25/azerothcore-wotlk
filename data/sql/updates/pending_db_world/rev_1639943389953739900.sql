INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1639943389953739900');

DELETE FROM `broadcast_text_locale` WHERE `id` IN (80000,80001,80002,80003,80004,80005,80006,80007,91243);

UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 435 AND `OptionID` IN (0,6,10,11);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 721 AND `OptionID` IN (2,4,5,6,8,12);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 1951 AND `OptionID` IN (2,4,5,6,7,9,10);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 2121 AND `OptionID` IN (0,4,6,9);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 2352 AND `OptionID` IN (0,3,5,8);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 4781 AND `OptionID` IN (1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 7633 AND `OptionID` IN (0,3,5,7);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 7777 AND `OptionID` IN (0,3,5,7);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 8282 AND `OptionID` IN (4,6);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 10043 AND `OptionID` IN (1,7,10);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID` = 0 WHERE `MenuID` = 10769 AND `OptionID` IN (0,4,5,8,10,11);

UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 2307 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 10162 AND `GroupID` = 14 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 11940 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 11941 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 11943 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 17804 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 19064 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 20415 AND `GroupID` IN (0,1) AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 20464 AND `GroupID` = 3 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 32743 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 0 WHERE `CreatureID` = 37072 AND `GroupID` = 0 AND `ID` = 0;
