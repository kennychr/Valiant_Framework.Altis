/*
| Author:
|
|	Pfc.Christiansen
|_____
|
|   Description: Config for functions
|
|	Created: 10.11-2015
|	Last modified:
|	Made for AhoyWorld.
*/

class AW {
	tag= "AW"
	class AI {
		file = "Functions\AI";
		class reinforceChopper 				{};
		class reinforceMechanized 		{};
		class cas_strike							{};
		class artillery_strike				{};
		class spawnEnemy							{};
		class setBehaviour						{};

	};

	class ACRE {
		file = "Functions\ACRE";
		class presets									{};
	};

	class Map	{
		file = "Functions\Map";
		class findSpace							{};
		class findTown							{};
		class mapCenter							{};
	};

	class Supplies {
		file = "Functions\Supplies";
		class Ammo_Crate					{};
		class radioBox						{};
		class supplyPole					{};
	};

	class VA {
		file = "Functions\VA";

	};

	class Misc {
		file = "Functions\Misc";
		class missionName 					{};
		class diary									{};
		class fpsmon								{};
		class randomPosTrigger			{};
		class vSpawn_lhd						{};
		class cachePlacer						{};
		class vehicleSpawner				{};

	};

	class Tasks	{
		file = "Functions\Tasks";
		class taskInit						{};
		class makeTask						{};
		class missionName					{};
	};

	class Emplacements {
		file = "Functions\Emplacements";
		class createAAA 						{};
		class createMG							{};
	};

	class AmbAI	{
		file = "Functions\AmbAI";
		class AMB_findPlayer 						{};
		class AMB_findSpawnPos					{};
	};

	class Garbage {
		file = "Functions\Garbage";
		class addDead	{};
		class collectGarbage {};
	};

};
class QS {
	tag = "QS";
	class functions
	{
		file = "Functions\Misc";
		class vMonitor 						{};
		class vSetup02					 	{};
		class conditionMobileArmory 	{};
	};
};
