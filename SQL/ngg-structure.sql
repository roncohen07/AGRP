/*
 Navicat MySQL Data Transfer

 Source Server         : ngg-server
 Source Server Type    : MariaDB
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : ngg

 Target Server Type    : MariaDB
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 27/01/2024 12:04:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 911calls
-- ----------------------------
DROP TABLE IF EXISTS `911calls`;
CREATE TABLE `911calls`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Caller` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N/A',
  `Phone` int(11) NOT NULL DEFAULT 0,
  `Area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `MainZone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Type` int(11) NOT NULL DEFAULT 0,
  `Time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ac
-- ----------------------------
DROP TABLE IF EXISTS `ac`;
CREATE TABLE `ac`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DBID` int(11) NULL DEFAULT 0,
  `timestamp` timestamp NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT 0,
  `flags` int(11) NULL DEFAULT 0,
  `extraid` int(11) NULL DEFAULT 0,
  `totalfired` int(11) NULL DEFAULT NULL,
  `hits` int(11) NULL DEFAULT 0,
  `rmisses` int(11) NULL DEFAULT 0,
  `tmisses` int(11) NULL DEFAULT 0,
  `ratio` int(11) NULL DEFAULT 0,
  `Image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Video` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`DBID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Online` int(11) NOT NULL DEFAULT 0,
  `UpdateDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RegiDate` datetime NULL DEFAULT NULL,
  `LastLogin` datetime NULL DEFAULT NULL,
  `Username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Salt` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LastPassChange` datetime NOT NULL DEFAULT '2018-07-09 05:06:42',
  `Email` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'none@gmail.com',
  `IP` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0',
  `SecureIP` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0',
  `Registered` int(11) NOT NULL DEFAULT 0,
  `ConnectedTime` int(11) NOT NULL DEFAULT 0,
  `Sex` int(11) NOT NULL DEFAULT 1,
  `BirthDate` date NULL DEFAULT '0000-00-00',
  `Band` int(11) NOT NULL DEFAULT 0,
  `PermBand` int(11) NOT NULL DEFAULT 0,
  `Warnings` int(11) NOT NULL DEFAULT 0,
  `Disabled` int(11) NOT NULL DEFAULT 0,
  `Level` int(11) NOT NULL DEFAULT 1,
  `AdminLevel` int(11) NOT NULL DEFAULT 0,
  `ASM` int(11) NOT NULL DEFAULT 0,
  `SeniorModerator` int(11) NOT NULL DEFAULT 0,
  `Helper` int(11) NOT NULL DEFAULT 0,
  `DonateRank` int(11) NOT NULL DEFAULT 0,
  `Respect` int(11) NOT NULL DEFAULT 0,
  `Money` bigint(11) NOT NULL DEFAULT 5000,
  `Bank` bigint(11) NOT NULL DEFAULT 20000,
  `pHealth` float(10, 5) NOT NULL DEFAULT 50.00000,
  `pArmor` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pSHealth` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Int` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  `Model` int(11) NOT NULL DEFAULT 299,
  `SPos_x` float(20, 5) NOT NULL DEFAULT 0.00000,
  `SPos_y` float(20, 5) NOT NULL DEFAULT 0.00000,
  `SPos_z` float(20, 5) NOT NULL DEFAULT 0.00000,
  `SPos_r` float(20, 5) NOT NULL DEFAULT 0.00000,
  `BanAppealer` int(11) NOT NULL DEFAULT 0,
  `PR` int(11) NOT NULL DEFAULT 0,
  `HR` int(11) NOT NULL DEFAULT 0,
  `AP` int(11) NOT NULL DEFAULT 0,
  `Security` int(11) NOT NULL DEFAULT 0,
  `ShopTech` int(11) NOT NULL DEFAULT 0,
  `FactionModerator` int(11) NOT NULL DEFAULT 0,
  `GangModerator` int(11) NOT NULL DEFAULT 0,
  `Undercover` int(11) NOT NULL DEFAULT 0,
  `TogReports` int(11) NOT NULL DEFAULT 0,
  `Radio` int(11) NOT NULL DEFAULT 0,
  `RadioFreq` int(11) NOT NULL DEFAULT 0,
  `UpgradePoints` int(11) NOT NULL DEFAULT 0,
  `Origin` int(11) NOT NULL DEFAULT 0,
  `Muted` int(11) NOT NULL DEFAULT 0,
  `Crimes` int(11) NOT NULL DEFAULT 0,
  `Accent` int(11) NOT NULL DEFAULT 0,
  `CHits` int(11) NOT NULL DEFAULT 0,
  `FHits` int(11) NOT NULL DEFAULT 0,
  `Arrested` int(11) NOT NULL DEFAULT 0,
  `Phonebook` int(11) NOT NULL DEFAULT 0,
  `LottoNr` int(11) NOT NULL DEFAULT 0,
  `Fishes` int(11) NOT NULL DEFAULT 0,
  `BiggestFish` int(11) NOT NULL DEFAULT 0,
  `Job` int(11) NOT NULL DEFAULT 0,
  `Job2` int(11) NOT NULL DEFAULT 0,
  `Job3` int(11) NOT NULL DEFAULT 0,
  `Paycheck` int(11) NOT NULL DEFAULT 0,
  `HeadValue` int(11) NOT NULL DEFAULT 0,
  `JailTime` int(11) NOT NULL DEFAULT 0,
  `WRestricted` int(11) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Crates` int(11) NOT NULL DEFAULT 0,
  `Nation` int(1) NOT NULL DEFAULT 0,
  `Leader` int(11) NOT NULL DEFAULT -1,
  `Member` int(11) NOT NULL DEFAULT -1,
  `Division` int(11) NOT NULL DEFAULT -1,
  `Badge` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Rank` int(11) NOT NULL DEFAULT -1,
  `DetSkill` int(11) NOT NULL DEFAULT 0,
  `SexSkill` int(11) NOT NULL DEFAULT 0,
  `BoxSkill` int(11) NOT NULL DEFAULT 0,
  `LawSkill` int(11) NOT NULL DEFAULT 0,
  `MechSkill` int(11) NOT NULL DEFAULT 0,
  `TruckSkill` int(11) NOT NULL DEFAULT 0,
  `ArmsSkill` int(11) NOT NULL DEFAULT 0,
  `FishSkill` int(11) NOT NULL DEFAULT 0,
  `FightingStyle` int(11) NOT NULL DEFAULT 0,
  `PhoneNr` int(11) NOT NULL DEFAULT 0,
  `Apartment` int(11) NOT NULL DEFAULT -1,
  `Apartment2` int(11) NOT NULL DEFAULT -1,
  `Apartment3` int(11) NOT NULL DEFAULT -1,
  `Renting` int(11) NOT NULL DEFAULT -1,
  `CarLic` int(11) NOT NULL DEFAULT 0,
  `FlyLic` int(11) NOT NULL DEFAULT 0,
  `BoatLic` int(11) NOT NULL DEFAULT 1,
  `FishLic` int(11) NOT NULL DEFAULT 1,
  `CheckCash` int(11) NOT NULL DEFAULT 0,
  `Checks` int(11) NOT NULL DEFAULT 0,
  `GunLic` int(11) NOT NULL DEFAULT 1,
  `Gun0` int(11) NOT NULL DEFAULT 0,
  `Gun1` int(11) NOT NULL DEFAULT 0,
  `Gun2` int(11) NOT NULL DEFAULT 0,
  `Gun3` int(11) NOT NULL DEFAULT 0,
  `Gun4` int(11) NOT NULL DEFAULT 0,
  `Gun5` int(11) NOT NULL DEFAULT 0,
  `Gun6` int(11) NOT NULL DEFAULT 0,
  `Gun7` int(11) NOT NULL DEFAULT 0,
  `Gun8` int(11) NOT NULL DEFAULT 0,
  `Gun9` int(11) NOT NULL DEFAULT 0,
  `Gun10` int(11) NOT NULL DEFAULT 0,
  `Gun11` int(11) NOT NULL DEFAULT 0,
  `DrugsTime` int(11) NOT NULL DEFAULT 0,
  `LawyerTime` int(11) NOT NULL DEFAULT 0,
  `LawyerFreeTime` int(11) NOT NULL DEFAULT 0,
  `MechTime` int(11) NOT NULL DEFAULT 0,
  `SexTime` int(11) NOT NULL DEFAULT 0,
  `PayDay` int(11) NOT NULL DEFAULT 0,
  `PayDayHad` int(11) NOT NULL DEFAULT 0,
  `CDPlayer` int(11) NOT NULL DEFAULT 0,
  `Dice` int(11) NOT NULL DEFAULT 0,
  `Spraycan` int(11) NOT NULL DEFAULT 0,
  `Rope` int(11) NOT NULL DEFAULT 0,
  `Cigars` int(11) NOT NULL DEFAULT 0,
  `Sprunk` int(11) NOT NULL DEFAULT 0,
  `Bombs` int(11) NOT NULL DEFAULT 0,
  `Wins` int(11) NOT NULL DEFAULT 0,
  `Loses` int(11) NOT NULL DEFAULT 0,
  `Tutorial` int(11) NOT NULL DEFAULT 0,
  `OnDuty` int(11) NOT NULL DEFAULT 0,
  `Hospital` int(11) NOT NULL DEFAULT 0,
  `MarriedID` int(11) NOT NULL DEFAULT 0,
  `ContractBy` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `ContractDetail` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `WantedLevel` int(11) NOT NULL DEFAULT 0,
  `Insurance` int(11) NOT NULL DEFAULT 0,
  `911Muted` int(1) NOT NULL DEFAULT 0,
  `NewMuted` int(11) NOT NULL DEFAULT 0,
  `NewMutedTotal` int(11) NOT NULL DEFAULT 0,
  `AdMuted` int(11) NOT NULL DEFAULT 0,
  `AdMutedTotal` int(11) NOT NULL DEFAULT 0,
  `HelpMute` int(11) NOT NULL DEFAULT 0,
  `ReportMuted` int(11) NOT NULL DEFAULT 0,
  `ReportMutedTotal` int(11) NOT NULL DEFAULT 0,
  `ReportMutedTime` int(11) NOT NULL DEFAULT 0,
  `VIPMuted` int(11) NOT NULL DEFAULT 0,
  `VIPMutedTime` int(11) NOT NULL DEFAULT 0,
  `GiftTime` int(11) NOT NULL DEFAULT 0,
  `AdvisorDutyHours` int(11) NOT NULL DEFAULT 0,
  `AcceptedHelp` int(11) NOT NULL DEFAULT 0,
  `AcceptReport` int(11) NOT NULL DEFAULT 0,
  `ShopTechOrders` int(11) NOT NULL DEFAULT 0,
  `TrashReport` int(11) NOT NULL DEFAULT 0,
  `GangWarn` int(11) NOT NULL DEFAULT 0,
  `CSFBanned` int(11) NOT NULL DEFAULT 0,
  `VIPInviteDay` int(11) NOT NULL DEFAULT 0,
  `TempVIP` int(11) NOT NULL DEFAULT 0,
  `BuddyInvite` int(11) NOT NULL DEFAULT 0,
  `Tokens` int(11) NOT NULL DEFAULT 0,
  `PTokens` int(11) NOT NULL DEFAULT 0,
  `TriageTime` int(11) NOT NULL DEFAULT 0,
  `PrisonedBy` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `PrisonReason` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `TaxiLicense` int(11) NOT NULL DEFAULT 0,
  `TicketTime` int(11) NOT NULL DEFAULT 0,
  `Screwdriver` int(11) NOT NULL DEFAULT 0,
  `Smslog` int(11) NOT NULL DEFAULT 0,
  `Wristwatch` int(11) NOT NULL DEFAULT 0,
  `Surveillance` int(11) NOT NULL DEFAULT 0,
  `Tire` int(11) NOT NULL DEFAULT 0,
  `Firstaid` int(11) NOT NULL DEFAULT 0,
  `Rccam` int(11) NOT NULL DEFAULT 0,
  `Receiver` int(11) NOT NULL DEFAULT 0,
  `GPS` int(11) NOT NULL DEFAULT 0,
  `Sweep` int(11) NOT NULL DEFAULT 0,
  `SweepLeft` int(11) NOT NULL DEFAULT 0,
  `Bugged` int(11) NOT NULL DEFAULT 0,
  `pWExists` int(11) NOT NULL DEFAULT 0,
  `pWSeeds` int(11) NOT NULL DEFAULT 0,
  `Warrants` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `JudgeJailTime` int(11) NOT NULL DEFAULT 0,
  `JudgeJailType` int(11) NOT NULL DEFAULT 0,
  `BeingSentenced` int(11) NOT NULL DEFAULT 0,
  `ProbationTime` int(11) NOT NULL DEFAULT 0,
  `DMKills` int(11) NOT NULL DEFAULT 0,
  `Order` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `OrderConfirmed` int(11) NOT NULL DEFAULT 0,
  `CallsAccepted` int(11) NOT NULL DEFAULT 0,
  `PatientsDelivered` int(11) NOT NULL DEFAULT 0,
  `LiveBanned` int(11) NOT NULL DEFAULT 0,
  `FreezeBank` int(11) NOT NULL DEFAULT 0,
  `FreezeHouse` int(11) NOT NULL DEFAULT 0,
  `FreezeCar` int(11) NOT NULL DEFAULT 0,
  `Hydration` int(11) NOT NULL DEFAULT 0,
  `DoubleEXP` int(11) NOT NULL DEFAULT 0,
  `EXPToken` int(11) NOT NULL DEFAULT 0,
  `RacePlayerLaps` int(11) NOT NULL DEFAULT 0,
  `Ringtone` int(11) NOT NULL DEFAULT 0,
  `VIPM` int(11) NOT NULL DEFAULT 0,
  `VIPMO` int(11) NOT NULL DEFAULT 0,
  `VIPExpire` int(11) NOT NULL DEFAULT 0,
  `VIPSold` int(11) NOT NULL DEFAULT 0,
  `GVip` int(11) NOT NULL DEFAULT 0,
  `Speedo` int(11) NOT NULL DEFAULT 0,
  `Firework` int(11) NOT NULL DEFAULT 0,
  `Boombox` int(11) NOT NULL DEFAULT 0,
  `DrawChance` int(11) NOT NULL DEFAULT 0,
  `GoldBoxTokens` int(11) NOT NULL DEFAULT 0,
  `RewardHours` float(10, 5) NOT NULL DEFAULT 0.00000,
  `DMRMuted` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `Watchdog` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `CarsRestricted` tinyint(2) NOT NULL DEFAULT 0,
  `Flagged` tinyint(2) NOT NULL DEFAULT 0,
  `LastCarWarning` int(11) NOT NULL DEFAULT 0,
  `CarWarns` int(11) NOT NULL DEFAULT 0,
  `Hours` int(11) NOT NULL DEFAULT 0,
  `Paper` int(11) NOT NULL DEFAULT 0,
  `MailEnabled` int(11) NOT NULL DEFAULT 1,
  `Mailbox` int(11) NOT NULL DEFAULT 0,
  `TreasureSkill` int(5) NOT NULL DEFAULT 0,
  `MetalDetector` int(5) NOT NULL DEFAULT 0,
  `HelpedBefore` int(11) NOT NULL DEFAULT 0,
  `Business` int(11) NOT NULL DEFAULT -1,
  `BusinessRank` int(11) NOT NULL DEFAULT -1,
  `pEventTokens` int(11) NOT NULL DEFAULT 0,
  `RHMutes` int(1) NOT NULL DEFAULT 0,
  `RHMuteTime` int(11) NOT NULL DEFAULT 0,
  `GiftCode` int(11) NOT NULL DEFAULT 0,
  `Table` int(11) NOT NULL DEFAULT 0,
  `OpiumSeeds` int(11) NOT NULL DEFAULT 0,
  `RawOpium` int(11) NOT NULL DEFAULT 0,
  `Pot` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL DEFAULT 0,
  `Meth` int(11) NOT NULL DEFAULT 0,
  `Ecstasy` int(11) NOT NULL DEFAULT 0,
  `Heroin` int(11) NOT NULL DEFAULT 0,
  `Syringe` int(11) NOT NULL DEFAULT 0,
  `Skins` int(11) NOT NULL DEFAULT 0,
  `Fitness` int(11) NOT NULL DEFAULT 0,
  `LastCharmReceived` int(11) NOT NULL DEFAULT 0,
  `ForcePasswordChange` int(11) NOT NULL DEFAULT 0,
  `Credits` int(11) NOT NULL DEFAULT 0,
  `ReceivedCredits` int(11) NOT NULL DEFAULT 0,
  `TotalCredits` int(11) NOT NULL DEFAULT 0,
  `HealthCare` int(11) NOT NULL DEFAULT 0,
  `Pin` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `RimMod` int(11) NOT NULL DEFAULT 0,
  `Tazer` int(11) NOT NULL DEFAULT 0,
  `Cuff` int(11) NOT NULL DEFAULT 0,
  `CarVoucher` int(11) NOT NULL DEFAULT 0,
  `ReferredBy` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `PendingRefReward` int(11) NOT NULL DEFAULT 0,
  `Refers` int(11) NOT NULL DEFAULT 0,
  `Famed` int(11) NOT NULL DEFAULT 0,
  `FamedMuted` int(11) NOT NULL DEFAULT 0,
  `DefendTime` int(11) NOT NULL DEFAULT 0,
  `PVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `VehicleSlot` int(11) NOT NULL DEFAULT 0,
  `ToySlot` int(11) NOT NULL DEFAULT 0,
  `RFLTeam` int(11) NOT NULL DEFAULT -1,
  `RFLTeamL` int(11) NOT NULL DEFAULT -1,
  `GiftVoucher` int(11) NOT NULL DEFAULT 0,
  `VehVoucher` int(11) NOT NULL DEFAULT 0,
  `SVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `GVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `FallIntoFun` int(11) NOT NULL DEFAULT 0,
  `HungerVoucher` int(11) NOT NULL DEFAULT 0,
  `BoughtCure` int(11) NOT NULL DEFAULT 0,
  `Vials` int(11) NOT NULL DEFAULT 0,
  `ShopCounter` int(11) NOT NULL DEFAULT 0,
  `ShopNotice` int(11) NOT NULL DEFAULT 0,
  `AdvertVoucher` int(11) NOT NULL DEFAULT 0,
  `SVIPExVoucher` int(11) NOT NULL DEFAULT 0,
  `GVIPExVoucher` int(11) NOT NULL DEFAULT 0,
  `VIPSellable` int(11) NOT NULL DEFAULT 0,
  `ReceivedPrize` int(11) NOT NULL DEFAULT 0,
  `VIPSpawn` int(11) NOT NULL DEFAULT 0,
  `FreeAdsDay` int(11) NOT NULL DEFAULT 0,
  `FreeAdsLeft` int(11) NOT NULL DEFAULT 0,
  `BuddyInvites` int(11) NOT NULL DEFAULT 0,
  `ReceivedBGift` int(11) NOT NULL DEFAULT 0,
  `pVIPJob` int(11) NOT NULL DEFAULT 1,
  `LastBirthday` int(11) NOT NULL DEFAULT 0,
  `Backpack` int(11) NOT NULL DEFAULT 0,
  `BEquipped` int(11) NOT NULL DEFAULT 0,
  `BStoredH` int(11) NOT NULL DEFAULT 0,
  `BStoredV` int(11) NOT NULL DEFAULT 0,
  `BItem0` int(11) NOT NULL DEFAULT 0,
  `BItem1` int(11) NOT NULL DEFAULT 0,
  `BItem2` int(11) NOT NULL DEFAULT 0,
  `BItem3` int(11) NOT NULL DEFAULT 0,
  `BItem4` int(11) NOT NULL DEFAULT 0,
  `BItem5` int(11) NOT NULL DEFAULT 0,
  `BItem6` int(11) NOT NULL DEFAULT 0,
  `BItem7` int(11) NOT NULL DEFAULT 0,
  `BItem8` int(11) NOT NULL DEFAULT 0,
  `BItem9` int(11) NOT NULL DEFAULT 0,
  `BItem10` int(11) NOT NULL DEFAULT 0,
  `BItem11` int(11) NOT NULL DEFAULT 0,
  `AccountRestricted` int(11) NOT NULL DEFAULT 0,
  `Watchlist` int(11) NOT NULL DEFAULT 0,
  `WatchlistTime` int(11) NOT NULL DEFAULT 0,
  `BRTimeout` int(11) NOT NULL DEFAULT 0,
  `pDigCooldown` int(11) NOT NULL DEFAULT 0,
  `ToolBox` int(11) NOT NULL DEFAULT 0,
  `CrowBar` int(11) NOT NULL DEFAULT 0,
  `CarLockPickSkill` int(11) NOT NULL DEFAULT 0,
  `LockPickVehCount` int(11) NOT NULL DEFAULT 0,
  `LockPickTime` int(11) NOT NULL DEFAULT 0,
  `SEC` int(11) NOT NULL DEFAULT 0,
  `BM` int(11) NOT NULL DEFAULT 0,
  `Isolated` int(11) NOT NULL DEFAULT 0,
  `WantedJailTime` int(11) NOT NULL DEFAULT 0,
  `WantedJailFine` int(11) NOT NULL DEFAULT 0,
  `NextNameChange` int(11) NOT NULL DEFAULT 0,
  `pExamineDesc` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `FavStation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pDedicatedPlayer` int(11) NOT NULL DEFAULT 0,
  `pDedicatedEnabled` int(11) NOT NULL DEFAULT 0,
  `pDedicatedMuted` int(11) NOT NULL DEFAULT 0,
  `pDedicatedWarn` int(11) NOT NULL DEFAULT 0,
  `mInventory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `mPurchaseCounts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `mCooldowns` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `mBoost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0',
  `mShopNotice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0',
  `zFuelCan` int(11) NOT NULL DEFAULT 0,
  `bTicket` int(11) NOT NULL DEFAULT 0,
  `JailedInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0',
  `JailedWeapons` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0',
  `pVIPMod` int(11) NOT NULL DEFAULT 0,
  `EmailConfirmed` int(11) NOT NULL DEFAULT 1,
  `EmailCount` int(11) NOT NULL DEFAULT 0,
  `Trickortreat` int(11) NOT NULL DEFAULT 0,
  `pBailPrice` int(11) NOT NULL DEFAULT 0,
  `VIPGunsCount` int(11) NOT NULL DEFAULT 0,
  `Wallpaper` int(11) NOT NULL DEFAULT 0,
  `DrugQuality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `ToggledChats` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `ChatboxSettings` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `ChatTog0` int(2) NOT NULL DEFAULT 0,
  `ChatTog1` int(2) NOT NULL DEFAULT 0,
  `ChatTog2` int(2) NOT NULL DEFAULT 0,
  `ChatTog3` int(2) NOT NULL DEFAULT 0,
  `ChatTog4` int(2) NOT NULL DEFAULT 0,
  `ChatTog5` int(2) NOT NULL DEFAULT 0,
  `ChatTog6` int(2) NOT NULL DEFAULT 0,
  `ChatTog7` int(2) NOT NULL DEFAULT 0,
  `ChatTog8` int(2) NOT NULL DEFAULT 0,
  `ChatTog9` int(2) NOT NULL DEFAULT 0,
  `ChatTog10` int(2) NOT NULL DEFAULT 0,
  `ChatTog11` int(2) NOT NULL DEFAULT 0,
  `ChatTog12` int(2) NOT NULL DEFAULT 0,
  `ChatTog13` int(2) NOT NULL DEFAULT 0,
  `ChatTog14` int(2) NOT NULL DEFAULT 0,
  `ChatTog15` int(2) NOT NULL DEFAULT 0,
  `ChatTog16` int(2) NOT NULL DEFAULT 0,
  `ChatTog17` int(2) NOT NULL DEFAULT 0,
  `ChatTog18` int(2) NOT NULL DEFAULT 0,
  `ChatTog19` int(2) NOT NULL DEFAULT 0,
  `ChatTog20` int(2) NOT NULL DEFAULT 0,
  `ChatTog21` int(2) NOT NULL DEFAULT 0,
  `ChatTog22` int(2) NOT NULL DEFAULT 0,
  `ChatTog23` int(2) NOT NULL DEFAULT 0,
  `GroupToy0` float NOT NULL DEFAULT 0,
  `GroupToy1` float NOT NULL DEFAULT 0,
  `GroupToy2` float NOT NULL DEFAULT 0,
  `GroupToy3` float NOT NULL DEFAULT 0,
  `GroupToy4` float NOT NULL DEFAULT 0,
  `GroupToy5` float NOT NULL DEFAULT 0,
  `GroupToy6` float NOT NULL DEFAULT 0,
  `GroupToy7` float NOT NULL DEFAULT 1,
  `GroupToy8` float NOT NULL DEFAULT 1,
  `GroupToy9` float NOT NULL DEFAULT 1,
  `GroupToyBone` int(4) NOT NULL DEFAULT 1,
  `BDrug0` int(11) NOT NULL DEFAULT 0,
  `BDrug1` int(11) NOT NULL DEFAULT 0,
  `BDrug2` int(11) NOT NULL DEFAULT 0,
  `BDrug3` int(11) NOT NULL DEFAULT 0,
  `BDrug4` int(11) NOT NULL DEFAULT 0,
  `BDrug5` int(11) NOT NULL DEFAULT 0,
  `BDrug6` int(11) NOT NULL DEFAULT 0,
  `BDrug7` int(11) NOT NULL DEFAULT 0,
  `BDrug8` int(11) NOT NULL DEFAULT 0,
  `BDrug9` int(11) NOT NULL DEFAULT 0,
  `BDrug10` int(11) NOT NULL DEFAULT 0,
  `BDrug11` int(11) NOT NULL DEFAULT 0,
  `BDrug12` int(11) NOT NULL DEFAULT 0,
  `BDrug13` int(11) NOT NULL DEFAULT 0,
  `PrisonSoap` int(11) NOT NULL DEFAULT 0,
  `PrisonSugar` int(11) NOT NULL DEFAULT 0,
  `PrisonBread` int(11) NOT NULL DEFAULT 0,
  `PrisonShank` int(11) NOT NULL DEFAULT 0,
  `PrisonShankOut` int(11) NOT NULL DEFAULT 0,
  `ShankUsages` int(11) NOT NULL DEFAULT 0,
  `PrisonWine` int(11) NOT NULL DEFAULT 0,
  `PrisonMWine` int(11) NOT NULL DEFAULT 0,
  `PrisonChisel` int(11) NOT NULL DEFAULT 0,
  `PrisonCellChisel` int(11) NOT NULL DEFAULT 0,
  `FishingSkill` int(11) NOT NULL DEFAULT 0,
  `FishWeight` int(11) NOT NULL DEFAULT 0,
  `GarbageSkill` int(11) NOT NULL DEFAULT 0,
  `PrisonDrugs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `PrisonCredits` int(11) NOT NULL DEFAULT 0,
  `PrisonMaterials` int(11) NOT NULL,
  `PrisonCell` int(11) NOT NULL,
  `PrisonWineTime` int(11) NOT NULL,
  `pLastPoll` int(11) NOT NULL DEFAULT 0,
  `DrugSmuggler` int(11) NOT NULL,
  `StaffBanned` int(11) NOT NULL,
  `PollKeyA` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Invalid Key',
  `PollKeyB` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Invalid Key',
  `PollKeyC` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Invalid Key',
  `FurnitureSlots` int(11) NOT NULL,
  `Rags` int(11) NOT NULL,
  `Hitman` int(11) NOT NULL DEFAULT -1,
  `HitmanLeader` int(11) NOT NULL DEFAULT 0,
  `HitmanBlacklisted` int(11) NOT NULL,
  `BlacklistReason` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CopKit` int(11) NOT NULL DEFAULT 0,
  `DedicatedHours` int(11) NOT NULL DEFAULT 0,
  `DedicatedTimestamp` date NOT NULL DEFAULT '0000-00-00',
  `DedicatedDaymarker` date NOT NULL DEFAULT '0000-00-00',
  `WalkStyle` int(11) NOT NULL DEFAULT 0,
  `FlagCredits` int(11) NOT NULL DEFAULT 0,
  `FlagClaimed` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userid`(`id`) USING BTREE,
  INDEX `username`(`Username`) USING BTREE,
  INDEX `admin`(`AdminLevel`) USING BTREE,
  INDEX `disabled`(`Disabled`) USING BTREE,
  INDEX `group`(`Member`) USING BTREE,
  INDEX `phone`(`PhoneNr`) USING BTREE,
  INDEX `helper`(`Helper`) USING BTREE,
  INDEX `ips`(`IP`, `SecureIP`) USING BTREE,
  INDEX `permband`(`PermBand`) USING BTREE,
  INDEX `business`(`Business`) USING BTREE,
  INDEX `famed`(`Famed`) USING BTREE,
  INDEX `dedicated`(`pDedicatedPlayer`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE `adminlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` int(11) NOT NULL,
  `issuerid` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `previousrank` int(11) NOT NULL,
  `newrank` int(11) NOT NULL,
  `issuerip` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adminip` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 583 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anticheat
-- ----------------------------
DROP TABLE IF EXISTS `anticheat`;
CREATE TABLE `anticheat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `microtime` int(11) NOT NULL,
  `damagedid` int(11) NOT NULL,
  `damagedlastupdate` int(11) NOT NULL,
  `damagedping` int(11) NOT NULL,
  `giverid` int(11) NOT NULL,
  `giverping` int(11) NOT NULL,
  `amount` float(10, 5) NOT NULL,
  `weaponid` tinyint(4) NOT NULL,
  `damagedX` float(10, 5) NOT NULL,
  `damagedY` float(10, 5) NOT NULL,
  `damagedZ` float(10, 5) NOT NULL,
  `giverX` float(10, 5) NOT NULL,
  `giverY` float(10, 5) NOT NULL,
  `giverZ` float(10, 5) NOT NULL,
  `giverCX` float(10, 5) NOT NULL,
  `giverCY` float(10, 5) NOT NULL,
  `giverCZ` float(10, 5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for app_admins
-- ----------------------------
DROP TABLE IF EXISTS `app_admins`;
CREATE TABLE `app_admins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `lastMsg` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for app_todo
-- ----------------------------
DROP TABLE IF EXISTS `app_todo`;
CREATE TABLE `app_todo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `todo` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for arenas
-- ----------------------------
DROP TABLE IF EXISTS `arenas`;
CREATE TABLE `arenas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Name',
  `vw` int(11) NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `dm1` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `dm2` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `dm3` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `dm4` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `red1` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `red2` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `red3` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `blue1` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `blue2` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `blue3` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `flagred` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0',
  `flagblue` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0',
  `hill` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0|0.0|0.0',
  `hillr` float(11, 4) NOT NULL DEFAULT 0.0000,
  `veh1` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  `veh2` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  `veh3` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  `veh4` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  `veh5` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  `veh6` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for arrestpoints
-- ----------------------------
DROP TABLE IF EXISTS `arrestpoints`;
CREATE TABLE `arrestpoints`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `jailVW` int(11) NOT NULL DEFAULT 0,
  `jailInt` int(11) NOT NULL DEFAULT 0,
  `jailpos1x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `jailpos1y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `jailpos1z` float(10, 5) NOT NULL DEFAULT 0.00000,
  `jailpos2x` float(10, 5) NOT NULL DEFAULT 0.00000,
  `jailpos2y` float(10, 5) NOT NULL DEFAULT 0.00000,
  `jailpos2z` float(10, 5) NOT NULL DEFAULT 0.00000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for arrestreports
-- ----------------------------
DROP TABLE IF EXISTS `arrestreports`;
CREATE TABLE `arrestreports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `copid` int(11) NOT NULL DEFAULT 0,
  `suspectid` int(11) NOT NULL DEFAULT 0,
  `shortreport` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `longreport` varchar(2024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `origin` int(11) NOT NULL DEFAULT 1 COMMENT 'SA=1 | TR=2',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `issuer`(`copid`) USING BTREE,
  INDEX `suspect`(`suspectid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auctions
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions`  (
  `id` int(11) NOT NULL,
  `BiddingFor` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '(none)',
  `InProgress` int(11) NOT NULL DEFAULT 0,
  `Bid` int(11) NOT NULL DEFAULT 0,
  `Bidder` int(11) NOT NULL DEFAULT 0,
  `Expires` int(11) NOT NULL DEFAULT 0,
  `Wining` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '(none)',
  `Increment` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for backpacks
-- ----------------------------
DROP TABLE IF EXISTS `backpacks`;
CREATE TABLE `backpacks`  (
  `id` int(11) NOT NULL,
  `BEquipped` int(11) NOT NULL DEFAULT 0,
  `BStoredH` int(11) NOT NULL DEFAULT -1,
  `BStoredV` int(11) NOT NULL DEFAULT 0,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `rotX` float NOT NULL DEFAULT 0,
  `rotY` float NOT NULL DEFAULT 0,
  `rotZ` float NOT NULL DEFAULT 0,
  `scaleX` float NOT NULL DEFAULT 0,
  `scaleY` float NOT NULL DEFAULT 0,
  `scaleZ` float NOT NULL DEFAULT 0,
  `color` mediumint(8) UNSIGNED NOT NULL DEFAULT 16777215,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ban
-- ----------------------------
DROP TABLE IF EXISTS `ban`;
CREATE TABLE `ban`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bannedid` int(11) NOT NULL,
  `creatorid` int(11) NOT NULL,
  `IP` varchar(17) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reason` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createdate` int(11) NOT NULL,
  `liftdate` int(11) NOT NULL DEFAULT 2147483647,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid, create, active`(`bannedid`, `creatorid`, `active`) USING BTREE,
  INDEX `liftdate`(`liftdate`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` bigint(20) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for bans
-- ----------------------------
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `reason` varchar(156) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_added` datetime NULL DEFAULT NULL,
  `date_unban` datetime NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `link` varchar(156) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `admin` varchar(156) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blackmarkets
-- ----------------------------
DROP TABLE IF EXISTS `blackmarkets`;
CREATE TABLE `blackmarkets`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL DEFAULT -1,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `delposx` float NOT NULL DEFAULT 0,
  `delposy` float NOT NULL DEFAULT 0,
  `delposz` float NOT NULL DEFAULT 0,
  `vw` int(11) NOT NULL DEFAULT 0,
  `int` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL,
  `Lsd` int(11) NOT NULL DEFAULT 0,
  `Cannabis` int(11) NOT NULL DEFAULT 0,
  `Meth` int(11) NOT NULL DEFAULT 0,
  `Cocaine` int(11) NOT NULL DEFAULT 0,
  `Opium` int(11) NOT NULL DEFAULT 0,
  `Ecstasy` int(11) NOT NULL DEFAULT 0,
  `Speed` int(11) NOT NULL DEFAULT 0,
  `Alcohol` int(11) NOT NULL DEFAULT 0,
  `Demerol` int(11) NOT NULL DEFAULT 0,
  `Morphine` int(11) NOT NULL DEFAULT 0,
  `Haloperidol` int(11) NOT NULL DEFAULT 0,
  `Aspirin` int(11) NOT NULL DEFAULT 0,
  `Mgseeds` int(11) NOT NULL DEFAULT 0,
  `Canseeds` int(11) NOT NULL DEFAULT 0,
  `Lye` int(11) NOT NULL DEFAULT 0,
  `Ethyl` int(11) NOT NULL DEFAULT 0,
  `Ephedrine` int(11) NOT NULL DEFAULT 0,
  `Diswater` int(11) NOT NULL DEFAULT 0,
  `Opiumpop` int(11) NOT NULL DEFAULT 0,
  `Lime` int(11) NOT NULL DEFAULT 0,
  `Baking` int(11) NOT NULL DEFAULT 0,
  `Cocextract` int(11) NOT NULL DEFAULT 0,
  `Nbenzynol` int(11) NOT NULL DEFAULT 0,
  `Pmkoil` int(11) NOT NULL DEFAULT 0,
  `Mdmacrys` int(11) NOT NULL DEFAULT 0,
  `Canseedspay` int(11) NOT NULL DEFAULT 0,
  `Lyepay` int(11) NOT NULL DEFAULT 0,
  `Ethylpay` int(11) NOT NULL DEFAULT 0,
  `Ephedrinepay` int(11) NOT NULL DEFAULT 0,
  `Diswaterpay` int(11) NOT NULL DEFAULT 0,
  `Opiumpoppay` int(11) NOT NULL DEFAULT 0,
  `Limepay` int(11) NOT NULL DEFAULT 0,
  `Muriaticpay` int(11) NOT NULL DEFAULT 0,
  `Bakingpay` int(11) NOT NULL DEFAULT 0,
  `Cocextractpay` int(11) NOT NULL DEFAULT 0,
  `Nbenzynolpay` int(11) NOT NULL DEFAULT 0,
  `Pmkoilpay` int(11) NOT NULL DEFAULT 0,
  `Mdmacryspay` int(11) NOT NULL DEFAULT 0,
  `Cafeinepay` int(11) NOT NULL DEFAULT 0,
  `Mgseedsprice` int(11) NOT NULL,
  `Canseedsprice` int(11) NOT NULL DEFAULT 0,
  `Lyeprice` int(11) NOT NULL DEFAULT 0,
  `Ethylprice` int(11) NOT NULL DEFAULT 0,
  `Ephedrineprice` int(11) NOT NULL DEFAULT 0,
  `Diswaterprice` int(11) NOT NULL DEFAULT 0,
  `Opiumpopprice` int(11) NOT NULL DEFAULT 0,
  `Limeprice` int(11) NOT NULL DEFAULT 0,
  `Bakingprice` int(11) NOT NULL DEFAULT 0,
  `Cocaineprice` int(11) NOT NULL,
  `Cocextractprice` int(11) NOT NULL DEFAULT 0,
  `Nbenzynolprice` int(11) NOT NULL DEFAULT 0,
  `Pmkoilprice` int(11) NOT NULL DEFAULT 0,
  `Mdmacrysprice` int(11) NOT NULL DEFAULT 0,
  `Caffeineprice` int(11) NOT NULL DEFAULT 0,
  `Caffeine` int(11) NOT NULL DEFAULT 0,
  `Muriatic` int(11) NOT NULL,
  `Muriaticprice` int(11) NOT NULL,
  `seized` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blackmarkets_orders
-- ----------------------------
DROP TABLE IF EXISTS `blackmarkets_orders`;
CREATE TABLE `blackmarkets_orders`  (
  `DBID` int(11) NOT NULL DEFAULT -1,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `timestamp` int(11) NOT NULL DEFAULT -1,
  `groupid` int(11) NOT NULL DEFAULT 0,
  `ingredientid` int(11) NOT NULL DEFAULT -1,
  `amount` int(11) NOT NULL DEFAULT 0,
  `trackable` int(11) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bugcomments
-- ----------------------------
DROP TABLE IF EXISTS `bugcomments`;
CREATE TABLE `bugcomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Bugid` int(11) NOT NULL DEFAULT 0,
  `Postid` int(11) NOT NULL DEFAULT 1,
  `Staff` int(11) NOT NULL DEFAULT 0,
  `UserId` int(11) NOT NULL DEFAULT 0,
  `Message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Created` int(11) NOT NULL DEFAULT 0,
  `Locked` int(11) NOT NULL DEFAULT 0,
  `Hidden` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bugs
-- ----------------------------
DROP TABLE IF EXISTS `bugs`;
CREATE TABLE `bugs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Anoy` int(11) NOT NULL DEFAULT 0,
  `Staff` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `Subject` varchar(52) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Created` int(11) NOT NULL DEFAULT 0,
  `Status` int(11) NOT NULL DEFAULT 0,
  `Locked` int(11) NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `LastDate` int(11) NOT NULL DEFAULT 0,
  `Assign` int(11) NOT NULL DEFAULT 0,
  `Read` int(11) NOT NULL DEFAULT 1,
  `BetaRead` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for businesses
-- ----------------------------
DROP TABLE IF EXISTS `businesses`;
CREATE TABLE `businesses`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Unnamed Business',
  `Type` int(11) NOT NULL DEFAULT 0,
  `Value` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `OwnerName` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None',
  `Months` int(11) NOT NULL DEFAULT 0,
  `SafeBalance` int(11) NOT NULL DEFAULT 0,
  `Inventory` int(11) NOT NULL DEFAULT 0,
  `InventoryCapacity` int(11) NOT NULL DEFAULT 1000,
  `Status` int(11) NOT NULL DEFAULT 1,
  `Level` tinyint(4) NOT NULL DEFAULT 1,
  `LevelProgress` int(11) NOT NULL DEFAULT 0,
  `AutoSale` tinyint(4) NOT NULL DEFAULT 1,
  `OrderDate` datetime NOT NULL,
  `OrderAmount` int(11) NOT NULL DEFAULT 0,
  `OrderBy` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `OrderState` int(11) NOT NULL DEFAULT 0,
  `TotalSales` int(11) NOT NULL DEFAULT 0,
  `Bargain` tinyint(4) NOT NULL DEFAULT 0,
  `ExteriorX` float NOT NULL DEFAULT 0,
  `ExteriorY` float NOT NULL DEFAULT 0,
  `ExteriorZ` float NOT NULL DEFAULT 0,
  `ExteriorA` float NOT NULL DEFAULT 0,
  `InteriorX` float NOT NULL DEFAULT 0,
  `InteriorY` float NOT NULL DEFAULT 0,
  `InteriorZ` float NOT NULL DEFAULT 0,
  `InteriorA` float NOT NULL DEFAULT 0,
  `Interior` tinyint(4) NOT NULL DEFAULT 0,
  `CustomExterior` int(11) NOT NULL DEFAULT 0,
  `CustomInterior` int(11) NOT NULL DEFAULT 0,
  `SupplyPointX` float NOT NULL DEFAULT 0,
  `SupplyPointY` float NOT NULL DEFAULT 0,
  `SupplyPointZ` float NOT NULL DEFAULT 0,
  `Item1Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item2Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item3Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item4Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item5Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item6Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item7Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item8Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item9Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item10Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item11Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item12Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item13Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item14Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item15Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item16Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item17Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item18Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Item19Price` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank0Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank1Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank2Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank3Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank4Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank5Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Pay` tinyint(4) NOT NULL DEFAULT 0,
  `GasPrice` float UNSIGNED NOT NULL,
  `MinInviteRank` tinyint(4) NOT NULL DEFAULT 4,
  `MinSupplyRank` tinyint(4) NOT NULL DEFAULT 5,
  `MinGiveRankRank` tinyint(4) NOT NULL DEFAULT 5,
  `MinSafeRank` tinyint(4) NOT NULL DEFAULT 5,
  `GasPump1PosX` float NOT NULL DEFAULT 0,
  `GasPump1PosY` float NOT NULL DEFAULT 0,
  `GasPump1PosZ` float NOT NULL DEFAULT 0,
  `GasPump1Angle` float NOT NULL DEFAULT 0,
  `GasPump1Model` float NOT NULL DEFAULT 0,
  `GasPump1Capacity` float NOT NULL DEFAULT 0,
  `GasPump1Gas` float NOT NULL DEFAULT 0,
  `GasPump2PosX` float NOT NULL DEFAULT 0,
  `GasPump2PosY` float NOT NULL DEFAULT 0,
  `GasPump2PosZ` float NOT NULL DEFAULT 0,
  `GasPump2Angle` float NOT NULL DEFAULT 0,
  `GasPump2Model` float NOT NULL DEFAULT 0,
  `GasPump2Capacity` float NOT NULL DEFAULT 0,
  `GasPump2Gas` float NOT NULL DEFAULT 0,
  `Car0PosX` float NOT NULL DEFAULT 0,
  `Car0PosY` float NOT NULL DEFAULT 0,
  `Car0PosZ` float NOT NULL DEFAULT 0,
  `Car0PosAngle` float NOT NULL DEFAULT 0,
  `Car0ModelId` int(11) NOT NULL DEFAULT 0,
  `Car0Price` int(11) NOT NULL DEFAULT 0,
  `Car1PosX` float NOT NULL DEFAULT 0,
  `Car1PosY` float NOT NULL DEFAULT 0,
  `Car1PosZ` float NOT NULL DEFAULT 0,
  `Car1PosAngle` float NOT NULL DEFAULT 0,
  `Car1ModelId` int(11) NOT NULL DEFAULT 0,
  `Car1Price` int(11) NOT NULL DEFAULT 0,
  `Car2PosX` float NOT NULL DEFAULT 0,
  `Car2PosY` float NOT NULL DEFAULT 0,
  `Car2PosZ` float NOT NULL DEFAULT 0,
  `Car2PosAngle` float NOT NULL DEFAULT 0,
  `Car2ModelId` int(11) NOT NULL DEFAULT 0,
  `Car2Price` int(11) NOT NULL DEFAULT 0,
  `Car3PosX` float NOT NULL DEFAULT 0,
  `Car3PosY` float NOT NULL DEFAULT 0,
  `Car3PosZ` float NOT NULL DEFAULT 0,
  `Car3PosAngle` float NOT NULL DEFAULT 0,
  `Car3ModelId` int(11) NOT NULL DEFAULT 0,
  `Car3Price` int(11) NOT NULL DEFAULT 0,
  `Car1Stock` int(11) NOT NULL DEFAULT 0,
  `Car2Stock` int(11) NOT NULL DEFAULT 0,
  `Car3Stock` int(11) NOT NULL DEFAULT 0,
  `Car1Order` int(11) NOT NULL DEFAULT 0,
  `Car2Order` int(11) NOT NULL DEFAULT 0,
  `Car3Order` int(11) NOT NULL DEFAULT 0,
  `Car4PosX` float NOT NULL DEFAULT 0,
  `Car4PosY` float NOT NULL DEFAULT 0,
  `Car4PosZ` float NOT NULL DEFAULT 0,
  `Car4PosAngle` float NOT NULL DEFAULT 0,
  `Car4ModelId` int(11) NOT NULL DEFAULT 0,
  `Car4Price` int(11) NOT NULL DEFAULT 0,
  `Car5PosX` int(11) NOT NULL DEFAULT 0,
  `Car5PosY` float NOT NULL DEFAULT 0,
  `Car5PosZ` float NOT NULL DEFAULT 0,
  `Car5PosAngle` float NOT NULL DEFAULT 0,
  `Car5ModelId` int(11) NOT NULL DEFAULT 0,
  `Car5Price` int(11) NOT NULL DEFAULT 0,
  `Car6PosX` float NOT NULL DEFAULT 0,
  `Car6PosY` float NOT NULL DEFAULT 0,
  `Car6PosZ` float NOT NULL DEFAULT 0,
  `Car6PosAngle` float NOT NULL DEFAULT 0,
  `Car6ModelId` int(11) NOT NULL DEFAULT 0,
  `Car6Price` int(11) NOT NULL DEFAULT 0,
  `Car7PosX` float NOT NULL DEFAULT 0,
  `Car7PosY` float NOT NULL DEFAULT 0,
  `Car7PosZ` float NOT NULL DEFAULT 0,
  `Car7PosAngle` float NOT NULL DEFAULT 0,
  `Car7ModelId` int(11) NOT NULL DEFAULT 0,
  `Car7Price` int(11) NOT NULL DEFAULT 0,
  `Car8PosX` float NOT NULL DEFAULT 0,
  `Car8PosY` float NOT NULL DEFAULT 0,
  `Car8PosZ` float NOT NULL DEFAULT 0,
  `Car8PosAngle` float NOT NULL DEFAULT 0,
  `Car8ModelId` int(11) NOT NULL DEFAULT 0,
  `Car8Price` int(11) NOT NULL DEFAULT 0,
  `Car9PosX` float NOT NULL DEFAULT 0,
  `Car9PosY` float NOT NULL DEFAULT 0,
  `Car9PosZ` float NOT NULL DEFAULT 0,
  `Car9PosAngle` float NOT NULL DEFAULT 0,
  `Car9ModelId` int(11) NOT NULL DEFAULT 0,
  `Car9Price` int(11) NOT NULL DEFAULT 0,
  `PurchaseX` float NOT NULL DEFAULT 0,
  `PurchaseY` float NOT NULL DEFAULT 0,
  `PurchaseZ` float NOT NULL DEFAULT 0,
  `PurchaseAngle` float NOT NULL DEFAULT 0,
  `TotalProfits` int(11) NOT NULL DEFAULT 0,
  `GymEntryFee` int(11) NOT NULL DEFAULT 0,
  `GymType` int(11) NOT NULL DEFAULT 0,
  `CustomVW` int(11) NOT NULL DEFAULT 0,
  `Grade` int(11) NOT NULL DEFAULT 0,
  `MaxLevel` int(11) NOT NULL DEFAULT 0,
  `Item20Price` int(11) NOT NULL DEFAULT 0,
  `Item21Price` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for businesssales
-- ----------------------------
DROP TABLE IF EXISTS `businesssales`;
CREATE TABLE `businesssales`  (
  `bID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `BusinessID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Text` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `Price` int(11) NULL DEFAULT 0,
  `Available` int(11) NOT NULL DEFAULT 0,
  `Purchased` int(11) NULL DEFAULT 0,
  `Type` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`bID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for countrysec
-- ----------------------------
DROP TABLE IF EXISTS `countrysec`;
CREATE TABLE `countrysec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0,
  `code` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `code2` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `region` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `optout` int(11) NULL DEFAULT 0,
  `code2exp` int(11) NULL DEFAULT NULL,
  `regenabled` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `userid`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_access
-- ----------------------------
DROP TABLE IF EXISTS `cp_access`;
CREATE TABLE `cp_access`  (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `punish` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) NOT NULL DEFAULT 0,
  `ban` int(11) NOT NULL DEFAULT 0,
  `tech` int(11) NOT NULL DEFAULT 0,
  `ip` int(11) NOT NULL DEFAULT 0,
  `cplgeneral` int(11) NOT NULL DEFAULT 0,
  `cplstaff` int(11) NOT NULL DEFAULT 0,
  `cplfaction` int(11) NOT NULL DEFAULT 0,
  `cplfamily` int(11) NOT NULL DEFAULT 0,
  `cplcr` int(11) NOT NULL DEFAULT 0,
  `cplaccess` int(11) NOT NULL DEFAULT 0,
  `gladmin` int(11) NOT NULL DEFAULT 0,
  `gladminauction` int(11) NOT NULL DEFAULT 0,
  `gladmingive` int(11) NOT NULL DEFAULT 0,
  `gladminpay` int(11) NOT NULL DEFAULT 0,
  `glauction` int(11) NOT NULL DEFAULT 0,
  `glban` int(11) NOT NULL DEFAULT 0,
  `glbedit` int(11) NOT NULL DEFAULT 0,
  `glbusiness` int(11) NOT NULL DEFAULT 0,
  `glcontracts` int(11) NOT NULL DEFAULT 0,
  `glcrime` int(11) NOT NULL DEFAULT 0,
  `glddedit` int(11) NOT NULL DEFAULT 0,
  `gldealership` int(11) NOT NULL DEFAULT 0,
  `gldmpedit` int(11) NOT NULL DEFAULT 0,
  `gldv` int(11) NOT NULL DEFAULT 0,
  `gldvspawn` int(11) NOT NULL DEFAULT 0,
  `gleditgroup` int(11) NOT NULL DEFAULT 0,
  `glfaction` int(11) NOT NULL DEFAULT 0,
  `glfamily` int(11) NOT NULL DEFAULT 0,
  `glflagmove` int(11) NOT NULL DEFAULT 0,
  `glflags` int(11) NOT NULL DEFAULT 0,
  `glfmembercount` int(11) NOT NULL DEFAULT 0,
  `glgedit` int(11) NOT NULL DEFAULT 0,
  `glgifts` int(11) NOT NULL DEFAULT 0,
  `glgov` int(11) NOT NULL DEFAULT 0,
  `glgroup` int(11) NOT NULL DEFAULT 0,
  `glhack` int(11) NOT NULL DEFAULT 0,
  `glhedit` int(11) NOT NULL DEFAULT 0,
  `glhouse` int(11) NOT NULL DEFAULT 0,
  `glhsafe` int(11) NOT NULL DEFAULT 0,
  `glkick` int(11) NOT NULL DEFAULT 0,
  `gllicenses` int(11) NOT NULL DEFAULT 0,
  `gllogin` int(11) NOT NULL DEFAULT 0,
  `glmail` int(11) NOT NULL DEFAULT 0,
  `glmoderator` int(11) NOT NULL DEFAULT 0,
  `glmute` int(11) NOT NULL DEFAULT 0,
  `glpads` int(11) NOT NULL DEFAULT 0,
  `glpassword` int(11) NOT NULL DEFAULT 0,
  `glpay` int(11) NOT NULL DEFAULT 0,
  `glplant` int(11) NOT NULL DEFAULT 0,
  `glplayervehicle` int(11) NOT NULL DEFAULT 0,
  `glpnsedit` int(11) NOT NULL DEFAULT 0,
  `glpoker` int(11) NOT NULL DEFAULT 0,
  `glrpspecial` int(11) NOT NULL DEFAULT 0,
  `glsecurity` int(11) NOT NULL DEFAULT 0,
  `glsetvip` int(11) NOT NULL DEFAULT 0,
  `glshopconfirmedorders` int(11) NOT NULL DEFAULT 0,
  `glshoplog` int(11) NOT NULL DEFAULT 0,
  `glshoporders` int(11) NOT NULL DEFAULT 0,
  `glsobeit` int(11) NOT NULL DEFAULT 0,
  `glspeedcam` int(11) NOT NULL DEFAULT 0,
  `glstats` int(11) NOT NULL DEFAULT 0,
  `gltledit` int(11) NOT NULL DEFAULT 0,
  `gltoydelete` int(11) NOT NULL DEFAULT 0,
  `gltoys` int(11) NOT NULL DEFAULT 0,
  `glundercover` int(11) NOT NULL DEFAULT 0,
  `glvipnamechanges` int(11) NOT NULL DEFAULT 0,
  `glvipremove` int(11) NOT NULL DEFAULT 0,
  `glsellcredits` int(11) NOT NULL DEFAULT 0,
  `gllogincredits` int(11) NOT NULL DEFAULT 0,
  `glcleo` int(11) NOT NULL DEFAULT 0,
  `glcredits` int(11) NOT NULL DEFAULT 0,
  `glbackpack` int(11) NULL DEFAULT 0,
  `glvoucher` int(11) NULL DEFAULT 0,
  `glgiftbox` int(11) NULL DEFAULT 0,
  `glnrn` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `userid`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_admin_notes
-- ----------------------------
DROP TABLE IF EXISTS `cp_admin_notes`;
CREATE TABLE `cp_admin_notes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invoke_id` int(11) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `points` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_advisor
-- ----------------------------
DROP TABLE IF EXISTS `cp_advisor`;
CREATE TABLE `cp_advisor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Hired` int(11) NOT NULL DEFAULT 0,
  `Hired_By` int(11) NOT NULL DEFAULT 0,
  `Timezone` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT 0,
  `WIB` int(11) NOT NULL DEFAULT 0,
  `Cashed` int(11) NOT NULL DEFAULT 0,
  `Updated` int(11) NOT NULL DEFAULT 0,
  `Update_By` int(11) NOT NULL DEFAULT 0,
  `Band` int(11) NOT NULL,
  `Reason` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `AdminSet` int(11) NOT NULL DEFAULT 0,
  `StoreBand` int(11) NOT NULL DEFAULT 0,
  `EditStore` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`Userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_advisor_notes
-- ----------------------------
DROP TABLE IF EXISTS `cp_advisor_notes`;
CREATE TABLE `cp_advisor_notes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `Details` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Playerid` int(11) NOT NULL DEFAULT 0,
  `Date` int(11) NOT NULL DEFAULT 0,
  `Points` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_advisor_tracker
-- ----------------------------
DROP TABLE IF EXISTS `cp_advisor_tracker`;
CREATE TABLE `cp_advisor_tracker`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Date` date NOT NULL,
  `Points` int(11) NOT NULL DEFAULT 0,
  `Requests` int(11) NOT NULL DEFAULT 0,
  `Hours` int(11) NOT NULL DEFAULT 0,
  `Updated_By` int(11) NOT NULL DEFAULT 0,
  `Updated` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`Userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_advisor_zones
-- ----------------------------
DROP TABLE IF EXISTS `cp_advisor_zones`;
CREATE TABLE `cp_advisor_zones`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Zone` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Amount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_alerts
-- ----------------------------
DROP TABLE IF EXISTS `cp_alerts`;
CREATE TABLE `cp_alerts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Date` int(11) NOT NULL DEFAULT 0,
  `Expire` int(11) NOT NULL DEFAULT 0,
  `Link` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Read` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid, expire`(`Userid`, `Expire`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_betateam
-- ----------------------------
DROP TABLE IF EXISTS `cp_betateam`;
CREATE TABLE `cp_betateam`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `Account` int(11) NOT NULL DEFAULT 0,
  `Account2` int(11) NOT NULL DEFAULT 0,
  `Credits` int(11) NOT NULL DEFAULT 0,
  `Hired` int(11) NOT NULL DEFAULT 0,
  `Status` int(11) NOT NULL DEFAULT 0,
  `Reason` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Updated` int(11) NOT NULL DEFAULT 0,
  `Updated_By` int(11) NOT NULL DEFAULT 0,
  `CloseWarn` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_cache_email
-- ----------------------------
DROP TABLE IF EXISTS `cp_cache_email`;
CREATE TABLE `cp_cache_email`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `user_id` int(11) NULL DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_cache_passreset
-- ----------------------------
DROP TABLE IF EXISTS `cp_cache_passreset`;
CREATE TABLE `cp_cache_passreset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_cache_sec_questions
-- ----------------------------
DROP TABLE IF EXISTS `cp_cache_sec_questions`;
CREATE TABLE `cp_cache_sec_questions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `question` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `answer` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `token` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_casino_log
-- ----------------------------
DROP TABLE IF EXISTS `cp_casino_log`;
CREATE TABLE `cp_casino_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Timestamp` int(11) NULL DEFAULT NULL,
  `PlayerID` int(11) NULL DEFAULT NULL,
  `game` varchar(33) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `prize` int(11) NULL DEFAULT NULL,
  `num1` int(11) NULL DEFAULT NULL,
  `num2` int(11) NULL DEFAULT NULL,
  `num3` int(11) NULL DEFAULT NULL,
  `PlayerIP` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_faction
-- ----------------------------
DROP TABLE IF EXISTS `cp_faction`;
CREATE TABLE `cp_faction`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_0` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_5` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_6` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_0` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_5` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_6` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `div_7` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_family
-- ----------------------------
DROP TABLE IF EXISTS `cp_family`;
CREATE TABLE `cp_family`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leader` int(11) NULL DEFAULT NULL,
  `rank_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_5` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_6` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_info_states
-- ----------------------------
DROP TABLE IF EXISTS `cp_info_states`;
CREATE TABLE `cp_info_states`  (
  `state_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PK: Unique state ID',
  `state_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'State name with first letter capital',
  `state_abbr` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Optional state abbreviation (US is 2 capital letters)',
  PRIMARY KEY (`state_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_info_temp
-- ----------------------------
DROP TABLE IF EXISTS `cp_info_temp`;
CREATE TABLE `cp_info_temp`  (
  `order_id` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `player_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `first_name` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_name` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `billing_address` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `country` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `state` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `city` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `zip_code` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gift_player` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `purchasetype` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `method` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_added` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_leave
-- ----------------------------
DROP TABLE IF EXISTS `cp_leave`;
CREATE TABLE `cp_leave`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `date` date NULL DEFAULT NULL,
  `date_leave` date NULL DEFAULT NULL,
  `date_return` date NULL DEFAULT NULL,
  `reason` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `acceptedby_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid, type`(`user_id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_log_access
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_access`;
CREATE TABLE `cp_log_access`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_log_cr
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_cr`;
CREATE TABLE `cp_log_cr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_log_cron
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_cron`;
CREATE TABLE `cp_log_cron`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Info` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Date` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`Userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_log_faction
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_faction`;
CREATE TABLE `cp_log_faction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_log_family
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_family`;
CREATE TABLE `cp_log_family`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_log_general
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_general`;
CREATE TABLE `cp_log_general`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_log_security
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_security`;
CREATE TABLE `cp_log_security`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_log_staff
-- ----------------------------
DROP TABLE IF EXISTS `cp_log_staff`;
CREATE TABLE `cp_log_staff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_mass_email
-- ----------------------------
DROP TABLE IF EXISTS `cp_mass_email`;
CREATE TABLE `cp_mass_email`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `message` varchar(25565) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creator` int(11) NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `last_sent` datetime NULL DEFAULT NULL,
  `banned` int(11) NOT NULL DEFAULT 0,
  `disabled` int(11) NOT NULL DEFAULT 0,
  `admins` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `helpers` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `vip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `famed` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `faction` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `faction_rank` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `gang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `gang_rank` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `biz` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `biz_rank` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `bypass` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_misc
-- ----------------------------
DROP TABLE IF EXISTS `cp_misc`;
CREATE TABLE `cp_misc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL DEFAULT 0,
  `title` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `expire` int(11) NOT NULL DEFAULT 0,
  `adminlevel` int(11) NOT NULL DEFAULT 2,
  `date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `from, status`(`from`, `status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_misc_track
-- ----------------------------
DROP TABLE IF EXISTS `cp_misc_track`;
CREATE TABLE `cp_misc_track`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Notification` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`Userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_perms
-- ----------------------------
DROP TABLE IF EXISTS `cp_perms`;
CREATE TABLE `cp_perms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL DEFAULT 0,
  `ip` int(11) NOT NULL DEFAULT 0,
  `group` int(11) NOT NULL DEFAULT 0,
  `general` int(11) NOT NULL DEFAULT 0,
  `staff` int(11) NOT NULL DEFAULT 0,
  `advisory` int(11) NOT NULL DEFAULT 0,
  `accedit` int(11) NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 0,
  `punish` int(11) NOT NULL DEFAULT 0,
  `refunds` int(11) NOT NULL DEFAULT 0,
  `bans` int(11) NOT NULL DEFAULT 0,
  `post` int(11) NOT NULL DEFAULT 0,
  `anticheat` int(11) NOT NULL,
  `advisor` int(11) NOT NULL,
  `teamspeak` int(11) NOT NULL DEFAULT 0,
  `famed` int(11) NOT NULL DEFAULT 0,
  `shiftsenior` int(11) NOT NULL DEFAULT 0,
  `tech` int(11) NOT NULL DEFAULT 0,
  `whois` int(11) NOT NULL DEFAULT 0,
  `dedicated` int(11) NOT NULL DEFAULT 0,
  `shiftalert` int(11) NOT NULL DEFAULT 0,
  `staffban` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_profile
-- ----------------------------
DROP TABLE IF EXISTS `cp_profile`;
CREATE TABLE `cp_profile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL,
  `NameColor` int(11) NOT NULL DEFAULT 1,
  `Department` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `WCode` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Sound` int(11) NOT NULL DEFAULT 1,
  `SoundVol` decimal(2, 1) NOT NULL DEFAULT 0.0,
  `VisRoster` int(11) NOT NULL DEFAULT 1,
  `VisEmail` int(11) NOT NULL DEFAULT 0,
  `REmail` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Task` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ForumID` int(11) NOT NULL DEFAULT 0,
  `ActSA` int(11) NOT NULL DEFAULT 0,
  `PUpdate` int(11) NOT NULL DEFAULT 0,
  `Avatar` int(11) NOT NULL DEFAULT 0,
  `Permissions` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`Userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_punishment
-- ----------------------------
DROP TABLE IF EXISTS `cp_punishment`;
CREATE TABLE `cp_punishment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NULL DEFAULT NULL,
  `date_added` date NULL DEFAULT NULL,
  `addedby_id` int(11) NULL DEFAULT NULL,
  `reason` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `prison` int(11) NULL DEFAULT NULL,
  `warn` int(11) NULL DEFAULT NULL,
  `fine` int(11) NULL DEFAULT NULL,
  `ban` int(11) NULL DEFAULT NULL,
  `wep_restrict` int(11) NULL DEFAULT NULL,
  `other_punish` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_issued` date NULL DEFAULT NULL,
  `issuedby_id` int(11) NULL DEFAULT NULL,
  `bantime` int(11) NOT NULL DEFAULT 0,
  `bantype` int(11) NOT NULL DEFAULT 0,
  `banlen` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid, status`(`player_id`, `status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_refund
-- ----------------------------
DROP TABLE IF EXISTS `cp_refund`;
CREATE TABLE `cp_refund`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT 0,
  `materials` int(11) NULL DEFAULT 0,
  `pot` int(11) NULL DEFAULT 0,
  `crack` int(11) NULL DEFAULT 0,
  `boombox` int(11) NULL DEFAULT 0,
  `viptoken` int(11) NULL DEFAULT 0,
  `refund` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `auth` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addedby_id` int(11) NULL DEFAULT NULL,
  `date_added` date NULL DEFAULT NULL,
  `issuedby_id` int(11) NULL DEFAULT NULL,
  `date_issued` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid, status`(`user_id`, `status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_restricted_archive
-- ----------------------------
DROP TABLE IF EXISTS `cp_restricted_archive`;
CREATE TABLE `cp_restricted_archive`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `removed_by` int(11) NULL DEFAULT NULL,
  `removed_date` datetime NULL DEFAULT NULL,
  `reason` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_security_files
-- ----------------------------
DROP TABLE IF EXISTS `cp_security_files`;
CREATE TABLE `cp_security_files`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `file_name` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_type` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_size` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_location` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_description` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_security_notes
-- ----------------------------
DROP TABLE IF EXISTS `cp_security_notes`;
CREATE TABLE `cp_security_notes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `note_by` int(11) NOT NULL,
  `note` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_security_profiles
-- ----------------------------
DROP TABLE IF EXISTS `cp_security_profiles`;
CREATE TABLE `cp_security_profiles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `forum_name` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `teamspeak_name` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `recommending_admin` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rp_names` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_addresses` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `messenger_handles` varchar(524) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `security_orientation` date NOT NULL,
  `security_profile` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_session
-- ----------------------------
DROP TABLE IF EXISTS `cp_session`;
CREATE TABLE `cp_session`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Token` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Expire` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid, expire`(`Userid`, `Expire`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_shift_blocks
-- ----------------------------
DROP TABLE IF EXISTS `cp_shift_blocks`;
CREATE TABLE `cp_shift_blocks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shift_id` int(11) NOT NULL,
  `shift` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time_start` time NULL DEFAULT NULL,
  `time_end` time NULL DEFAULT NULL,
  `needs_sunday` int(11) NULL DEFAULT 1,
  `needs_monday` int(11) NULL DEFAULT 1,
  `needs_tuesday` int(11) NULL DEFAULT 1,
  `needs_wednesday` int(11) NULL DEFAULT 1,
  `needs_thursday` int(11) NULL DEFAULT 1,
  `needs_friday` int(11) NULL DEFAULT 1,
  `needs_saturday` int(11) NULL DEFAULT 1,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `shiftid`(`shift_id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_shift_leader
-- ----------------------------
DROP TABLE IF EXISTS `cp_shift_leader`;
CREATE TABLE `cp_shift_leader`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shift_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_shifts
-- ----------------------------
DROP TABLE IF EXISTS `cp_shifts`;
CREATE TABLE `cp_shifts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `shift_id` int(11) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `sign_up` datetime NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `bonus` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`user_id`) USING BTREE,
  INDEX `shiftid`(`shift_id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_stat
-- ----------------------------
DROP TABLE IF EXISTS `cp_stat`;
CREATE TABLE `cp_stat`  (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL,
  `timezone` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NULL',
  `gtalk` varchar(124) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N/A',
  `paypal` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `points` int(11) NULL DEFAULT 0,
  `shift` int(11) NULL DEFAULT 0,
  `shift_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shift_restrict` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shift_complete` int(11) NULL DEFAULT 0,
  `shift_partcomplete` int(11) NULL DEFAULT 0,
  `shift_missed` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `id`(`user_id`) USING BTREE,
  INDEX `timezone`(`timezone`) USING BTREE,
  INDEX `userid`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_store
-- ----------------------------
DROP TABLE IF EXISTS `cp_store`;
CREATE TABLE `cp_store`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `Purchases` int(11) NOT NULL DEFAULT 0,
  `Total` int(11) NOT NULL DEFAULT 0,
  `AdminOnly` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_store_cart
-- ----------------------------
DROP TABLE IF EXISTS `cp_store_cart`;
CREATE TABLE `cp_store_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_ip_address` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cart_pack_id` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_item_added` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_store_items
-- ----------------------------
DROP TABLE IF EXISTS `cp_store_items`;
CREATE TABLE `cp_store_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StoreId` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Transfer` int(11) NOT NULL DEFAULT 0,
  `Price` int(11) NOT NULL DEFAULT 0,
  `Discount` int(11) NOT NULL DEFAULT 0,
  `Quantity` int(11) NOT NULL DEFAULT 1,
  `Available` int(11) NOT NULL DEFAULT -1,
  `Status` int(11) NOT NULL DEFAULT 1,
  `Sold` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `StoreId`(`StoreId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_store_manage
-- ----------------------------
DROP TABLE IF EXISTS `cp_store_manage`;
CREATE TABLE `cp_store_manage`  (
  `id` int(11) NOT NULL,
  `pack_id` int(11) NOT NULL,
  `pack_picture` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `total_tokens` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `old_price` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total_price` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `additional_tokens` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `store_online` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'OFF',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_store_orders
-- ----------------------------
DROP TABLE IF EXISTS `cp_store_orders`;
CREATE TABLE `cp_store_orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NULL DEFAULT NULL,
  `order_status` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `customer_ip_address` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pack_id` int(11) NULL DEFAULT NULL,
  `pack_total_tokens` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pack_total_price` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gift_player_id` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_method` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_address` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_purchased` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_store_tracker
-- ----------------------------
DROP TABLE IF EXISTS `cp_store_tracker`;
CREATE TABLE `cp_store_tracker`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Price` int(11) NOT NULL DEFAULT 0,
  `Discount` int(11) NOT NULL DEFAULT 0,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `Date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_support_faq
-- ----------------------------
DROP TABLE IF EXISTS `cp_support_faq`;
CREATE TABLE `cp_support_faq`  (
  `faq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL DEFAULT 0,
  `isenabled` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `question` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `answer` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`faq_id`) USING BTREE,
  UNIQUE INDEX `title_2`(`question`) USING BTREE,
  INDEX `dept_id`(`category`) USING BTREE,
  INDEX `active`(`isenabled`) USING BTREE,
  FULLTEXT INDEX `title`(`question`, `answer`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_support_faq_category
-- ----------------------------
DROP TABLE IF EXISTS `cp_support_faq_category`;
CREATE TABLE `cp_support_faq_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_category` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_support_items
-- ----------------------------
DROP TABLE IF EXISTS `cp_support_items`;
CREATE TABLE `cp_support_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) NOT NULL,
  `item_category` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `item_name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `item_picture` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `item_credit_price` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `item_description` varchar(5000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_support_tickets
-- ----------------------------
DROP TABLE IF EXISTS `cp_support_tickets`;
CREATE TABLE `cp_support_tickets`  (
  `ticket_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticketID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2',
  `priority` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Normal',
  `p_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `subject` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[no subject]',
  `ip_address` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'open',
  `isoverdue` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isanswered` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `duedate` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reopened` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `closed` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastmessage` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastresponse` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ticket_id`) USING BTREE,
  UNIQUE INDEX `email_extid`(`ticketID`, `email`) USING BTREE,
  INDEX `staff_id`(`p_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `priority_id`(`area`) USING BTREE,
  INDEX `created`(`created`) USING BTREE,
  INDEX `closed`(`closed`) USING BTREE,
  INDEX `duedate`(`duedate`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_support_tickets_response
-- ----------------------------
DROP TABLE IF EXISTS `cp_support_tickets_response`;
CREATE TABLE `cp_support_tickets_response`  (
  `response_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticket_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `p_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `form` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `staff` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `response` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `created` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`response_id`) USING BTREE,
  INDEX `ticket_id`(`ticket_id`) USING BTREE,
  INDEX `staff_id`(`p_id`) USING BTREE,
  FULLTEXT INDEX `response`(`response`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_track
-- ----------------------------
DROP TABLE IF EXISTS `cp_track`;
CREATE TABLE `cp_track`  (
  `Logins` int(11) NOT NULL DEFAULT 0,
  `MaxDay` int(11) NOT NULL DEFAULT 0,
  `MaxDate` datetime NOT NULL,
  PRIMARY KEY (`Logins`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_username
-- ----------------------------
DROP TABLE IF EXISTS `cp_username`;
CREATE TABLE `cp_username`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT 0,
  `Reason` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Updated_By` int(11) NOT NULL DEFAULT 0,
  `Date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid, status`(`Userid`, `Status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_weekly_reports
-- ----------------------------
DROP TABLE IF EXISTS `cp_weekly_reports`;
CREATE TABLE `cp_weekly_reports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `q1` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `q2` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `q3` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `q4` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `q5` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cp_whitelist
-- ----------------------------
DROP TABLE IF EXISTS `cp_whitelist`;
CREATE TABLE `cp_whitelist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `adminlevel` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crate_facility
-- ----------------------------
DROP TABLE IF EXISTS `crate_facility`;
CREATE TABLE `crate_facility`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(52) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '----',
  `Group` int(11) NOT NULL DEFAULT -1,
  `Posx` float(20, 5) NOT NULL DEFAULT 0.00000,
  `Posy` float(20, 5) NOT NULL DEFAULT 0.00000,
  `Posz` float(20, 5) NOT NULL DEFAULT 0.00000,
  `Posr` float(20, 5) NOT NULL DEFAULT 0.00000,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Vw` int(11) NOT NULL DEFAULT 0,
  `Prodmax` int(11) NOT NULL DEFAULT 10,
  `ProdPrep` int(11) NOT NULL DEFAULT 0,
  `ProdReady` int(11) NOT NULL DEFAULT 0,
  `ProdTimer` int(11) NOT NULL DEFAULT 1,
  `ProdStatus` int(11) NOT NULL DEFAULT 1,
  `ProdCost` int(11) NOT NULL DEFAULT 0,
  `RaidTimer` int(11) NOT NULL DEFAULT 0,
  `Cooldown` int(11) NOT NULL DEFAULT 0,
  `Active` int(11) NOT NULL DEFAULT 0,
  `Timer` int(11) NOT NULL DEFAULT 0,
  `ProdMulti` int(11) NOT NULL DEFAULT 1,
  `Raidable` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crate_orders
-- ----------------------------
DROP TABLE IF EXISTS `crate_orders`;
CREATE TABLE `crate_orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Facility` int(11) NOT NULL DEFAULT -1,
  `Crates` int(11) NOT NULL DEFAULT 0,
  `PerCrate` int(11) NOT NULL DEFAULT 0,
  `OrderBy` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Unknown',
  `Delivered` int(11) NOT NULL DEFAULT 0,
  `Status` int(11) NOT NULL DEFAULT 0,
  `Time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crate_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `crate_vehicles`;
CREATE TABLE `crate_vehicles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vModel` int(11) NOT NULL DEFAULT -1,
  `vColor1` int(11) NOT NULL DEFAULT 0,
  `vColor2` int(11) NOT NULL DEFAULT 0,
  `vPlate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vGroup` int(11) NOT NULL DEFAULT -1,
  `vRank` int(11) NOT NULL DEFAULT -1,
  `vSpawned` int(11) NOT NULL DEFAULT 1,
  `vDisabled` int(11) NOT NULL DEFAULT 0,
  `vImpound` int(11) NOT NULL DEFAULT 0,
  `vTickets` int(11) NOT NULL DEFAULT 0,
  `vMaxHealth` int(11) NOT NULL DEFAULT 1000,
  `vHealth` float NOT NULL DEFAULT 1000,
  `vFuel` int(11) NOT NULL DEFAULT 100,
  `vPosX` float(20, 5) NOT NULL DEFAULT 0.00000,
  `vPosY` float(20, 5) NOT NULL DEFAULT 0.00000,
  `vPosZ` float(20, 5) NOT NULL DEFAULT 0.00000,
  `vRotZ` float(20, 5) NOT NULL DEFAULT 0.00000,
  `vInt` int(11) NOT NULL DEFAULT 0,
  `vVw` int(11) NOT NULL DEFAULT 0,
  `vCrateMax` int(11) NOT NULL DEFAULT 0,
  `vCrate` int(11) NOT NULL DEFAULT -1,
  `FirstDrop` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crates
-- ----------------------------
DROP TABLE IF EXISTS `crates`;
CREATE TABLE `crates`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Facility` int(11) NOT NULL DEFAULT 0,
  `Group` int(11) NOT NULL DEFAULT -1,
  `CrateX` float(20, 5) NOT NULL DEFAULT 0.00000,
  `CrateY` float(20, 5) NOT NULL DEFAULT 0.00000,
  `CrateZ` float(20, 5) NOT NULL DEFAULT 0.00000,
  `InVehicle` int(11) NOT NULL DEFAULT -1,
  `OnVehicle` int(11) NOT NULL DEFAULT -1,
  `Int` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Gun1` int(11) NOT NULL DEFAULT 0,
  `GunAmount1` int(11) NOT NULL DEFAULT 0,
  `Gun2` int(11) NOT NULL DEFAULT 0,
  `GunAmount2` int(11) NOT NULL DEFAULT 0,
  `Gun3` int(11) NOT NULL DEFAULT 0,
  `GunAmount3` int(11) NOT NULL DEFAULT 0,
  `Gun4` int(11) NOT NULL DEFAULT 0,
  `GunAmount4` int(11) NOT NULL DEFAULT 0,
  `Gun5` int(11) NOT NULL DEFAULT 0,
  `GunAmount5` int(11) NOT NULL DEFAULT 0,
  `Gun6` int(11) NOT NULL DEFAULT 0,
  `GunAmount6` int(11) NOT NULL DEFAULT 0,
  `Gun7` int(11) NOT NULL DEFAULT 0,
  `GunAmount7` int(11) NOT NULL DEFAULT 0,
  `Gun8` int(11) NOT NULL DEFAULT 0,
  `GunAmount8` int(11) NOT NULL DEFAULT 0,
  `Gun9` int(11) NOT NULL DEFAULT 0,
  `GunAmount9` int(11) NOT NULL DEFAULT 0,
  `Gun10` int(11) NOT NULL DEFAULT 0,
  `GunAmount10` int(11) NOT NULL DEFAULT 0,
  `Gun11` int(11) NOT NULL DEFAULT 0,
  `GunAmount11` int(11) NOT NULL DEFAULT 0,
  `Gun12` int(11) NOT NULL DEFAULT 0,
  `GunAmount12` int(11) NOT NULL DEFAULT 0,
  `Gun13` int(11) NOT NULL DEFAULT 0,
  `GunAmount13` int(11) NOT NULL DEFAULT 0,
  `Gun14` int(11) NOT NULL DEFAULT 0,
  `GunAmount14` int(11) NOT NULL DEFAULT 0,
  `Gun15` int(11) NOT NULL DEFAULT 0,
  `GunAmount16` int(11) NOT NULL DEFAULT 0,
  `GunAmount15` int(11) NOT NULL DEFAULT 0,
  `Gun16` int(11) NOT NULL DEFAULT 0,
  `PlacedBy` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Unknown',
  `Lifespan` int(11) NOT NULL DEFAULT 0,
  `Transfer` int(11) NOT NULL DEFAULT 0,
  `DoorID` int(11) NOT NULL DEFAULT -1,
  `DoorType` int(11) NOT NULL DEFAULT -1,
  `Price` int(11) NOT NULL DEFAULT 0,
  `Paid` int(11) NOT NULL DEFAULT 0,
  `Active` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 501 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for crimesdata
-- ----------------------------
DROP TABLE IF EXISTS `crimesdata`;
CREATE TABLE `crimesdata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NULL DEFAULT 1,
  `nation` int(11) NULL DEFAULT 1,
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N/A',
  `jailtime` int(11) NULL DEFAULT 1,
  `fine` int(11) NULL DEFAULT 1,
  `bail` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ddoors
-- ----------------------------
DROP TABLE IF EXISTS `ddoors`;
CREATE TABLE `ddoors`  (
  `id` int(11) NOT NULL,
  `Description` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Owner` int(11) NOT NULL DEFAULT -1,
  `OwnerName` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `CustomInterior` int(11) NOT NULL DEFAULT 0,
  `ExteriorVW` int(11) NOT NULL DEFAULT 0,
  `ExteriorInt` int(11) NOT NULL DEFAULT 0,
  `InteriorVW` int(11) NOT NULL DEFAULT 0,
  `InteriorInt` int(11) NOT NULL DEFAULT 0,
  `ExteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `CustomExterior` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `Rank` int(11) NOT NULL DEFAULT -1,
  `VIP` int(11) NOT NULL DEFAULT 0,
  `DPC` int(11) NOT NULL DEFAULT 0,
  `Allegiance` int(11) NOT NULL DEFAULT 0,
  `GroupType` int(11) NOT NULL DEFAULT 0,
  `Family` int(11) NOT NULL DEFAULT 0,
  `Faction` int(11) NOT NULL DEFAULT -1,
  `Admin` int(11) NOT NULL DEFAULT 0,
  `Wanted` int(11) NOT NULL DEFAULT 0,
  `VehicleAble` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `PickupModel` int(11) NOT NULL DEFAULT 0,
  `Pass` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'pass',
  `Locked` int(11) NOT NULL DEFAULT 0,
  `Famed` int(11) NOT NULL DEFAULT 0,
  `LastLogin` int(11) NOT NULL DEFAULT 0,
  `Expire` int(11) NOT NULL DEFAULT 0,
  `Inactive` int(11) NOT NULL DEFAULT 0,
  `Ignore` int(11) NOT NULL DEFAULT 0,
  `Counter` int(11) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dedi_april
-- ----------------------------
DROP TABLE IF EXISTS `dedi_april`;
CREATE TABLE `dedi_april`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RewardHours` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Display` int(11) NOT NULL DEFAULT 0,
  `Status` int(11) NOT NULL DEFAULT 0,
  `BanOnly` int(11) NOT NULL DEFAULT 0,
  `Guest` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for devcpbans
-- ----------------------------
DROP TABLE IF EXISTS `devcpbans`;
CREATE TABLE `devcpbans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Date` datetime NOT NULL,
  `Banby` int(11) NOT NULL DEFAULT 0,
  `Unban` date NULL DEFAULT NULL,
  `Bugid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for devcplogs
-- ----------------------------
DROP TABLE IF EXISTS `devcplogs`;
CREATE TABLE `devcplogs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Bugid` int(11) NOT NULL DEFAULT 0,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Details` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dm_watchdog
-- ----------------------------
DROP TABLE IF EXISTS `dm_watchdog`;
CREATE TABLE `dm_watchdog`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `reporter` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `superwatch` tinyint(4) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dmap
-- ----------------------------
DROP TABLE IF EXISTS `dmap`;
CREATE TABLE `dmap`  (
  `PlayerID` int(11) NOT NULL DEFAULT -1,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `PosX` float(11, 0) NULL DEFAULT NULL,
  `PosY` float(11, 0) NULL DEFAULT NULL,
  `PosZ` float(11, 0) NULL DEFAULT NULL,
  `VehID` int(11) NULL DEFAULT NULL,
  `VehModel` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`PlayerID`, `Username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dmapicons
-- ----------------------------
DROP TABLE IF EXISTS `dmapicons`;
CREATE TABLE `dmapicons`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MarkerType` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 401 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for drugpool
-- ----------------------------
DROP TABLE IF EXISTS `drugpool`;
CREATE TABLE `drugpool`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drugid` int(11) NOT NULL DEFAULT -1,
  `quality` int(11) NOT NULL DEFAULT 0,
  `DBID` int(11) NOT NULL DEFAULT -1,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `spawned` int(11) NOT NULL DEFAULT 0,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `vw` int(11) NOT NULL DEFAULT 0,
  `int` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dynpoints
-- ----------------------------
DROP TABLE IF EXISTS `dynpoints`;
CREATE TABLE `dynpoints`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pointname` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `posx` float(20, 5) NOT NULL,
  `posy` float(20, 5) NOT NULL,
  `posz` float(20, 5) NOT NULL,
  `pos2x` float(20, 5) NOT NULL,
  `pos2y` float(20, 5) NOT NULL,
  `pos2z` float(20, 5) NOT NULL,
  `vw` int(11) NOT NULL DEFAULT 0,
  `int` int(11) NOT NULL DEFAULT 0,
  `vw2` int(11) NOT NULL DEFAULT 0,
  `int2` int(11) NOT NULL DEFAULT 0,
  `boatonly` int(11) NOT NULL DEFAULT 0,
  `ready` int(11) NOT NULL DEFAULT 0,
  `capturename` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'N/A',
  `capturegroup` int(11) NOT NULL DEFAULT -1,
  `locked` int(11) NOT NULL DEFAULT 1,
  `timer` int(11) NOT NULL DEFAULT 0,
  `amounthour` int(11) NOT NULL DEFAULT 0,
  `amount0` int(11) NOT NULL DEFAULT 0,
  `amount1` int(11) NOT NULL DEFAULT 0,
  `amount2` int(11) NOT NULL DEFAULT 0,
  `amount3` int(11) NOT NULL DEFAULT 0,
  `amount4` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for electionresults
-- ----------------------------
DROP TABLE IF EXISTS `electionresults`;
CREATE TABLE `electionresults`  (
  `accountid` int(11) NOT NULL,
  `optionid` int(11) NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`accountid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for event_hungergames-2013-10
-- ----------------------------
DROP TABLE IF EXISTS `event_hungergames-2013-10`;
CREATE TABLE `event_hungergames-2013-10`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fallintofun
-- ----------------------------
DROP TABLE IF EXISTS `fallintofun`;
CREATE TABLE `fallintofun`  (
  `player` int(11) NOT NULL DEFAULT 0,
  `FIFHours` int(11) NULL DEFAULT 0,
  `FIFChances` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`player`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for families
-- ----------------------------
DROP TABLE IF EXISTS `families`;
CREATE TABLE `families`  (
  `ID` tinyint(1) NOT NULL AUTO_INCREMENT,
  `Taken` tinyint(1) NOT NULL DEFAULT 0,
  `Name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `MOTD1` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Leader` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Bank` int(11) NOT NULL DEFAULT 0,
  `Cash` int(11) NOT NULL DEFAULT 0,
  `FamilyUSafe` int(11) NOT NULL DEFAULT 0,
  `FamilySafeX` float(11, 5) NOT NULL DEFAULT 0.00000,
  `FamilySafeY` float(11, 5) NOT NULL DEFAULT 0.00000,
  `FamilySafeZ` float(11, 5) NOT NULL DEFAULT 0.00000,
  `FamilySafeVW` int(11) NOT NULL DEFAULT -1,
  `FamilySafeInt` int(11) NOT NULL DEFAULT -1,
  `Pot` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL DEFAULT 0,
  `Mats` int(11) NOT NULL DEFAULT 0,
  `Rank0` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Newb',
  `Rank1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Outsider',
  `Rank2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Associate',
  `Rank3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Soldier',
  `Rank4` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Capo',
  `Rank5` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Underboss',
  `Rank6` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Godfather',
  `Members` smallint(6) NOT NULL DEFAULT 0,
  `MaxSkins` tinyint(4) NOT NULL DEFAULT 0,
  `Skin1` int(11) NOT NULL DEFAULT 0,
  `Skin2` int(11) NOT NULL DEFAULT 0,
  `Skin3` int(11) NOT NULL DEFAULT 0,
  `Skin4` int(11) NOT NULL DEFAULT 0,
  `Skin5` int(11) NOT NULL DEFAULT 0,
  `Skin6` int(11) NOT NULL DEFAULT 0,
  `Skin7` int(11) NOT NULL DEFAULT 0,
  `Skin8` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `TurfTokens` int(11) NOT NULL DEFAULT 0,
  `Gun1` tinyint(4) NOT NULL DEFAULT 0,
  `Gun2` tinyint(4) NOT NULL DEFAULT 0,
  `Gun3` tinyint(4) NOT NULL DEFAULT 0,
  `Gun4` tinyint(4) NOT NULL DEFAULT 0,
  `Gun5` tinyint(4) NOT NULL DEFAULT 0,
  `Gun6` tinyint(4) NOT NULL DEFAULT 0,
  `Gun7` tinyint(4) NOT NULL DEFAULT 0,
  `Gun8` tinyint(4) NOT NULL DEFAULT 0,
  `Gun9` tinyint(4) NOT NULL DEFAULT 0,
  `Gun10` tinyint(4) NOT NULL DEFAULT 0,
  `ExteriorX` float(11, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorY` float(11, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorZ` float(11, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorA` float(11, 5) NOT NULL DEFAULT 0.00000,
  `InteriorX` float(11, 5) NOT NULL DEFAULT 0.00000,
  `InteriorY` float(11, 5) NOT NULL DEFAULT 0.00000,
  `InteriorZ` float(11, 5) NOT NULL DEFAULT 0.00000,
  `InteriorA` float(11, 5) NOT NULL DEFAULT 0.00000,
  `VW` int(11) NOT NULL DEFAULT 0,
  `INT` int(11) NOT NULL DEFAULT 0,
  `CustomInterior` int(11) NOT NULL DEFAULT 0,
  `Division0` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Division1` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Division2` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Division3` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Division4` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Heroin` int(11) NOT NULL DEFAULT 0,
  `GtObject` int(11) NOT NULL DEFAULT 1490,
  `MOTD2` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `MOTD3` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `fontface` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Arial',
  `fontsize` int(11) NOT NULL DEFAULT 24,
  `bold` int(11) NOT NULL DEFAULT 0,
  `fontcolor` int(11) NOT NULL DEFAULT -1,
  `backcolor` int(11) NOT NULL DEFAULT 0,
  `text` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Preview',
  `gtUsed` int(11) NOT NULL DEFAULT 0,
  `FamColor` mediumint(8) UNSIGNED NOT NULL DEFAULT 130303,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for findflag
-- ----------------------------
DROP TABLE IF EXISTS `findflag`;
CREATE TABLE `findflag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Model` int(11) NOT NULL DEFAULT 19306,
  `PosX` float(20, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(20, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(20, 5) NOT NULL DEFAULT 0.00000,
  `Vw` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Spawn` int(11) NOT NULL DEFAULT -1,
  `TagID` int(11) NOT NULL DEFAULT 1,
  `Tags` int(11) NOT NULL DEFAULT 0,
  `Time` int(11) NOT NULL DEFAULT 0,
  `Active` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for findflagtrack
-- ----------------------------
DROP TABLE IF EXISTS `findflagtrack`;
CREATE TABLE `findflagtrack`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `FlagID` int(11) NOT NULL DEFAULT 0,
  `Date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for flags
-- ----------------------------
DROP TABLE IF EXISTS `flags`;
CREATE TABLE `flags`  (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `issuer` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `flag` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Regular | 2 = Admin',
  PRIMARY KEY (`fid`) USING BTREE,
  UNIQUE INDEX `id`(`fid`) USING BTREE,
  INDEX `userid`(`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for furniture
-- ----------------------------
DROP TABLE IF EXISTS `furniture`;
CREATE TABLE `furniture`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `houseid` int(11) NULL DEFAULT 0,
  `sqlid` int(11) NULL DEFAULT 0,
  `modelid` int(11) NULL DEFAULT 0,
  `slotid` int(11) NULL DEFAULT 0,
  `x` float(11, 4) NULL DEFAULT 0.0000,
  `y` float(11, 4) NULL DEFAULT 0.0000,
  `z` float(11, 4) NULL DEFAULT 0.0000,
  `rx` float(11, 4) NULL DEFAULT 0.0000,
  `ry` float(11, 4) NULL DEFAULT 0.0000,
  `rz` float(11, 4) NULL DEFAULT 0.0000,
  `text0` int(11) NULL DEFAULT -1,
  `text1` int(11) NULL DEFAULT -1,
  `text2` int(11) NULL DEFAULT -1,
  `text3` int(11) NULL DEFAULT -1,
  `text4` int(11) NULL DEFAULT -1,
  `text5` int(11) NULL DEFAULT 0,
  `col0` int(11) NULL DEFAULT 0,
  `col1` int(11) NULL DEFAULT 0,
  `col2` int(11) NULL DEFAULT 0,
  `col3` int(11) NULL DEFAULT 0,
  `col4` int(11) NULL DEFAULT 0,
  `col5` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 163 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for furniturecatalog
-- ----------------------------
DROP TABLE IF EXISTS `furniturecatalog`;
CREATE TABLE `furniturecatalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NULL DEFAULT 0,
  `modelid` int(11) NULL DEFAULT -1,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'None',
  `price` int(11) NULL DEFAULT 0,
  `vip` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 369 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gangtags
-- ----------------------------
DROP TABLE IF EXISTS `gangtags`;
CREATE TABLE `gangtags`  (
  `id` int(11) NOT NULL,
  `gangid` int(11) NOT NULL DEFAULT -1,
  `text` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Cheeky Nandos',
  `pdbid` int(11) NOT NULL DEFAULT -1,
  `pname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `rx` int(11) NOT NULL DEFAULT 0,
  `ry` int(11) NOT NULL DEFAULT 0,
  `rz` int(11) NOT NULL DEFAULT 0,
  `fontid` int(11) NOT NULL DEFAULT 0,
  `color` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garages
-- ----------------------------
DROP TABLE IF EXISTS `garages`;
CREATE TABLE `garages`  (
  `id` int(11) NOT NULL,
  `Owner` int(11) NOT NULL DEFAULT -1,
  `OwnerName` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `ExteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorVW` int(11) NOT NULL DEFAULT 0,
  `ExteriorInt` int(11) NOT NULL DEFAULT 0,
  `CustomExterior` int(11) NOT NULL DEFAULT 0,
  `InteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorVW` int(11) NOT NULL DEFAULT 0,
  `Pass` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'pass',
  `Locked` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gates
-- ----------------------------
DROP TABLE IF EXISTS `gates`;
CREATE TABLE `gates`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HID` int(11) NOT NULL DEFAULT -1,
  `Speed` float NOT NULL DEFAULT 10,
  `Range` float NOT NULL DEFAULT 10,
  `Model` int(11) NOT NULL DEFAULT 18631,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Pass` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `PosXM` float NOT NULL DEFAULT 0,
  `PosYM` float NOT NULL DEFAULT 0,
  `PosZM` float NOT NULL DEFAULT 0,
  `RotXM` float NOT NULL DEFAULT 0,
  `RotYM` float NOT NULL DEFAULT 0,
  `RotZM` float NOT NULL DEFAULT 0,
  `Allegiance` int(11) NOT NULL DEFAULT 0,
  `GroupType` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT -1,
  `FamilyID` int(11) NOT NULL DEFAULT -1,
  `RenderHQ` int(11) NOT NULL DEFAULT 1,
  `Timer` int(11) NOT NULL DEFAULT 0,
  `Automate` int(11) NOT NULL DEFAULT 0,
  `Locked` int(11) NOT NULL DEFAULT 0,
  `TIndex` int(11) NOT NULL DEFAULT -1,
  `TModel` int(11) NOT NULL DEFAULT 65535,
  `TTXD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `TTexture` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `TColor` int(11) NOT NULL DEFAULT 0,
  `Facility` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `id`(`ID`) USING BTREE,
  INDEX `houseid`(`HID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4001 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gcrates
-- ----------------------------
DROP TABLE IF EXISTS `gcrates`;
CREATE TABLE `gcrates`  (
  `iCrateID` int(11) NOT NULL,
  `iGroupID` int(11) NOT NULL DEFAULT 255,
  `9mm` int(11) NOT NULL DEFAULT 0,
  `sdpistol` int(11) NOT NULL DEFAULT 0,
  `deagle` int(11) NOT NULL DEFAULT 0,
  `uzi` int(11) NOT NULL DEFAULT 0,
  `tec9` int(11) NOT NULL DEFAULT 0,
  `mp5` int(11) NOT NULL DEFAULT 0,
  `m4` int(11) NOT NULL DEFAULT 0,
  `ak47` int(11) NOT NULL DEFAULT 0,
  `rifle` int(11) NOT NULL DEFAULT 0,
  `sniper` int(11) NOT NULL DEFAULT 0,
  `shotty` int(11) NOT NULL DEFAULT 0,
  `sawnoff` int(11) NOT NULL DEFAULT 0,
  `spas` int(11) NOT NULL DEFAULT 0,
  `ammo0` int(11) NOT NULL DEFAULT 0,
  `ammo1` int(11) NOT NULL DEFAULT 0,
  `ammo2` int(11) NOT NULL DEFAULT 0,
  `ammo3` int(11) NOT NULL DEFAULT 0,
  `ammo4` int(11) NOT NULL DEFAULT 0,
  `pot` int(11) NOT NULL DEFAULT 0,
  `crack` int(11) NOT NULL DEFAULT 0,
  `meth` int(11) NOT NULL DEFAULT 0,
  `ecstasy` int(11) NOT NULL DEFAULT 0,
  `heroin` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`iCrateID`) USING BTREE,
  UNIQUE INDEX `iCrateID`(`iCrateID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for giftbox
-- ----------------------------
DROP TABLE IF EXISTS `giftbox`;
CREATE TABLE `giftbox`  (
  `dgMoney0` int(11) NULL DEFAULT 0,
  `dgRimKit0` int(11) NULL DEFAULT 0,
  `dgFirework0` int(11) NULL DEFAULT 0,
  `dgGVIP0` int(11) NULL DEFAULT 0,
  `dgGVIPEx0` int(11) NULL DEFAULT 0,
  `dgSVIP0` int(11) NULL DEFAULT 0,
  `dgSVIPEx0` int(11) NULL DEFAULT 0,
  `dgCarSlot0` int(11) NULL DEFAULT 0,
  `dgToySlot0` int(11) NULL DEFAULT 0,
  `dgArmor0` int(11) NULL DEFAULT 0,
  `dgFirstaid0` int(11) NULL DEFAULT 0,
  `dgDDFlag0` int(11) NULL DEFAULT 0,
  `dgGateFlag0` int(11) NULL DEFAULT 0,
  `dgCredits0` int(11) NULL DEFAULT 0,
  `dgPriorityAd0` int(11) NULL DEFAULT 0,
  `dgHealthNArmor0` int(11) NULL DEFAULT 0,
  `dgRespectPoint0` int(11) NULL DEFAULT 0,
  `dgCarVoucher0` int(11) NULL DEFAULT 0,
  `dgBuddyInvite0` int(11) NULL DEFAULT 0,
  `dgLaser0` int(11) NULL DEFAULT 0,
  `dgCustomToy0` int(11) NULL DEFAULT 0,
  `dgAdmuteReset0` int(11) NULL DEFAULT 0,
  `dgNewbieMuteReset0` int(11) NULL DEFAULT 0,
  `dgRestrictedCarVoucher0` int(11) NULL DEFAULT 0,
  `dgPlatinumVIPVoucher0` int(11) NULL DEFAULT 0,
  `dgGiftReset0` int(11) NULL DEFAULT 0,
  `dgMaterial0` int(11) NULL DEFAULT 0,
  `dgWarning0` int(11) NULL DEFAULT 0,
  `dgPot0` int(11) NULL DEFAULT 0,
  `dgCrack0` int(11) NULL DEFAULT 0,
  `dgPaintballToken0` int(11) NULL DEFAULT 0,
  `dgVIPToken0` int(11) NULL DEFAULT 0,
  `dgMoney1` int(11) NULL DEFAULT 0,
  `dgRimKit1` int(11) NULL DEFAULT 0,
  `dgFirework1` int(11) NULL DEFAULT 0,
  `dgGVIP1` int(11) NULL DEFAULT 0,
  `dgGVIPEx1` int(11) NULL DEFAULT 0,
  `dgSVIP1` int(11) NULL DEFAULT 0,
  `dgSVIPEx1` int(11) NULL DEFAULT 0,
  `dgCarSlot1` int(11) NULL DEFAULT 0,
  `dgToySlot1` int(11) NULL DEFAULT 0,
  `dgArmor1` int(11) NULL DEFAULT 0,
  `dgFirstaid1` int(11) NULL DEFAULT 0,
  `dgDDFlag1` int(11) NULL DEFAULT 0,
  `dgGateFlag1` int(11) NULL DEFAULT 0,
  `dgCredits1` int(11) NULL DEFAULT 0,
  `dgPriorityAd1` int(11) NULL DEFAULT 0,
  `dgHealthNArmor1` int(11) NULL DEFAULT 0,
  `dgRespectPoint1` int(11) NULL DEFAULT 0,
  `dgCarVoucher1` int(11) NULL DEFAULT 0,
  `dgBuddyInvite1` int(11) NULL DEFAULT 0,
  `dgLaser1` int(11) NULL DEFAULT 0,
  `dgCustomToy1` int(11) NULL DEFAULT 0,
  `dgAdmuteReset1` int(11) NULL DEFAULT 0,
  `dgNewbieMuteReset1` int(11) NULL DEFAULT 0,
  `dgRestrictedCarVoucher1` int(11) NULL DEFAULT 0,
  `dgPlatinumVIPVoucher1` int(11) NULL DEFAULT 0,
  `dgGiftReset1` int(11) NULL DEFAULT 0,
  `dgMaterial1` int(11) NULL DEFAULT 0,
  `dgWarning1` int(11) NULL DEFAULT 0,
  `dgPot1` int(11) NULL DEFAULT 0,
  `dgCrack1` int(11) NULL DEFAULT 0,
  `dgPaintballToken1` int(11) NULL DEFAULT 0,
  `dgVIPToken1` int(11) NULL DEFAULT 0,
  `dgMoney2` int(11) NULL DEFAULT 0,
  `dgRimKit2` int(11) NULL DEFAULT 0,
  `dgFirework2` int(11) NULL DEFAULT 0,
  `dgGVIP2` int(11) NULL DEFAULT 0,
  `dgGVIPEx2` int(11) NULL DEFAULT 0,
  `dgSVIP2` int(11) NULL DEFAULT 0,
  `dgSVIPEx2` int(11) NULL DEFAULT 0,
  `dgCarSlot2` int(11) NULL DEFAULT 0,
  `dgToySlot2` int(11) NULL DEFAULT 0,
  `dgArmor2` int(11) NULL DEFAULT 0,
  `dgFirstaid2` int(11) NULL DEFAULT 0,
  `dgDDFlag2` int(11) NULL DEFAULT 0,
  `dgGateFlag2` int(11) NULL DEFAULT 0,
  `dgCredits2` int(11) NULL DEFAULT 0,
  `dgPriorityAd2` int(11) NULL DEFAULT 0,
  `dgHealthNArmor2` int(11) NULL DEFAULT 0,
  `dgRespectPoint2` int(11) NULL DEFAULT 0,
  `dgCarVoucher2` int(11) NULL DEFAULT 0,
  `dgBuddyInvite2` int(11) NULL DEFAULT 0,
  `dgLaser2` int(11) NULL DEFAULT 0,
  `dgCustomToy2` int(11) NULL DEFAULT 0,
  `dgAdmuteReset2` int(11) NULL DEFAULT 0,
  `dgNewbieMuteReset2` int(11) NULL DEFAULT 0,
  `dgRestrictedCarVoucher2` int(11) NULL DEFAULT 0,
  `dgPlatinumVIPVoucher2` int(11) NULL DEFAULT 0,
  `dgGiftReset2` int(11) NULL DEFAULT 0,
  `dgMaterial2` int(11) NULL DEFAULT 0,
  `dgWarning2` int(11) NULL DEFAULT 0,
  `dgPot2` int(11) NULL DEFAULT 0,
  `dgCrack2` int(11) NULL DEFAULT 0,
  `dgPaintballToken2` int(11) NULL DEFAULT 0,
  `dgVIPToken2` int(11) NULL DEFAULT 0,
  `dgMoney3` int(11) NULL DEFAULT 0,
  `dgRimKit3` int(11) NULL DEFAULT 0,
  `dgFirework3` int(11) NULL DEFAULT 0,
  `dgGVIP3` int(11) NULL DEFAULT 0,
  `dgGVIPEx3` int(11) NULL DEFAULT 0,
  `dgSVIP3` int(11) NULL DEFAULT 0,
  `dgSVIPEx3` int(11) NULL DEFAULT 0,
  `dgCarSlot3` int(11) NULL DEFAULT 0,
  `dgToySlot3` int(11) NULL DEFAULT 0,
  `dgArmor3` int(11) NULL DEFAULT 0,
  `dgFirstaid3` int(11) NULL DEFAULT 0,
  `dgDDFlag3` int(11) NULL DEFAULT 0,
  `dgGateFlag3` int(11) NULL DEFAULT 0,
  `dgCredits3` int(11) NULL DEFAULT 0,
  `dgPriorityAd3` int(11) NULL DEFAULT 0,
  `dgHealthNArmor3` int(11) NULL DEFAULT 0,
  `dgRespectPoint3` int(11) NULL DEFAULT 0,
  `dgCarVoucher3` int(11) NULL DEFAULT 0,
  `dgBuddyInvite3` int(11) NULL DEFAULT 0,
  `dgLaser3` int(11) NULL DEFAULT 0,
  `dgCustomToy3` int(11) NULL DEFAULT 0,
  `dgAdmuteReset3` int(11) NULL DEFAULT 0,
  `dgNewbieMuteReset3` int(11) NULL DEFAULT 0,
  `dgRestrictedCarVoucher3` int(11) NULL DEFAULT 0,
  `dgPlatinumVIPVoucher3` int(11) NULL DEFAULT 0,
  `dgGiftReset3` int(11) NULL DEFAULT 0,
  `dgMaterial3` int(11) NULL DEFAULT 0,
  `dgWarning3` int(11) NULL DEFAULT 0,
  `dgPot3` int(11) NULL DEFAULT 0,
  `dgCrack3` int(11) NULL DEFAULT 0,
  `dgPaintballToken3` int(11) NULL DEFAULT 0,
  `dgVIPToken3` int(11) NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for giftpage_dec
-- ----------------------------
DROP TABLE IF EXISTS `giftpage_dec`;
CREATE TABLE `giftpage_dec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `rToken` int(11) NOT NULL DEFAULT 0,
  `usedReset` int(11) NOT NULL DEFAULT 0,
  `plyHour` int(11) NULL DEFAULT 0,
  `sgToken` int(11) NULL DEFAULT 0,
  `sBeer` int(11) NULL DEFAULT 0,
  `rBeer` int(11) NULL DEFAULT 0,
  `rVIP` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for govgunsales
-- ----------------------------
DROP TABLE IF EXISTS `govgunsales`;
CREATE TABLE `govgunsales`  (
  `wepid` int(11) NOT NULL,
  `wepprice` int(11) NOT NULL,
  `wepsales` int(11) NOT NULL,
  PRIMARY KEY (`wepid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for groupbans
-- ----------------------------
DROP TABLE IF EXISTS `groupbans`;
CREATE TABLE `groupbans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TypeBan` int(11) NOT NULL DEFAULT -1,
  `PlayerID` int(11) NOT NULL DEFAULT -1,
  `BanDate` datetime NOT NULL DEFAULT '2001-01-12 00:00:00',
  `GroupBan` int(11) NOT NULL DEFAULT -1,
  `BannedBy` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `BanReason` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `playerid`(`PlayerID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` tinyint(4) NOT NULL DEFAULT 0,
  `Name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `MOTD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `MOTD2` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `MOTD3` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Allegiance` tinyint(4) NOT NULL DEFAULT 0,
  `Bug` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Radio` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `DeptRadio` int(10) UNSIGNED NOT NULL DEFAULT 255,
  `GovAnnouncement` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `RankNames` tinyint(4) NOT NULL,
  `TreasuryAccess` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `SpikeStrips` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Barricades` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Cones` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Flares` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Barrels` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `Ladders` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `FreeNameChange` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `CrateIslandAccess` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `DutyColour` mediumint(8) UNSIGNED NOT NULL DEFAULT 16777215,
  `RadioColour` mediumint(8) UNSIGNED NOT NULL DEFAULT 16777215,
  `Budget` int(11) NOT NULL DEFAULT 0,
  `BudgetPayment` int(11) NOT NULL DEFAULT 0,
  `Stock` int(11) NOT NULL DEFAULT 0,
  `LockerCostType` int(11) NOT NULL DEFAULT 2,
  `CrateX` float NOT NULL DEFAULT 0,
  `CrateY` float NOT NULL DEFAULT 0,
  `CrateZ` float NOT NULL DEFAULT 0,
  `Rank0` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank4` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank5` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank6` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank7` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank8` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank9` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Rank0Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank1Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank2Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank3Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank4Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank5Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank6Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank7Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank8Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank9Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Div0` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Div1` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Div2` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Div3` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Div4` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Div5` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Div6` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Div7` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Div8` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Div9` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Div10` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `Gun0` tinyint(4) NOT NULL DEFAULT 0,
  `Cost0` int(11) NOT NULL DEFAULT 0,
  `Gun1` tinyint(4) NOT NULL DEFAULT 0,
  `Cost1` int(11) NOT NULL DEFAULT 0,
  `Gun2` tinyint(4) NOT NULL DEFAULT 0,
  `Cost2` int(11) NOT NULL DEFAULT 0,
  `Gun3` tinyint(4) NOT NULL DEFAULT 0,
  `Cost3` int(11) NOT NULL DEFAULT 0,
  `Gun4` tinyint(4) NOT NULL DEFAULT 0,
  `Cost4` int(11) NOT NULL DEFAULT 0,
  `Gun5` tinyint(4) NOT NULL DEFAULT 0,
  `Cost5` int(11) NOT NULL DEFAULT 0,
  `Gun6` tinyint(4) NOT NULL DEFAULT 0,
  `Cost6` int(11) NOT NULL DEFAULT 0,
  `Gun7` tinyint(4) NOT NULL DEFAULT 0,
  `Cost7` int(11) NOT NULL DEFAULT 0,
  `Gun8` tinyint(4) NOT NULL DEFAULT 0,
  `Cost8` int(11) NOT NULL DEFAULT 0,
  `Gun9` tinyint(4) NOT NULL DEFAULT 0,
  `Cost9` int(11) NOT NULL DEFAULT 0,
  `Gun10` tinyint(4) NOT NULL DEFAULT 0,
  `Cost10` int(11) NOT NULL DEFAULT 0,
  `Gun11` tinyint(4) NOT NULL DEFAULT 0,
  `Cost11` int(11) NOT NULL DEFAULT 0,
  `Gun12` tinyint(4) NOT NULL DEFAULT 0,
  `Cost12` int(11) NOT NULL DEFAULT 0,
  `Gun13` tinyint(4) NOT NULL DEFAULT 0,
  `Cost13` int(11) NOT NULL DEFAULT 0,
  `Gun14` tinyint(4) NOT NULL DEFAULT 0,
  `Cost14` int(11) NOT NULL DEFAULT 0,
  `Gun15` tinyint(4) NOT NULL DEFAULT 0,
  `Cost15` int(11) NOT NULL DEFAULT 0,
  `Gun16` int(11) NOT NULL DEFAULT 0,
  `Cost16` int(11) NOT NULL DEFAULT 0,
  `CratesOrder` int(11) NOT NULL DEFAULT 0,
  `CrateIsland` int(11) NOT NULL DEFAULT 255,
  `IntRadio` int(11) NOT NULL DEFAULT 255,
  `GarageX` float(11, 0) NOT NULL DEFAULT 0,
  `GarageY` float(11, 0) NOT NULL DEFAULT 0,
  `GarageZ` float(11, 0) NOT NULL DEFAULT 0,
  `TackleAccess` int(11) NOT NULL DEFAULT 255,
  `WheelClamps` int(11) NOT NULL DEFAULT 255,
  `DoCAccess` int(11) NOT NULL DEFAULT 255,
  `MedicAccess` int(11) NOT NULL DEFAULT -1,
  `DMVAccess` int(11) NOT NULL DEFAULT 255,
  `OOCChat` int(11) NOT NULL DEFAULT 255,
  `OOCColor` mediumint(8) UNSIGNED NOT NULL DEFAULT 130303,
  `Pot` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL DEFAULT 0,
  `Heroin` int(11) NOT NULL DEFAULT 0,
  `Syringes` int(11) NOT NULL DEFAULT 0,
  `Opium` int(11) NOT NULL DEFAULT 0,
  `TurfCapRank` int(11) NOT NULL DEFAULT 255,
  `PointCapRank` int(11) NOT NULL DEFAULT 255,
  `WithdrawRank` int(11) NOT NULL DEFAULT 255,
  `WithdrawRank2` int(11) NOT NULL DEFAULT 255,
  `WithdrawRank3` int(11) NOT NULL DEFAULT 255,
  `WithdrawRank4` int(11) NOT NULL DEFAULT 255,
  `WithdrawRank5` int(11) NOT NULL DEFAULT 255,
  `GClothes0` int(11) NOT NULL DEFAULT 0,
  `GClothes1` int(11) NOT NULL DEFAULT 0,
  `GClothes2` int(11) NOT NULL DEFAULT 0,
  `GClothes3` int(11) NOT NULL DEFAULT 0,
  `GClothes4` int(11) NOT NULL DEFAULT 0,
  `GClothes5` int(11) NOT NULL DEFAULT 0,
  `GClothes6` int(11) NOT NULL DEFAULT 0,
  `GClothes7` int(11) NOT NULL DEFAULT 0,
  `GClothes8` int(11) NOT NULL DEFAULT 0,
  `GClothes9` int(11) NOT NULL DEFAULT 0,
  `Tokens` int(11) NOT NULL DEFAULT 0,
  `Mats` int(11) NOT NULL DEFAULT 0,
  `CrimeType` int(11) NOT NULL DEFAULT 0,
  `gAmmo0` int(11) NOT NULL DEFAULT 0,
  `gAmmo1` int(11) NOT NULL DEFAULT 0,
  `gAmmo2` int(11) NOT NULL DEFAULT 0,
  `gAmmo3` int(11) NOT NULL DEFAULT 0,
  `gAmmo4` int(11) NOT NULL DEFAULT 0,
  `Cannabis` int(11) NOT NULL DEFAULT 0,
  `Meth` int(11) NOT NULL DEFAULT 0,
  `Cocaine` int(11) NOT NULL DEFAULT 0,
  `Ecstasy` int(11) NOT NULL DEFAULT 0,
  `Speed` int(11) NOT NULL DEFAULT 0,
  `Alcohol` int(11) NOT NULL DEFAULT 0,
  `Demerol` int(11) NOT NULL DEFAULT 0,
  `Morphine` int(11) NOT NULL DEFAULT 0,
  `Haloperidol` int(11) NOT NULL DEFAULT 0,
  `Aspirin` int(11) NOT NULL DEFAULT 0,
  `Mgseeds` int(11) NOT NULL DEFAULT 0,
  `Canseeds` int(11) NOT NULL DEFAULT 0,
  `Lye` int(11) NOT NULL DEFAULT 0,
  `Ethyl` int(11) NOT NULL DEFAULT 0,
  `Ephedrine` int(11) NOT NULL DEFAULT 0,
  `Diswater` int(11) NOT NULL DEFAULT 0,
  `Opiumpop` int(11) NOT NULL DEFAULT 0,
  `Lime` int(11) NOT NULL DEFAULT 0,
  `Baking` int(11) NOT NULL DEFAULT 0,
  `Cocextract` int(11) NOT NULL DEFAULT 0,
  `Nbenzynol` int(11) NOT NULL DEFAULT 0,
  `Pmkoil` int(11) NOT NULL DEFAULT 0,
  `Mdmacrys` int(11) NOT NULL DEFAULT 0,
  `Caffeine` int(11) NOT NULL DEFAULT 0,
  `Lsd` int(11) NOT NULL DEFAULT 0,
  `Muriatic` int(11) NOT NULL DEFAULT 0,
  `FreeNameChangeDiv` int(11) NOT NULL DEFAULT 255,
  `GroupToyID` int(11) NOT NULL DEFAULT 0,
  `TurfTax` int(11) NOT NULL DEFAULT 0,
  `gRival0` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1',
  `gRival1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1',
  `gRival2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1',
  `gRival3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1',
  `gRival4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1',
  `TollLockDown` int(11) NOT NULL,
  `TempNum` int(11) NOT NULL DEFAULT 255,
  `Tapes` int(11) NOT NULL DEFAULT 255,
  `Find` int(11) NOT NULL DEFAULT 255,
  `LEOArrest` int(11) NOT NULL DEFAULT 255,
  `GroupUnofficial` int(11) NOT NULL DEFAULT 255,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for groupvehs
-- ----------------------------
DROP TABLE IF EXISTS `groupvehs`;
CREATE TABLE `groupvehs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SpawnedID` int(11) NOT NULL DEFAULT 65535,
  `vDisabled` tinyint(4) NOT NULL DEFAULT 0,
  `gID` int(11) NOT NULL DEFAULT -1,
  `gDivID` int(11) NOT NULL DEFAULT 0,
  `vModel` int(11) NOT NULL DEFAULT 0,
  `vPlate` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vMaxHealth` float NOT NULL DEFAULT 1000,
  `vFuel` int(11) NOT NULL DEFAULT 100,
  `vType` int(11) NOT NULL DEFAULT 0,
  `vLoadMax` int(11) NOT NULL DEFAULT 2,
  `vCol1` int(11) NOT NULL DEFAULT 0,
  `vCol2` int(11) NOT NULL DEFAULT 0,
  `vX` float NOT NULL DEFAULT 0,
  `vY` float NOT NULL DEFAULT 0,
  `vZ` float NOT NULL DEFAULT 0,
  `vRotZ` float NOT NULL DEFAULT 0,
  `vUpkeep` int(11) NOT NULL DEFAULT 0,
  `vMod0` int(11) NOT NULL DEFAULT 0,
  `vMod1` int(11) NOT NULL DEFAULT 0,
  `vMod2` int(11) NOT NULL DEFAULT 0,
  `vMod3` int(11) NOT NULL DEFAULT 0,
  `vMod4` int(11) NOT NULL DEFAULT 0,
  `vMod5` int(11) NOT NULL DEFAULT 0,
  `vMod6` int(11) NOT NULL DEFAULT 0,
  `vMod7` int(11) NOT NULL DEFAULT 0,
  `vMod8` int(11) NOT NULL DEFAULT 0,
  `vMod9` int(11) NOT NULL DEFAULT 0,
  `vMod10` int(11) NOT NULL DEFAULT 0,
  `vMod11` int(11) NOT NULL DEFAULT 0,
  `vMod12` int(11) NOT NULL DEFAULT 0,
  `vMod13` int(11) NOT NULL DEFAULT 0,
  `vMod14` int(11) NOT NULL DEFAULT 0,
  `vAttachedObjectModel1` int(11) NOT NULL DEFAULT 65535,
  `vObjectX1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectY1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectZ1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRX1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRY1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRZ1` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectText1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vObjectMatSize1` int(11) NOT NULL DEFAULT 90,
  `vObjectFont1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Arial',
  `vObjectSize1` int(11) NOT NULL DEFAULT 24,
  `vObjectColor1` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `vObjectBGColor1` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `vAttachedObjectModel2` int(11) NOT NULL DEFAULT 65535,
  `vObjectX2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectY2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectZ2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRX2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRY2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRZ2` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectText2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vObjectMatSize2` int(11) NOT NULL DEFAULT 90,
  `vObjectFont2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Arial',
  `vObjectSize2` int(11) NOT NULL DEFAULT 24,
  `vObjectColor2` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `vObjectBGColor2` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `vAttachedObjectModel3` int(11) NOT NULL DEFAULT 65535,
  `vObjectX3` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectY3` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectZ3` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRX3` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRY3` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRZ3` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectText3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vObjectMatSize3` int(11) NOT NULL DEFAULT 90,
  `vObjectFont3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Arial',
  `vObjectSize3` int(11) NOT NULL DEFAULT 24,
  `vObjectColor3` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `vObjectBGColor3` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `vAttachedObjectModel4` int(11) NOT NULL DEFAULT 65535,
  `vObjectX4` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectY4` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectZ4` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRX4` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRY4` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectRZ4` float(11, 2) NOT NULL DEFAULT 0.00,
  `vObjectText4` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `vObjectMatSize4` int(11) NOT NULL DEFAULT 90,
  `vObjectFont4` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Arial',
  `vObjectSize4` int(11) NOT NULL DEFAULT 24,
  `vObjectColor4` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `vObjectBGColor4` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `vVW` int(11) NOT NULL DEFAULT 0,
  `vInt` int(11) NOT NULL DEFAULT 0,
  `fID` int(11) NOT NULL DEFAULT 0,
  `rID` int(11) NOT NULL DEFAULT 0,
  `vSiren` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `groupid`(`gID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 700 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gweapons
-- ----------------------------
DROP TABLE IF EXISTS `gweapons`;
CREATE TABLE `gweapons`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Weapon_ID` int(11) NOT NULL DEFAULT 0,
  `Group_ID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11291 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gweaponsnew
-- ----------------------------
DROP TABLE IF EXISTS `gweaponsnew`;
CREATE TABLE `gweaponsnew`  (
  `id` int(11) NOT NULL,
  `1` int(11) NOT NULL DEFAULT 0,
  `2` int(11) NOT NULL DEFAULT 0,
  `3` int(11) NOT NULL DEFAULT 0,
  `4` int(11) NOT NULL DEFAULT 0,
  `5` int(11) NOT NULL DEFAULT 0,
  `6` int(11) NOT NULL DEFAULT 0,
  `7` int(11) NOT NULL DEFAULT 0,
  `8` int(11) NOT NULL DEFAULT 0,
  `9` int(11) NOT NULL DEFAULT 0,
  `10` int(11) NOT NULL DEFAULT 0,
  `11` int(11) NOT NULL DEFAULT 0,
  `12` int(11) NOT NULL DEFAULT 0,
  `13` int(11) NOT NULL DEFAULT 0,
  `14` int(11) NOT NULL DEFAULT 0,
  `15` int(11) NOT NULL DEFAULT 0,
  `16` int(11) NOT NULL DEFAULT 0,
  `17` int(11) NOT NULL DEFAULT 0,
  `18` int(11) NOT NULL DEFAULT 0,
  `19` int(11) NOT NULL DEFAULT 0,
  `20` int(11) NOT NULL DEFAULT 0,
  `21` int(11) NOT NULL DEFAULT 0,
  `22` int(11) NOT NULL DEFAULT 0,
  `23` int(11) NOT NULL DEFAULT 0,
  `24` int(11) NOT NULL DEFAULT 0,
  `25` int(11) NOT NULL DEFAULT 0,
  `26` int(11) NOT NULL DEFAULT 0,
  `27` int(11) NOT NULL DEFAULT 0,
  `28` int(11) NOT NULL DEFAULT 0,
  `29` int(11) NOT NULL DEFAULT 0,
  `30` int(11) NOT NULL DEFAULT 0,
  `31` int(11) NOT NULL DEFAULT 0,
  `32` int(11) NOT NULL DEFAULT 0,
  `33` int(11) NOT NULL DEFAULT 0,
  `34` int(11) NOT NULL DEFAULT 0,
  `35` int(11) NOT NULL DEFAULT 0,
  `36` int(11) NOT NULL DEFAULT 0,
  `37` int(11) NOT NULL DEFAULT 0,
  `38` int(11) NOT NULL DEFAULT 0,
  `39` int(11) NOT NULL DEFAULT 0,
  `40` int(11) NOT NULL DEFAULT 0,
  `41` int(11) NOT NULL DEFAULT 0,
  `42` int(11) NOT NULL DEFAULT 0,
  `43` int(11) NOT NULL DEFAULT 0,
  `44` int(11) NOT NULL DEFAULT 0,
  `45` int(11) NOT NULL DEFAULT 0,
  `46` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for help
-- ----------------------------
DROP TABLE IF EXISTS `help`;
CREATE TABLE `help`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Parameters` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Type` int(11) NULL DEFAULT NULL,
  `Subtype` int(11) NULL DEFAULT NULL,
  `Level` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 430 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hgbackpacks
-- ----------------------------
DROP TABLE IF EXISTS `hgbackpacks`;
CREATE TABLE `hgbackpacks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `posx` float(20, 0) NOT NULL,
  `posy` float(20, 0) NOT NULL,
  `posz` float(20, 0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for house_closet
-- ----------------------------
DROP TABLE IF EXISTS `house_closet`;
CREATE TABLE `house_closet`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `skinid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Owned` int(11) NOT NULL DEFAULT 0,
  `Level` int(11) NOT NULL DEFAULT 999,
  `Description` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'High',
  `OwnerID` int(11) NOT NULL DEFAULT -1,
  `OwnerName` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Nobody',
  `Owner` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'No-Owner',
  `ExteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExteriorR` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorR` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ExtIW` int(11) NOT NULL DEFAULT 0,
  `ExtVW` int(11) NOT NULL DEFAULT 0,
  `IntIW` int(11) NOT NULL DEFAULT 9,
  `IntVW` int(11) NOT NULL DEFAULT 0,
  `Lock` int(11) NOT NULL DEFAULT 0,
  `Rentable` int(11) NOT NULL DEFAULT 0,
  `RentFee` int(11) NOT NULL DEFAULT 0,
  `Value` int(11) NOT NULL DEFAULT 0,
  `SafeMoney` int(11) NOT NULL DEFAULT 0,
  `Pot` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Meth` int(11) NOT NULL DEFAULT 0,
  `Ecstasy` int(11) NOT NULL DEFAULT 0,
  `Weapons0` int(11) NOT NULL DEFAULT 0,
  `Weapons1` int(11) NOT NULL DEFAULT 0,
  `Weapons2` int(11) NOT NULL DEFAULT 0,
  `Weapons3` int(11) NOT NULL DEFAULT 0,
  `Weapons4` int(11) NOT NULL DEFAULT 0,
  `GLUpgrade` int(11) NOT NULL DEFAULT 0,
  `PickupID` int(11) NOT NULL DEFAULT 0,
  `CustomInterior` int(11) NOT NULL DEFAULT 0,
  `CustomExterior` int(11) NOT NULL DEFAULT 0,
  `ExteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `InteriorA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MailType` tinyint(4) NOT NULL DEFAULT 0,
  `Heroin` int(11) NOT NULL DEFAULT 0,
  `ClosetX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ClosetY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ClosetZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `SignDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `SignX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `SignY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `SignZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `SignA` float(10, 5) NOT NULL DEFAULT 0.00000,
  `SignExpire` int(11) NOT NULL DEFAULT 0,
  `LastLogin` int(11) NOT NULL DEFAULT 0,
  `Expire` int(11) NOT NULL DEFAULT 0,
  `Inactive` int(11) NOT NULL DEFAULT 0,
  `Ignore` int(11) NOT NULL DEFAULT 0,
  `Counter` int(11) NOT NULL DEFAULT 0,
  `Listed` int(11) NOT NULL DEFAULT 0,
  `ListingPrice` int(11) NOT NULL DEFAULT 0,
  `LinkedDoor0` int(11) NOT NULL DEFAULT 0,
  `LinkedDoor1` int(11) NOT NULL DEFAULT 0,
  `LinkedDoor2` int(11) NOT NULL DEFAULT 0,
  `LinkedDoor3` int(11) NOT NULL DEFAULT 0,
  `LinkedDoor4` int(11) NOT NULL DEFAULT 0,
  `PendingApproval` int(11) NOT NULL DEFAULT 0,
  `ListedTimeStamp` int(11) NOT NULL DEFAULT 0,
  `ListingDescription` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `LinkedGarage0` int(11) NOT NULL DEFAULT 0,
  `LinkedGarage1` int(11) NOT NULL DEFAULT 0,
  `Ammo0` int(11) NOT NULL DEFAULT 0,
  `Ammo1` int(11) NOT NULL DEFAULT 0,
  `Ammo2` int(11) NOT NULL DEFAULT 0,
  `Ammo3` int(11) NOT NULL DEFAULT 0,
  `Ammo4` int(11) NOT NULL DEFAULT 0,
  `Workbench` int(11) NOT NULL DEFAULT 0,
  `Lights` int(11) NOT NULL DEFAULT 0,
  `HouseBuilder` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`OwnerID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5501 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for humankills
-- ----------------------------
DROP TABLE IF EXISTS `humankills`;
CREATE TABLE `humankills`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  `name` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'No-one',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for humansurvivor
-- ----------------------------
DROP TABLE IF EXISTS `humansurvivor`;
CREATE TABLE `humansurvivor`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  `name` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'No-one',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for impoundpoints
-- ----------------------------
DROP TABLE IF EXISTS `impoundpoints`;
CREATE TABLE `impoundpoints`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ip_bans
-- ----------------------------
DROP TABLE IF EXISTS `ip_bans`;
CREATE TABLE `ip_bans`  (
  `bid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `end_ip` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` datetime NOT NULL,
  `reason` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`bid`) USING BTREE,
  UNIQUE INDEX `id`(`bid`) USING BTREE,
  INDEX `ipaddress`(`ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for japi
-- ----------------------------
DROP TABLE IF EXISTS `japi`;
CREATE TABLE `japi`  (
  `id` int(11) NOT NULL,
  `apikey` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ip` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `rot` float NOT NULL DEFAULT 0,
  `delx` float NOT NULL DEFAULT 0,
  `dely` float NOT NULL DEFAULT 0,
  `delz` float NOT NULL DEFAULT 0,
  `int` int(11) NOT NULL DEFAULT 0,
  `vw` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `actormodel` int(11) NOT NULL,
  `marker` int(11) NOT NULL DEFAULT 56,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 139 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for jobs_types
-- ----------------------------
DROP TABLE IF EXISTS `jobs_types`;
CREATE TABLE `jobs_types`  (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jobs_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `jobs_vehicles`;
CREATE TABLE `jobs_vehicles`  (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL DEFAULT 1,
  `vehid` int(11) NOT NULL DEFAULT 400,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `rotz` float NOT NULL DEFAULT 0,
  `vw` int(11) NOT NULL DEFAULT 0,
  `int` int(11) NOT NULL DEFAULT 0,
  `col1` int(11) NOT NULL DEFAULT 0,
  `col2` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jobstuff
-- ----------------------------
DROP TABLE IF EXISTS `jobstuff`;
CREATE TABLE `jobstuff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pId` int(11) NOT NULL,
  `junkmetal` int(11) NOT NULL DEFAULT 0,
  `newcoin` int(11) NOT NULL DEFAULT 0,
  `oldcoin` int(11) NOT NULL DEFAULT 0,
  `brokenwatch` int(11) NOT NULL DEFAULT 0,
  `oldkey` int(11) NOT NULL DEFAULT 0,
  `treasure` int(11) NOT NULL DEFAULT 0,
  `goldwatch` int(11) NOT NULL DEFAULT 0,
  `silvernugget` int(11) NOT NULL DEFAULT 0,
  `goldnugget` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `userid`(`pId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 337 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jurisdictions
-- ----------------------------
DROP TABLE IF EXISTS `jurisdictions`;
CREATE TABLE `jurisdictions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT -1,
  `AreaName` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JurisdictionID` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kills
-- ----------------------------
DROP TABLE IF EXISTS `kills`;
CREATE TABLE `kills`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `killerid` int(11) NOT NULL DEFAULT -1,
  `killedid` int(11) NOT NULL DEFAULT -1,
  `date` datetime NULL DEFAULT NULL,
  `weapon` varchar(56) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `killer`(`killerid`) USING BTREE,
  INDEX `killed`(`killedid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for land
-- ----------------------------
DROP TABLE IF EXISTS `land`;
CREATE TABLE `land`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None|-1|0|0|12|0.000000|0.000000|0.000000|0.000000|-1|-1|-1|-1|-1|0|0' COMMENT 'Name|OwnerID|Locked|Special|Vulnerable|MinX|MinY|MaxX|MaxY',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for leaderboards
-- ----------------------------
DROP TABLE IF EXISTS `leaderboards`;
CREATE TABLE `leaderboards`  (
  `Username` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `seconds` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for letters
-- ----------------------------
DROP TABLE IF EXISTS `letters`;
CREATE TABLE `letters`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sender_Id` int(11) NULL DEFAULT NULL,
  `Receiver_Id` int(11) NULL DEFAULT NULL,
  `Date` datetime NULL DEFAULT NULL,
  `Message` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Notify` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Delivery_Min` int(11) NULL DEFAULT NULL,
  `Read` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lobject
-- ----------------------------
DROP TABLE IF EXISTS `lobject`;
CREATE TABLE `lobject`  (
  `mobjID` int(11) NOT NULL AUTO_INCREMENT,
  `mobjModel` int(11) NOT NULL DEFAULT 980,
  `mobjInterior` int(11) NOT NULL DEFAULT 0,
  `mobjWorld` int(11) NOT NULL DEFAULT 0,
  `mobjX` float NOT NULL DEFAULT 0,
  `mobjY` float NOT NULL DEFAULT 0,
  `mobjZ` float NOT NULL DEFAULT 0,
  `mobjRX` float NOT NULL DEFAULT 0,
  `mobjRY` float NOT NULL DEFAULT 0,
  `mobjRZ` float NOT NULL DEFAULT 0,
  `landid` int(11) NOT NULL DEFAULT -1,
  `ownerid` int(11) NOT NULL DEFAULT -1,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mobjID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5169 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for locker_restrict
-- ----------------------------
DROP TABLE IF EXISTS `locker_restrict`;
CREATE TABLE `locker_restrict`  (
  `id` int(11) NOT NULL,
  `1` int(11) NOT NULL DEFAULT 0,
  `2` int(11) NOT NULL DEFAULT 0,
  `3` int(11) NOT NULL DEFAULT 0,
  `4` int(11) NOT NULL DEFAULT 0,
  `5` int(11) NOT NULL DEFAULT 0,
  `6` int(11) NOT NULL DEFAULT 0,
  `7` int(11) NOT NULL DEFAULT 0,
  `8` int(11) NOT NULL DEFAULT 0,
  `9` int(11) NOT NULL DEFAULT 0,
  `10` int(11) NOT NULL DEFAULT 0,
  `11` int(11) NOT NULL DEFAULT 0,
  `12` int(11) NOT NULL DEFAULT 0,
  `13` int(11) NOT NULL DEFAULT 0,
  `14` int(11) NOT NULL DEFAULT 0,
  `15` int(11) NOT NULL DEFAULT 0,
  `16` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for lockers
-- ----------------------------
DROP TABLE IF EXISTS `lockers`;
CREATE TABLE `lockers`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Group_ID` int(11) NOT NULL DEFAULT -1,
  `Locker_ID` int(11) NOT NULL,
  `LockerX` float NOT NULL DEFAULT 0,
  `LockerY` float NOT NULL DEFAULT 0,
  `LockerZ` float NOT NULL DEFAULT 0,
  `LockerVW` int(11) NOT NULL DEFAULT 0,
  `LockerShare` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 401 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for login_strikes
-- ----------------------------
DROP TABLE IF EXISTS `login_strikes`;
CREATE TABLE `login_strikes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `strike` int(11) NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `ccstrike` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `ip`(`ip_address`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lotto
-- ----------------------------
DROP TABLE IF EXISTS `lotto`;
CREATE TABLE `lotto`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mailboxes
-- ----------------------------
DROP TABLE IF EXISTS `mailboxes`;
CREATE TABLE `mailboxes`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Model` int(11) NOT NULL DEFAULT 3407,
  `PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `Angle` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mdc
-- ----------------------------
DROP TABLE IF EXISTS `mdc`;
CREATE TABLE `mdc`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `issuer` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `crime` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint(4) NULL DEFAULT 1,
  `origin` int(11) NOT NULL DEFAULT 1 COMMENT 'SA = | TR=2',
  PRIMARY KEY (`cid`) USING BTREE,
  UNIQUE INDEX `id`(`cid`) USING BTREE,
  INDEX `userid`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for metaldetectors
-- ----------------------------
DROP TABLE IF EXISTS `metaldetectors`;
CREATE TABLE `metaldetectors`  (
  `id` int(11) NOT NULL,
  `posx` float(10, 5) NOT NULL DEFAULT 0.00000,
  `posy` float(10, 5) NOT NULL DEFAULT 0.00000,
  `posz` float(10, 5) NOT NULL DEFAULT 0.00000,
  `rotx` float(10, 5) NOT NULL DEFAULT 0.00000,
  `roty` float(10, 5) NOT NULL DEFAULT 0.00000,
  `rotz` float(10, 5) NOT NULL DEFAULT 0.00000,
  `vw` int(11) NOT NULL DEFAULT 0,
  `int` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for misc
-- ----------------------------
DROP TABLE IF EXISTS `misc`;
CREATE TABLE `misc`  (
  `gMOTD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aMOTD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vMOTD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cMOTD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pMOTD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ShopTechPay` float(11, 1) NOT NULL DEFAULT 0.0,
  `Safe` int(11) NOT NULL DEFAULT 0,
  `TicketsSold` int(11) NOT NULL DEFAULT 0,
  `GiftCode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'off',
  `GiftCodeBypass` int(11) NOT NULL DEFAULT 0,
  `TotalCitizens` int(11) NOT NULL DEFAULT 0,
  `TRCitizens` int(11) NOT NULL DEFAULT 0,
  `SecurityCode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'none',
  `ShopClosed` int(11) NOT NULL DEFAULT 0,
  `RimMod` int(11) NOT NULL DEFAULT 0,
  `CarVoucher` int(11) NOT NULL DEFAULT 0,
  `PVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `GarageVW` int(11) NULL DEFAULT 0,
  `PumpkinStock` int(11) NOT NULL DEFAULT 0,
  `HalloweenShop` int(11) NOT NULL DEFAULT 0,
  `devnews` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PassComplexCheck` int(11) NOT NULL DEFAULT 0,
  `InactiveStatus` int(11) NOT NULL DEFAULT 0,
  `hInactiveDays` int(11) NOT NULL DEFAULT 90,
  `hCounterHours` int(11) NOT NULL DEFAULT 5,
  `hExpireWeeks` int(11) NOT NULL DEFAULT 2,
  `ddInactiveDays` int(11) NOT NULL DEFAULT 90,
  `ddCounterHours` int(11) NOT NULL DEFAULT 5,
  `ddExpireWeeks` int(11) NOT NULL DEFAULT 2,
  `GunPrice0` int(11) NOT NULL DEFAULT 0,
  `GunPrice1` int(11) NOT NULL DEFAULT 0,
  `GunPrice2` int(11) NOT NULL DEFAULT 0,
  `GunPrice3` int(11) NOT NULL DEFAULT 0,
  `GunPrice4` int(11) NOT NULL DEFAULT 0,
  `GunPrice5` int(11) NOT NULL DEFAULT 0,
  `GunPrice6` int(11) NOT NULL DEFAULT 0,
  `gs_iStock0` int(11) NOT NULL DEFAULT 0,
  `gs_iStock1` int(11) NOT NULL DEFAULT 0,
  `gs_iStock2` int(11) NOT NULL DEFAULT 0,
  `gs_iStock3` int(11) NOT NULL DEFAULT 0,
  `SHIPMENT_MATS_NEEDED` int(11) NOT NULL DEFAULT 60,
  `prisonerMOTD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prisonerMOTD2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prisonerMOTD3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ammoMat0` int(11) NOT NULL,
  `ammoMat1` int(11) NOT NULL,
  `ammoMat2` int(11) NOT NULL,
  `ammoMat3` int(11) NOT NULL,
  PRIMARY KEY (`gMOTD`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nation_queue
-- ----------------------------
DROP TABLE IF EXISTS `nation_queue`;
CREATE TABLE `nation_queue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime NOT NULL,
  `nation` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `user_id`(`playerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nonrppoints
-- ----------------------------
DROP TABLE IF EXISTS `nonrppoints`;
CREATE TABLE `nonrppoints`  (
  `sqlid` int(11) NULL DEFAULT 0,
  `point` int(11) NULL DEFAULT 0,
  `expiration` int(11) NULL DEFAULT 0,
  `reason` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `issuer` int(11) NULL DEFAULT 0,
  `active` int(11) NULL DEFAULT 0,
  `manual` int(11) NULL DEFAULT 0,
  INDEX `id`(`sqlid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for parking_meters
-- ----------------------------
DROP TABLE IF EXISTS `parking_meters`;
CREATE TABLE `parking_meters`  (
  `MeterID` int(11) NOT NULL AUTO_INCREMENT,
  `MeterActive` int(11) NOT NULL DEFAULT 0,
  `MeterRate` int(11) NOT NULL DEFAULT 500,
  `MeterRange` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MeterPosition0` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MeterPosition1` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MeterPosition2` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MeterPosition3` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MeterPosition4` float(10, 5) NOT NULL DEFAULT 0.00000,
  `MeterPosition5` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ParkedPosition0` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ParkedPosition1` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ParkedPosition2` float(10, 5) NOT NULL DEFAULT 0.00000,
  `ParkedPosition3` float(10, 5) NOT NULL DEFAULT 0.00000,
  PRIMARY KEY (`MeterID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for paynsprays
-- ----------------------------
DROP TABLE IF EXISTS `paynsprays`;
CREATE TABLE `paynsprays`  (
  `id` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 0,
  `PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `GroupCost` int(11) NOT NULL DEFAULT 0,
  `RegCost` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for payphones
-- ----------------------------
DROP TABLE IF EXISTS `payphones`;
CREATE TABLE `payphones`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `posx` float(10, 5) NOT NULL,
  `posy` float(10, 5) NOT NULL,
  `posz` float(10, 5) NOT NULL,
  `rotz` float(10, 5) NOT NULL,
  `vw` int(11) NOT NULL,
  `int` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pcount
-- ----------------------------
DROP TABLE IF EXISTS `pcount`;
CREATE TABLE `pcount`  (
  `date` date NOT NULL,
  `time` time NOT NULL DEFAULT '00:00:00',
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`date`, `time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for phone_contacts
-- ----------------------------
DROP TABLE IF EXISTS `phone_contacts`;
CREATE TABLE `phone_contacts`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `contactnr` int(11) NOT NULL,
  `contactname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for plants
-- ----------------------------
DROP TABLE IF EXISTS `plants`;
CREATE TABLE `plants`  (
  `plantID` int(11) NOT NULL AUTO_INCREMENT,
  `Owner` int(11) NOT NULL DEFAULT 0,
  `Object` int(11) NOT NULL DEFAULT 0,
  `PlantType` int(11) NOT NULL DEFAULT 0,
  `PositionX` float NOT NULL DEFAULT 0,
  `PositionY` float NOT NULL DEFAULT 0,
  `PositionZ` float NOT NULL DEFAULT 0,
  `Virtual` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `Growth` int(11) NOT NULL DEFAULT 0,
  `Expires` int(11) NOT NULL DEFAULT 0,
  `DrugsSkill` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`plantID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for points
-- ----------------------------
DROP TABLE IF EXISTS `points`;
CREATE TABLE `points`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posx` float(20, 5) NOT NULL DEFAULT 0.00000,
  `posy` float(20, 5) NOT NULL DEFAULT 0.00000,
  `posz` float(20, 5) NOT NULL DEFAULT 0.00000,
  `vw` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `vulnerable` int(11) NOT NULL DEFAULT 0,
  `matpoint` int(11) NOT NULL DEFAULT 0,
  `owner` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cappername` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `captime` int(11) NOT NULL DEFAULT 0,
  `capfam` int(11) NOT NULL DEFAULT -1,
  `capname` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for polls
-- ----------------------------
DROP TABLE IF EXISTS `polls`;
CREATE TABLE `polls`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Options` int(11) NOT NULL DEFAULT 0,
  `Option1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-',
  `Option2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-',
  `Option3` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-',
  `Option4` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-',
  `Option5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-',
  `Option6` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-',
  `OptionResult1` int(11) NOT NULL DEFAULT 0,
  `OptionResult2` int(11) NOT NULL DEFAULT 0,
  `OptionResult3` int(11) NOT NULL DEFAULT 0,
  `OptionResult4` int(11) NOT NULL DEFAULT 0,
  `OptionResult5` int(11) NOT NULL DEFAULT 0,
  `OptionResult6` int(11) NOT NULL DEFAULT 0,
  `PlacedBy` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT 0,
  `LocationX` float(11, 0) NOT NULL DEFAULT 0,
  `LocationY` float(11, 0) NOT NULL DEFAULT 0,
  `LocationZ` float(11, 0) NOT NULL DEFAULT 0,
  `UniqueKey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CreationDate` int(11) NOT NULL DEFAULT 0,
  `ExpirationDate` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `TypeRank` int(11) NOT NULL DEFAULT 0,
  `TypeID` int(11) NOT NULL DEFAULT 0,
  `Nation` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for polls_copy
-- ----------------------------
DROP TABLE IF EXISTS `polls_copy`;
CREATE TABLE `polls_copy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Active` int(11) NULL DEFAULT 0,
  `Type` int(11) NULL DEFAULT 0,
  `TypeRank` int(11) NULL DEFAULT 0,
  `TypeID` int(11) NULL DEFAULT 0,
  `Hours` int(11) NULL DEFAULT 0,
  `Options` int(11) NULL DEFAULT 0,
  `Question` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `Option0` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `OptionV0` int(11) NULL DEFAULT 0,
  `OptionResult0` int(11) NULL DEFAULT 0,
  `Option1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `OptionV1` int(11) NULL DEFAULT 0,
  `OptionResult1` int(11) NULL DEFAULT 0,
  `Option2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `OptionV2` int(11) NULL DEFAULT 0,
  `OptionResult2` int(11) NULL DEFAULT 0,
  `Option3` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `OptionV3` int(11) NULL DEFAULT 0,
  `OptionResult3` int(11) NULL DEFAULT 0,
  `Option4` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `OptionV4` int(11) NULL DEFAULT 0,
  `OptionResult4` int(11) NULL DEFAULT 0,
  `Option5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `OptionV5` int(11) NULL DEFAULT 0,
  `OptionResult5` int(11) NULL DEFAULT 0,
  `Option6` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `OptionResult6` int(11) NULL DEFAULT 0,
  `OptionV7` int(11) NULL DEFAULT 0,
  `Option8` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `OptionV8` int(11) NULL DEFAULT 0,
  `Option9` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `OptionV9` int(11) NULL DEFAULT 0,
  `PlacedBy` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Interior` int(11) NULL DEFAULT 0,
  `VirtualWorld` int(11) NULL DEFAULT 0,
  `LocationX` float(11, 0) NULL DEFAULT 0,
  `LocationY` float(11, 0) NULL DEFAULT 0,
  `LocationZ` float(11, 0) NULL DEFAULT 0,
  `CreationDate` int(11) NULL DEFAULT 0,
  `ExpirationDate` int(11) NULL DEFAULT 0,
  `UniqueKey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pvehpositions
-- ----------------------------
DROP TABLE IF EXISTS `pvehpositions`;
CREATE TABLE `pvehpositions`  (
  `id` int(11) NOT NULL DEFAULT -1,
  `pv0ModelId` int(11) NOT NULL DEFAULT 0,
  `pv0PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv0PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv0PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv0PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv1ModelId` int(11) NOT NULL DEFAULT 0,
  `pv1PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv1PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv1PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv1PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv2ModelId` int(11) NOT NULL DEFAULT 0,
  `pv2PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv2PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv2PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv2PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv3ModelId` int(11) NOT NULL DEFAULT 0,
  `pv3PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv3PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv3PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv3PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv4ModelId` int(11) NOT NULL DEFAULT 0,
  `pv4PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv4PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv4PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv4PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv5ModelId` int(11) NOT NULL DEFAULT 0,
  `pv5PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv5PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv5PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv5PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv6ModelId` int(11) NOT NULL DEFAULT 0,
  `pv6PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv6PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv6PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv6PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv7ModelId` int(11) NOT NULL DEFAULT 0,
  `pv7PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv7PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv7PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv7PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv8ModelId` int(11) NOT NULL DEFAULT 0,
  `pv8PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv8PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv8PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv8PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv9ModelId` int(11) NOT NULL DEFAULT 0,
  `pv9PosX` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv9PosY` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv9PosZ` float(10, 5) NOT NULL DEFAULT 0.00000,
  `pv9PosAngle` float(10, 5) NOT NULL DEFAULT 0.00000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rentedcars
-- ----------------------------
DROP TABLE IF EXISTS `rentedcars`;
CREATE TABLE `rentedcars`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqlid` int(11) NULL DEFAULT 0,
  `modelid` int(11) NULL DEFAULT 0,
  `posx` float NULL DEFAULT 0,
  `posy` float NULL DEFAULT 0,
  `posz` float NULL DEFAULT 0,
  `posa` float NULL DEFAULT 0,
  `spawned` int(11) NULL DEFAULT 0,
  `hours` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 266 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for requestcomments
-- ----------------------------
DROP TABLE IF EXISTS `requestcomments`;
CREATE TABLE `requestcomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comment` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for requests
-- ----------------------------
DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requestedBy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `time` int(11) NOT NULL,
  `details` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gdoc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `assignedTo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Miguel',
  `priority` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `progress` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deleted` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rewardcalc
-- ----------------------------
DROP TABLE IF EXISTS `rewardcalc`;
CREATE TABLE `rewardcalc`  (
  `pID` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rflteams
-- ----------------------------
DROP TABLE IF EXISTS `rflteams`;
CREATE TABLE `rflteams`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Not Used',
  `used` int(11) NOT NULL DEFAULT 0,
  `laps` int(11) NOT NULL DEFAULT 0,
  `leader` varchar(26) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None',
  `members` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Month` datetime NOT NULL,
  `TotalSold0` int(11) NULL DEFAULT 0,
  `AmountMade0` int(11) NOT NULL DEFAULT 0,
  `TotalSold1` int(11) NULL DEFAULT 0,
  `AmountMade1` int(11) NOT NULL DEFAULT 0,
  `TotalSold2` int(11) NOT NULL DEFAULT 0,
  `AmountMade2` int(11) NOT NULL DEFAULT 0,
  `TotalSold3` int(11) NOT NULL DEFAULT 0,
  `AmountMade3` int(11) NOT NULL DEFAULT 0,
  `TotalSold4` int(11) NOT NULL DEFAULT 0,
  `AmountMade4` int(11) NULL DEFAULT 0,
  `TotalSold5` int(11) NOT NULL DEFAULT 0,
  `AmountMade5` int(11) NOT NULL DEFAULT 0,
  `TotalSold6` int(11) NOT NULL DEFAULT 0,
  `AmountMade6` int(11) NOT NULL DEFAULT 0,
  `TotalSold7` int(11) NOT NULL DEFAULT 0,
  `AmountMade7` int(11) NOT NULL DEFAULT 0,
  `TotalSold8` int(11) NOT NULL DEFAULT 0,
  `AmountMade8` int(11) NOT NULL DEFAULT 0,
  `TotalSold9` int(11) NOT NULL DEFAULT 0,
  `AmountMade9` int(11) NOT NULL DEFAULT 0,
  `TotalSold10` int(11) NOT NULL DEFAULT 0,
  `AmountMade10` int(11) NOT NULL DEFAULT 0,
  `TotalSold11` int(11) NOT NULL DEFAULT 0,
  `AmountMade11` int(11) NOT NULL DEFAULT 0,
  `TotalSold12` int(11) NOT NULL DEFAULT 0,
  `AmountMade12` int(11) NOT NULL DEFAULT 0,
  `TotalSold13` int(11) NOT NULL DEFAULT 0,
  `AmountMade13` int(11) NOT NULL DEFAULT 0,
  `TotalSold14` int(11) NOT NULL DEFAULT 0,
  `AmountMade14` int(11) NOT NULL DEFAULT 0,
  `TotalSold15` int(11) NOT NULL DEFAULT 0,
  `AmountMade15` int(11) NOT NULL DEFAULT 0,
  `TotalSold16` int(11) NOT NULL DEFAULT 0,
  `AmountMade16` int(11) NOT NULL DEFAULT 0,
  `TotalSold17` int(11) NOT NULL DEFAULT 0,
  `AmountMade17` int(11) NOT NULL DEFAULT 0,
  `TotalSold18` int(11) NOT NULL DEFAULT 0,
  `AmountMade18` int(11) NOT NULL DEFAULT 0,
  `TotalSold19` int(11) NOT NULL DEFAULT 0,
  `AmountMade19` int(11) NOT NULL DEFAULT 0,
  `TotalSold20` int(11) NOT NULL DEFAULT 0,
  `AmountMade20` int(11) NOT NULL DEFAULT 0,
  `TotalSold21` int(11) NOT NULL DEFAULT 0,
  `AmountMade21` int(11) NOT NULL DEFAULT 0,
  `TotalSold22` int(11) NOT NULL DEFAULT 0,
  `AmountMade22` int(11) NOT NULL DEFAULT 0,
  `TotalSold23` int(11) NOT NULL DEFAULT 0,
  `AmountMade23` int(11) NOT NULL DEFAULT 0,
  `TotalSold24` int(11) NOT NULL DEFAULT 0,
  `AmountMade24` int(11) NOT NULL DEFAULT 0,
  `TotalSold25` int(11) NOT NULL DEFAULT 0,
  `AmountMade25` int(11) NOT NULL DEFAULT 0,
  `TotalSold26` int(11) NOT NULL DEFAULT 0,
  `AmountMade26` int(11) NOT NULL DEFAULT 0,
  `TotalSold27` int(11) NOT NULL DEFAULT 0,
  `AmountMade27` int(11) NOT NULL DEFAULT 0,
  `TotalSold28` int(11) NOT NULL DEFAULT 0,
  `AmountMade28` int(11) NOT NULL DEFAULT 0,
  `TotalSold29` int(11) NOT NULL DEFAULT 0,
  `AmountMade29` int(11) NOT NULL DEFAULT 0,
  `TotalSold30` int(11) NOT NULL DEFAULT 0,
  `AmountMade30` int(11) NOT NULL DEFAULT 0,
  `TotalSold31` int(11) NOT NULL DEFAULT 0,
  `AmountMade31` int(11) NOT NULL DEFAULT 0,
  `TotalSold32` int(11) NOT NULL DEFAULT 0,
  `AmountMade32` int(11) NOT NULL DEFAULT 0,
  `TotalSold33` int(11) NOT NULL DEFAULT 0,
  `AmountMade33` int(11) NOT NULL DEFAULT 0,
  `TotalSold34` int(11) NOT NULL DEFAULT 0,
  `AmountMade34` int(11) NOT NULL DEFAULT 0,
  `TotalSold35` int(11) NOT NULL DEFAULT 0,
  `AmountMade35` int(11) NOT NULL DEFAULT 0,
  `TotalSold36` int(11) NOT NULL DEFAULT 0,
  `AmountMade36` int(11) NOT NULL DEFAULT 0,
  `TotalSold37` int(11) NOT NULL DEFAULT 0,
  `AmountMade37` int(11) NOT NULL DEFAULT 0,
  `TotalSold38` int(11) NOT NULL DEFAULT 0,
  `AmountMade38` int(11) NOT NULL DEFAULT 0,
  `TotalSold39` int(11) NOT NULL DEFAULT 0,
  `AmountMade39` int(11) NOT NULL DEFAULT 0,
  `TotalSold40` int(11) NOT NULL DEFAULT 0,
  `AmountMade40` int(11) NOT NULL DEFAULT 0,
  `TotalSoldMicro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `AmountMadeMicro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `TotalSold41` int(11) NULL DEFAULT NULL,
  `AmountMade41` int(11) NULL DEFAULT NULL,
  `TotalSold42` int(11) NULL DEFAULT NULL,
  `AmountMade42` int(11) NULL DEFAULT NULL,
  `TotalSold43` int(11) NULL DEFAULT NULL,
  `AmountMade43` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scp_passchange
-- ----------------------------
DROP TABLE IF EXISTS `scp_passchange`;
CREATE TABLE `scp_passchange`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rpname` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass_cp` int(11) NOT NULL DEFAULT 0,
  `pass_ig` int(11) NOT NULL DEFAULT 0,
  `addinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passall` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `adminname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sec_questions
-- ----------------------------
DROP TABLE IF EXISTS `sec_questions`;
CREATE TABLE `sec_questions`  (
  `userid` int(11) NOT NULL,
  `question` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `answer` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` decimal(15, 4) NOT NULL DEFAULT 0.0000,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `delivered` tinyint(1) NOT NULL DEFAULT 0,
  `updatedate` datetime NOT NULL,
  `deliveruser` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`order_product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shop_orders
-- ----------------------------
DROP TABLE IF EXISTS `shop_orders`;
CREATE TABLE `shop_orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `GiftVoucher` int(11) NOT NULL DEFAULT 0,
  `CarVoucher` int(11) NOT NULL DEFAULT 0,
  `VehVoucher` int(11) NOT NULL DEFAULT 0,
  `SVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `GVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `PVIPVoucher` int(11) NOT NULL DEFAULT 0,
  `credits_spent` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shopprices
-- ----------------------------
DROP TABLE IF EXISTS `shopprices`;
CREATE TABLE `shopprices`  (
  `Price0` int(11) NOT NULL DEFAULT 0,
  `Price1` int(11) NOT NULL DEFAULT 0,
  `Price2` int(11) NOT NULL DEFAULT 0,
  `Price3` int(11) NOT NULL DEFAULT 0,
  `Price4` int(11) NOT NULL DEFAULT 0,
  `Price5` int(11) NOT NULL DEFAULT 0,
  `Price6` int(11) NOT NULL DEFAULT 0,
  `Price7` int(11) NOT NULL DEFAULT 0,
  `Price8` int(11) NOT NULL DEFAULT 0,
  `Price9` int(11) NOT NULL DEFAULT 0,
  `Price10` int(11) NOT NULL DEFAULT 0,
  `Price11` int(11) NOT NULL DEFAULT 0,
  `Price12` int(11) NOT NULL DEFAULT 0,
  `Price13` int(11) NOT NULL DEFAULT 0,
  `Price14` int(11) NOT NULL DEFAULT 0,
  `Price15` int(11) NOT NULL DEFAULT 0,
  `Price16` int(11) NOT NULL DEFAULT 0,
  `Price17` int(11) NOT NULL DEFAULT 0,
  `Price18` int(11) NOT NULL DEFAULT 0,
  `Price19` int(11) NOT NULL DEFAULT 0,
  `Price20` int(11) NOT NULL DEFAULT 0,
  `Price21` int(11) NOT NULL DEFAULT 0,
  `Price22` int(11) NOT NULL DEFAULT 0,
  `Price23` int(11) NOT NULL DEFAULT 0,
  `Price24` int(11) NOT NULL DEFAULT 0,
  `Price25` int(11) NOT NULL DEFAULT 0,
  `Price26` int(11) NOT NULL DEFAULT 0,
  `Price27` int(11) NOT NULL DEFAULT 0,
  `Price28` int(11) NOT NULL DEFAULT 0,
  `Price29` int(11) NOT NULL DEFAULT 0,
  `Price30` int(11) NOT NULL DEFAULT 0,
  `Price31` int(11) NOT NULL DEFAULT 0,
  `Price32` int(11) NOT NULL DEFAULT 0,
  `Price33` int(11) NOT NULL DEFAULT 0,
  `Price34` int(11) NOT NULL DEFAULT 0,
  `Price35` int(11) NOT NULL DEFAULT 0,
  `Price36` int(11) NOT NULL DEFAULT 0,
  `Price37` int(11) NOT NULL DEFAULT 0,
  `Price38` int(11) NOT NULL DEFAULT 0,
  `Price39` int(11) NOT NULL DEFAULT 0,
  `Price40` int(11) NOT NULL DEFAULT 0,
  `MicroPrices` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `Price41` int(11) NOT NULL,
  `Price42` int(11) NOT NULL,
  `Price43` int(11) NOT NULL,
  PRIMARY KEY (`Price0`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shoptech
-- ----------------------------
DROP TABLE IF EXISTS `shoptech`;
CREATE TABLE `shoptech`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  `dtotal` float(11, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sig_stats
-- ----------------------------
DROP TABLE IF EXISTS `sig_stats`;
CREATE TABLE `sig_stats`  (
  `user_id` int(11) NOT NULL DEFAULT -1,
  `enabled` int(11) NOT NULL DEFAULT 0,
  `field1` int(11) NOT NULL DEFAULT 1,
  `field2` int(11) NOT NULL DEFAULT 1,
  `field3` int(11) NOT NULL DEFAULT 1,
  `field4` int(11) NOT NULL DEFAULT 1,
  `field5` int(11) NOT NULL DEFAULT 1,
  `field6` int(11) NOT NULL DEFAULT 1,
  `field7` int(11) NOT NULL DEFAULT 1,
  `field8` int(11) NOT NULL DEFAULT 1,
  `field9` int(11) NOT NULL DEFAULT 1,
  `field10` int(11) NOT NULL DEFAULT 1,
  `field11` int(11) NOT NULL DEFAULT 1,
  `field12` int(11) NOT NULL DEFAULT 1,
  `field13` int(11) NOT NULL DEFAULT 1,
  `field14` int(11) NOT NULL DEFAULT 1,
  `field15` int(11) NOT NULL DEFAULT 1,
  `field16` int(11) NOT NULL DEFAULT 1,
  `field17` int(11) NOT NULL DEFAULT 1,
  `field18` int(11) NOT NULL DEFAULT 1,
  `field19` int(11) NOT NULL DEFAULT 1,
  `field20` int(11) NOT NULL DEFAULT 1,
  `field21` int(11) NOT NULL DEFAULT 1,
  `field22` int(11) NOT NULL DEFAULT 1,
  `field23` int(11) NOT NULL DEFAULT 1,
  `field24` int(11) NOT NULL DEFAULT 1,
  `field25` int(11) NOT NULL DEFAULT 1,
  `field26` int(11) NOT NULL DEFAULT 1,
  `field27` int(11) NOT NULL DEFAULT 1,
  `field28` int(11) NOT NULL DEFAULT 1,
  `field29` int(11) NOT NULL DEFAULT 1,
  `field30` int(11) NOT NULL DEFAULT 1,
  `field31` int(11) NOT NULL DEFAULT 1,
  `field32` int(11) NOT NULL DEFAULT 1,
  `field33` int(11) NOT NULL DEFAULT 1,
  `field34` int(11) NOT NULL DEFAULT 1,
  `field35` int(11) NOT NULL DEFAULT 1,
  `field36` int(11) NOT NULL DEFAULT 1,
  `field37` int(11) NOT NULL DEFAULT 1,
  `field38` int(11) NOT NULL DEFAULT 1,
  `field39` int(11) NOT NULL DEFAULT 1,
  `field40` int(11) NOT NULL DEFAULT 1,
  `field41` int(11) NOT NULL DEFAULT 1,
  `field42` int(11) NOT NULL DEFAULT 1,
  `field43` int(11) NOT NULL DEFAULT 1,
  `field44` int(11) NOT NULL DEFAULT 1,
  `field45` int(11) NOT NULL DEFAULT 1,
  `field46` int(11) NOT NULL DEFAULT 1,
  `field47` int(11) NOT NULL DEFAULT 1,
  `field48` int(11) NOT NULL DEFAULT 1,
  `field49` int(11) NOT NULL DEFAULT 1,
  `field50` int(11) NOT NULL DEFAULT 1,
  `field51` int(11) NOT NULL DEFAULT 1,
  `field52` int(11) NOT NULL DEFAULT 1,
  `field53` int(11) NOT NULL DEFAULT 1,
  `field54` int(11) NOT NULL DEFAULT 1,
  `field55` int(11) NOT NULL DEFAULT 1,
  `field56` int(11) NOT NULL DEFAULT 1,
  `field57` int(11) NOT NULL DEFAULT 1,
  `field58` int(11) NOT NULL DEFAULT 1,
  `field59` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sms
-- ----------------------------
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `senderid` int(11) NOT NULL DEFAULT -1,
  `sendernumber` int(11) NOT NULL DEFAULT 0,
  `receiver` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiverid` int(11) NOT NULL DEFAULT -1,
  `receivernumber` int(11) NOT NULL DEFAULT 0,
  `message` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `sender`(`senderid`) USING BTREE,
  INDEX `receiver`(`receiverid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sobeitkicks
-- ----------------------------
DROP TABLE IF EXISTS `sobeitkicks`;
CREATE TABLE `sobeitkicks`  (
  `sqlID` int(11) NOT NULL DEFAULT 0,
  `Kicks` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sqlID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for speed_cameras
-- ----------------------------
DROP TABLE IF EXISTS `speed_cameras`;
CREATE TABLE `speed_cameras`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_x` float(10, 5) NOT NULL,
  `pos_y` float(10, 5) NOT NULL,
  `pos_z` float(10, 5) NOT NULL,
  `rotation` float(10, 5) NOT NULL,
  `range` float(10, 5) NOT NULL,
  `speed_limit` float(10, 5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contains data regarding speed cameras.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for staffbans
-- ----------------------------
DROP TABLE IF EXISTS `staffbans`;
CREATE TABLE `staffbans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `issuer` int(11) NOT NULL DEFAULT 0,
  `playerid` int(11) NOT NULL DEFAULT 0,
  `expiredate` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `playerid`(`playerid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for text_labels
-- ----------------------------
DROP TABLE IF EXISTS `text_labels`;
CREATE TABLE `text_labels`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Color` int(11) NOT NULL DEFAULT 0,
  `PickupModel` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 501 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ticket_ban
-- ----------------------------
DROP TABLE IF EXISTS `ticket_ban`;
CREATE TABLE `ticket_ban`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` int(11) NOT NULL DEFAULT 0,
  `Method` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Wildcard` int(11) NOT NULL DEFAULT 0,
  `Created` int(11) NOT NULL DEFAULT 0,
  `CreatedBy` int(11) NOT NULL DEFAULT 0,
  `Reason` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Expire` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `type`(`Type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ticket_responses
-- ----------------------------
DROP TABLE IF EXISTS `ticket_responses`;
CREATE TABLE `ticket_responses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TicketId` int(11) NOT NULL DEFAULT 0,
  `PostId` int(11) NOT NULL DEFAULT 0,
  `Guest` int(11) NOT NULL DEFAULT 0,
  `Staff` int(11) NOT NULL DEFAULT 0,
  `UserId` int(11) NOT NULL DEFAULT 0,
  `Username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IP` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0',
  `Message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Created` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `ticketid`(`TicketId`) USING BTREE,
  INDEX `guest,userid`(`Guest`, `UserId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Department` int(11) NOT NULL DEFAULT 0,
  `Guest` int(11) NOT NULL DEFAULT 0,
  `Verified` int(11) NOT NULL DEFAULT 0,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Email` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Forum` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IP` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.0.0.0',
  `TicketId` int(11) NOT NULL DEFAULT 0,
  `Code` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `Subject` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Status` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Open',
  `Locked` int(11) NOT NULL DEFAULT 0,
  `Created` int(11) NOT NULL DEFAULT 0,
  `LastDate` int(11) NOT NULL DEFAULT 0,
  `Priority` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Low',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `department`(`Department`) USING BTREE,
  INDEX `guest,verified`(`Guest`, `Verified`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tokens_call
-- ----------------------------
DROP TABLE IF EXISTS `tokens_call`;
CREATE TABLE `tokens_call`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `date` date NULL DEFAULT NULL,
  `hour` int(11) NULL DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tokens_report
-- ----------------------------
DROP TABLE IF EXISTS `tokens_report`;
CREATE TABLE `tokens_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `date` date NULL DEFAULT NULL,
  `hour` time NULL DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`playerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tokens_request
-- ----------------------------
DROP TABLE IF EXISTS `tokens_request`;
CREATE TABLE `tokens_request`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `date` date NULL DEFAULT NULL,
  `hour` time NULL DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`playerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tokens_wd
-- ----------------------------
DROP TABLE IF EXISTS `tokens_wd`;
CREATE TABLE `tokens_wd`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerid` int(11) NOT NULL,
  `date` date NULL DEFAULT NULL,
  `hour` time NULL DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for toolaccess
-- ----------------------------
DROP TABLE IF EXISTS `toolaccess`;
CREATE TABLE `toolaccess`  (
  `uid` int(11) NOT NULL,
  `AccessLevel` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `IP` int(10) UNSIGNED NULL DEFAULT NULL,
  `subnet` tinyint(4) NOT NULL DEFAULT 32,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for toys
-- ----------------------------
DROP TABLE IF EXISTS `toys`;
CREATE TABLE `toys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player` int(11) NOT NULL DEFAULT 0,
  `modelid` int(11) NOT NULL DEFAULT 0,
  `bone` int(11) NOT NULL DEFAULT 0,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `rotx` float NOT NULL DEFAULT 0,
  `roty` float NOT NULL DEFAULT 0,
  `rotz` float NOT NULL DEFAULT 0,
  `scalex` float NOT NULL DEFAULT 0,
  `scaley` float NOT NULL DEFAULT 0,
  `scalez` float NOT NULL DEFAULT 0,
  `tradable` int(11) NOT NULL DEFAULT 0,
  `special` int(11) NOT NULL DEFAULT 0,
  `autoattach` int(11) NOT NULL DEFAULT -2,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`player`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for track_backdoor
-- ----------------------------
DROP TABLE IF EXISTS `track_backdoor`;
CREATE TABLE `track_backdoor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `house_id` int(11) NOT NULL,
  `door_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for track_gate
-- ----------------------------
DROP TABLE IF EXISTS `track_gate`;
CREATE TABLE `track_gate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `house_id` int(11) NOT NULL,
  `gate_id` int(11) NOT NULL,
  `gate_move` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for track_gvip
-- ----------------------------
DROP TABLE IF EXISTS `track_gvip`;
CREATE TABLE `track_gvip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vipm` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `expiration` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `forum_link` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tsuid` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for track_house
-- ----------------------------
DROP TABLE IF EXISTS `track_house`;
CREATE TABLE `track_house`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `house_move` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for track_pvip
-- ----------------------------
DROP TABLE IF EXISTS `track_pvip`;
CREATE TABLE `track_pvip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `vipm` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `restrict_veh` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `forum_link` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ts_id` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `money_link` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for track_ts
-- ----------------------------
DROP TABLE IF EXISTS `track_ts`;
CREATE TABLE `track_ts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `database_id` int(11) NULL DEFAULT NULL,
  `channel_name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `forum_link` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tsuid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `channel_no` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for track_vip
-- ----------------------------
DROP TABLE IF EXISTS `track_vip`;
CREATE TABLE `track_vip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `order_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vipm` int(11) NOT NULL,
  `expiration` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for truckerlogs
-- ----------------------------
DROP TABLE IF EXISTS `truckerlogs`;
CREATE TABLE `truckerlogs`  (
  `ID` int(11) NOT NULL,
  `TimeStart` int(11) NOT NULL DEFAULT 0,
  `TimeEnd` int(11) NOT NULL DEFAULT 0,
  INDEX `ID`(`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for turfs
-- ----------------------------
DROP TABLE IF EXISTS `turfs`;
CREATE TABLE `turfs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'None|-1|0|0|12|0.000000|0.000000|0.000000|0.000000' COMMENT 'Name|OwnerID|Locked|Special|Vulnerable|MinX|MinY|MaxX|MaxY',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_leaves
-- ----------------------------
DROP TABLE IF EXISTS `user_leaves`;
CREATE TABLE `user_leaves`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_leave` date NOT NULL,
  `date_return` date NOT NULL,
  `reason` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `accept_uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_notes
-- ----------------------------
DROP TABLE IF EXISTS `user_notes`;
CREATE TABLE `user_notes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `note` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `addDate` date NOT NULL,
  `invokeid` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usergroups
-- ----------------------------
DROP TABLE IF EXISTS `usergroups`;
CREATE TABLE `usergroups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Not Defined',
  `Start` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '<span>',
  `End` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '</span>',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Start`(`Start`) USING BTREE,
  INDEX `End`(`End`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vaults
-- ----------------------------
DROP TABLE IF EXISTS `vaults`;
CREATE TABLE `vaults`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VaultName` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `VaultType` int(11) NOT NULL DEFAULT 0,
  `VaultBalance` int(11) NOT NULL DEFAULT 0,
  `VaultPosX` float NOT NULL DEFAULT 0,
  `VaultPosY` float NOT NULL DEFAULT 0,
  `VaultPosZ` float NOT NULL DEFAULT 0,
  `VaultRotX` float NOT NULL DEFAULT 0,
  `VaultRotY` float NOT NULL DEFAULT 0,
  `VaultRotZ` float NOT NULL DEFAULT 0,
  `VaultInt` int(11) NOT NULL DEFAULT 0,
  `VaultVW` int(11) NOT NULL DEFAULT 0,
  `VaultFaction` int(11) NOT NULL DEFAULT 0,
  `VaultBiz` int(11) NOT NULL DEFAULT 0,
  `VaultDD` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sqlID` int(11) NOT NULL DEFAULT 0,
  `pvModelId` int(11) NOT NULL DEFAULT 0,
  `pvPosX` float NOT NULL DEFAULT 0,
  `pvPosY` float NOT NULL DEFAULT 0,
  `pvPosZ` float NOT NULL DEFAULT 0,
  `pvPosAngle` float NOT NULL DEFAULT 0,
  `pvLock` int(11) NOT NULL DEFAULT 0,
  `pvLocked` int(11) NOT NULL DEFAULT 0,
  `pvPaintJob` int(11) NOT NULL DEFAULT 0,
  `pvColor1` int(11) NOT NULL DEFAULT 0,
  `pvColor2` int(11) NOT NULL DEFAULT 0,
  `pvPrice` int(11) NOT NULL DEFAULT 0,
  `pvTicket` int(11) NOT NULL DEFAULT 0,
  `pvRestricted` int(11) NOT NULL DEFAULT 0,
  `pvWeapon0` int(11) NOT NULL DEFAULT 0,
  `pvWeapon1` int(11) NOT NULL DEFAULT 0,
  `pvWeapon2` int(11) NOT NULL DEFAULT 0,
  `pvWeapon3` int(11) NOT NULL DEFAULT 0,
  `pvWeapon4` int(11) NOT NULL DEFAULT 0,
  `pvWeapon5` int(11) NOT NULL DEFAULT 0,
  `pvWeapon6` int(11) NOT NULL DEFAULT 0,
  `pvWeapon7` int(11) NOT NULL DEFAULT 0,
  `pvWeapon8` int(11) NOT NULL DEFAULT 0,
  `pvWeapon9` int(11) NOT NULL DEFAULT 0,
  `pvWepUpgrade` int(11) NOT NULL DEFAULT 0,
  `pvFuel` float NOT NULL DEFAULT 0,
  `pvImpound` int(11) NOT NULL DEFAULT 0,
  `pvDisabled` int(11) NOT NULL DEFAULT 0,
  `pvPlate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'None',
  `pvMod0` int(11) NOT NULL DEFAULT 0,
  `pvMod1` int(11) NOT NULL DEFAULT 0,
  `pvMod2` int(11) NOT NULL DEFAULT 0,
  `pvMod3` int(11) NOT NULL DEFAULT 0,
  `pvMod4` int(11) NOT NULL DEFAULT 0,
  `pvMod5` int(11) NOT NULL DEFAULT 0,
  `pvMod6` int(11) NOT NULL DEFAULT 0,
  `pvMod7` int(11) NOT NULL DEFAULT 0,
  `pvMod8` int(11) NOT NULL DEFAULT 0,
  `pvMod9` int(11) NOT NULL DEFAULT 0,
  `pvMod10` int(11) NOT NULL DEFAULT 0,
  `pvMod11` int(11) NOT NULL DEFAULT 0,
  `pvMod12` int(11) NOT NULL DEFAULT 0,
  `pvMod13` int(11) NOT NULL DEFAULT 0,
  `pvMod14` int(11) NOT NULL DEFAULT 0,
  `pvVW` int(11) NOT NULL DEFAULT 0,
  `pvInt` int(11) NOT NULL DEFAULT 0,
  `pvCrashFlag` int(11) NOT NULL DEFAULT 0,
  `pvCrashY` float NOT NULL DEFAULT 0,
  `pvCrashZ` float NOT NULL DEFAULT 0,
  `pvCrashAngle` float NOT NULL DEFAULT 0,
  `pvCrashX` float NOT NULL DEFAULT 0,
  `pvCrashVW` int(11) NOT NULL DEFAULT 0,
  `pvAlarm` int(11) NOT NULL DEFAULT 0,
  `pvLastLockPickedBy` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Empty',
  `pvLocksLeft` int(11) NOT NULL DEFAULT 5,
  `pvHealth` float NOT NULL DEFAULT 1000,
  `Lsd` int(11) NOT NULL DEFAULT 0,
  `Cannabis` int(11) NOT NULL DEFAULT 0,
  `Meth` int(11) NOT NULL DEFAULT 0,
  `Heroin` int(11) NOT NULL DEFAULT 0,
  `Cocaine` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL DEFAULT 0,
  `Opium` int(11) NOT NULL DEFAULT 0,
  `Ecstasy` int(11) NOT NULL DEFAULT 0,
  `Speed` int(11) NOT NULL DEFAULT 0,
  `Alcohol` int(11) NOT NULL DEFAULT 0,
  `Demerol` int(11) NOT NULL DEFAULT 0,
  `Morphine` int(11) NOT NULL DEFAULT 0,
  `Haloperidol` int(11) NOT NULL DEFAULT 0,
  `Aspirin` int(11) NOT NULL DEFAULT 0,
  `Pot` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `userid`(`sqlID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 263 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for watchdog_reports
-- ----------------------------
DROP TABLE IF EXISTS `watchdog_reports`;
CREATE TABLE `watchdog_reports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reporter` int(11) NOT NULL DEFAULT 0,
  `report` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reported` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '1 = DM Alert | 2 = Refer',
  `time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zombie
-- ----------------------------
DROP TABLE IF EXISTS `zombie`;
CREATE TABLE `zombie`  (
  `id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userid`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zombieheals
-- ----------------------------
DROP TABLE IF EXISTS `zombieheals`;
CREATE TABLE `zombieheals`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zombiekills
-- ----------------------------
DROP TABLE IF EXISTS `zombiekills`;
CREATE TABLE `zombiekills`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NOTNULL',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zombiesurvivor
-- ----------------------------
DROP TABLE IF EXISTS `zombiesurvivor`;
CREATE TABLE `zombiesurvivor`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  `name` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'No-one',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Event structure for Auto-Prune Bans
-- ----------------------------
DROP EVENT IF EXISTS `Auto-Prune Bans`;
delimiter ;;
CREATE EVENT `Auto-Prune Bans`
ON SCHEDULE
EVERY '1' DAY STARTS '2012-09-04 01:00:00'
ON COMPLETION PRESERVE
DO UPDATE `bans` SET `status` = '5' WHERE `status` = '1' AND `date_added` < NOW() - INTERVAL 1 WEEK
;;
delimiter ;

-- ----------------------------
-- Event structure for CCStrike Auto-Remove
-- ----------------------------
DROP EVENT IF EXISTS `CCStrike Auto-Remove`;
delimiter ;;
CREATE EVENT `CCStrike Auto-Remove`
ON SCHEDULE
EVERY '30' MINUTE STARTS '2014-11-07 06:28:14'
DO DELETE FROM `login_strikes` WHERE `ccstrike` = 1 AND `date` < NOW() - INTERVAL 2 WEEK ORDER BY `date` ASC
;;
delimiter ;

-- ----------------------------
-- Event structure for Email Cache Expiration
-- ----------------------------
DROP EVENT IF EXISTS `Email Cache Expiration`;
delimiter ;;
CREATE EVENT `Email Cache Expiration`
ON SCHEDULE
EVERY '1' HOUR STARTS '2012-09-26 16:00:00'
ON COMPLETION PRESERVE
DO DELETE FROM `cp_cache_email` WHERE `date` <= NOW() - INTERVAL 1 HOUR
;;
delimiter ;

-- ----------------------------
-- Event structure for Get Player Count (Hourly)
-- ----------------------------
DROP EVENT IF EXISTS `Get Player Count (Hourly)`;
delimiter ;;
CREATE EVENT `Get Player Count (Hourly)`
ON SCHEDULE
EVERY '15' MINUTE STARTS '2014-08-25 00:00:00'
ON COMPLETION PRESERVE
DO INSERT INTO `pcount` (`date`, `time`, `count`) VALUES (NOW(), NOW(), (SELECT COUNT(*) FROM `accounts` WHERE `Online` > 0))
;;
delimiter ;

-- ----------------------------
-- Event structure for Inactive Sweep
-- ----------------------------
DROP EVENT IF EXISTS `Inactive Sweep`;
delimiter ;;
CREATE EVENT `Inactive Sweep`
ON SCHEDULE
EVERY '1' DAY STARTS '2012-09-04 01:00:00'
ON COMPLETION PRESERVE
DO DELETE FROM `accounts` WHERE `Band` = 0 AND `ConnectedTime` = '0' AND `UpdateDate` < NOW() - INTERVAL 1 WEEK
;;
delimiter ;

-- ----------------------------
-- Event structure for Login Strikes Auto-Removal
-- ----------------------------
DROP EVENT IF EXISTS `Login Strikes Auto-Removal`;
delimiter ;;
CREATE EVENT `Login Strikes Auto-Removal`
ON SCHEDULE
EVERY '1' MINUTE STARTS '2012-09-26 16:00:00'
ON COMPLETION PRESERVE
DO DELETE FROM `login_strikes` WHERE `ccstrike` = 0 AND `date` < NOW() - INTERVAL 15 MINUTE ORDER BY `date` ASC
;;
delimiter ;

-- ----------------------------
-- Event structure for Online Temp Fix
-- ----------------------------
DROP EVENT IF EXISTS `Online Temp Fix`;
delimiter ;;
CREATE EVENT `Online Temp Fix`
ON SCHEDULE
EVERY '1' HOUR STARTS '2014-07-13 03:51:34'
DO UPDATE `accounts` SET `Online` = 0 WHERE `LastLogin` < NOW() - INTERVAL 12 HOUR AND `Online` = 1
;;
delimiter ;

-- ----------------------------
-- Event structure for Staff Password Expiry
-- ----------------------------
DROP EVENT IF EXISTS `Staff Password Expiry`;
delimiter ;;
CREATE EVENT `Staff Password Expiry`
ON SCHEDULE
EVERY '6' HOUR STARTS '2014-07-09 05:10:51'
DO UPDATE `accounts` SET `ForcePasswordChange` = 1 WHERE (`AdminLevel` > 0 OR `Watchdog` > 0 OR `Helper` > 1) AND `LastPassChange` < NOW() - INTERVAL 2 MONTH
;;
delimiter ;

-- ----------------------------
-- Event structure for VIP Expiration
-- ----------------------------
DROP EVENT IF EXISTS `VIP Expiration`;
delimiter ;;
CREATE EVENT `VIP Expiration`
ON SCHEDULE
EVERY '1' HOUR STARTS '2012-09-04 23:00:00'
ON COMPLETION PRESERVE
DO UPDATE `accounts` SET `DonateRank` = 0, `VIPExpire` = 0 WHERE (`DonateRank` BETWEEN 1 AND 3) AND `VIPExpire` > 0 AND `VIPExpire` < Unix_Timestamp() AND `AdminLevel` < 2
;;
delimiter ;

-- ----------------------------
-- Event structure for Watchdog Points Expiration
-- ----------------------------
DROP EVENT IF EXISTS `Watchdog Points Expiration`;
delimiter ;;
CREATE EVENT `Watchdog Points Expiration`
ON SCHEDULE
EVERY '1' DAY STARTS '2014-02-11 12:11:14'
ON COMPLETION PRESERVE
DO UPDATE `nonrppoints` SET `active` = '0' WHERE `active` = '1' AND `expiration` < UNIX_TIMESTAMP()
;;
delimiter ;

-- ----------------------------
-- Event structure for Whitelist Request Prune
-- ----------------------------
DROP EVENT IF EXISTS `Whitelist Request Prune`;
delimiter ;;
CREATE EVENT `Whitelist Request Prune`
ON SCHEDULE
EVERY '1' HOUR STARTS '2012-09-26 16:00:00'
ON COMPLETION PRESERVE
DO DELETE FROM `cp_whitelist` WHERE `date` < NOW() - INTERVAL 1 HOUR
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
