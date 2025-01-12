DELETE FROM HandicapInfo_Goodies
WHERE GoodyType = 'GOODY_REVEAL_NEARBY_BARBS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE GoodyHuts
SET Experience = '10'
WHERE Type = 'GOODY_EXPERIENCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE GoodyHuts
SET Culture = '15'
WHERE Type = 'GOODY_CULTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE GoodyHuts
SET MapOffset = '10'
WHERE Type = 'GOODY_MAP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE GoodyHuts
SET MapProb = '110'
WHERE Type = 'GOODY_MAP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

INSERT INTO GoodyHuts
	(Type, Description, ChooseDescription, Sound, Production, GoldenAge, FreeTiles, Science)
VALUES
	('GOODY_PRODUCTION', 'TXT_KEY_GOODY_PRODUCTION', 'TXT_KEY_GOODY_CHOOSE_PRODUCTION', 'AS2D_GOODY_WARRIOR', 30, 0, 0, 0),
	('GOODY_GOLDEN_AGE', 'TXT_KEY_GOODY_GOLDEN_AGE', 'TXT_KEY_GOODY_CHOOSE_GOLDEN_AGE', 'AS2D_GOODY_WARRIOR', 0, 200, 0, 0),
	('GOODY_TILES', 'TXT_KEY_GOODY_TILES', 'TXT_KEY_GOODY_CHOOSE_FREE_TILES', 'AS2D_GOODY_WARRIOR', 0, 0, 4, 0);

INSERT INTO HandicapInfo_Goodies
	(HandicapType, GoodyType)
VALUES
	('HANDICAP_SETTLER', 'GOODY_PRODUCTION'),
	('HANDICAP_SETTLER', 'GOODY_GOLDEN_AGE'),
	('HANDICAP_SETTLER', 'GOODY_TILES'),
	('HANDICAP_SETTLER', 'GOODY_EXPERIENCE'),
	('HANDICAP_CHIEFTAIN', 'GOODY_PRODUCTION'),
	('HANDICAP_CHIEFTAIN', 'GOODY_GOLDEN_AGE'),
	('HANDICAP_CHIEFTAIN', 'GOODY_TILES'),
	('HANDICAP_CHIEFTAIN', 'GOODY_EXPERIENCE'),
	('HANDICAP_WARLORD', 'GOODY_PRODUCTION'),
	('HANDICAP_WARLORD', 'GOODY_GOLDEN_AGE'),
	('HANDICAP_WARLORD', 'GOODY_TILES'),
	('HANDICAP_WARLORD', 'GOODY_EXPERIENCE'),
	('HANDICAP_PRINCE', 'GOODY_PRODUCTION'),
	('HANDICAP_PRINCE', 'GOODY_GOLDEN_AGE'),
	('HANDICAP_PRINCE', 'GOODY_TILES'),
	('HANDICAP_PRINCE', 'GOODY_EXPERIENCE'),
	('HANDICAP_KING', 'GOODY_PRODUCTION'),
	('HANDICAP_KING', 'GOODY_GOLDEN_AGE'),
	('HANDICAP_KING', 'GOODY_TILES'),
	('HANDICAP_KING', 'GOODY_EXPERIENCE'),
	('HANDICAP_EMPEROR', 'GOODY_PRODUCTION'),
	('HANDICAP_EMPEROR', 'GOODY_GOLDEN_AGE'),
	('HANDICAP_EMPEROR', 'GOODY_TILES'),
	('HANDICAP_EMPEROR', 'GOODY_EXPERIENCE'),
	('HANDICAP_IMMORTAL', 'GOODY_PRODUCTION'),
	('HANDICAP_IMMORTAL', 'GOODY_GOLDEN_AGE'),
	('HANDICAP_IMMORTAL', 'GOODY_TILES'),
	('HANDICAP_IMMORTAL', 'GOODY_EXPERIENCE'),
	('HANDICAP_DEITY', 'GOODY_PRODUCTION'),
	('HANDICAP_DEITY', 'GOODY_GOLDEN_AGE'),
	('HANDICAP_DEITY', 'GOODY_TILES'),
	('HANDICAP_DEITY', 'GOODY_EXPERIENCE'),
	('HANDICAP_AI_DEFAULT', 'GOODY_PRODUCTION'),
	('HANDICAP_AI_DEFAULT', 'GOODY_GOLDEN_AGE'),
	('HANDICAP_AI_DEFAULT', 'GOODY_TILES'),
	('HANDICAP_AI_DEFAULT', 'GOODY_EXPERIENCE');

INSERT INTO Concepts
	(Type, Topic, Description, Summary, AdvisorQuestion, Advisor, CivilopediaHeaderType)
VALUES
	('CONCEPT_ANCIENT_RUINS_BENEFITS_GOLDEN_AGE', 'TXT_KEY_TOPIC_BARBARIAN', 'TXT_KEY_BARBARIAN_GOLDEN_AGE_HEADING4_TITLE', 'TXT_KEY_BARBARIAN_GOLDEN_AGE_HEADING4_BODY', 'TXT_KEY_BARBARIAN_GOLDEN_AGE_ADV_QUEST', 'FOREIGN', 'HEADER_RUBARB'),
	('CONCEPT_ANCIENT_RUINS_BENEFITS_PRODUCTION', 'TXT_KEY_TOPIC_BARBARIAN', 'TXT_KEY_BARBARIAN_PRODUCTION_HEADING4_TITLE', 'TXT_KEY_BARBARIAN_PRODUCTION_HEADING4_BODY', 'TXT_KEY_BARBARIAN_PRODUCTION_ADV_QUEST', 'FOREIGN', 'HEADER_RUBARB'),
	('CONCEPT_ANCIENT_RUINS_BENEFITS_TILES', 'TXT_KEY_TOPIC_BARBARIAN', 'TXT_KEY_BARBARIAN_TILES_HEADING4_TITLE', 'TXT_KEY_BARBARIAN_TILES_HEADING4_BODY', 'TXT_KEY_BARBARIAN_TILES_ADV_QUEST', 'FOREIGN', 'HEADER_RUBARB');