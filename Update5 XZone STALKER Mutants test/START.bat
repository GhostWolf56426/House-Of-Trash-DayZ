@echo off
:start
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netlog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start DayZServer_x64.exe -config=serverDZ.cfg -port=2302 -profiles=Profilesfolder "-mod=@No Glove Or Shoe Damage;@XZone STALKER Mutants;@BetterSuppressors;@dbo_creatures;@PristineRepair;@PVEZ Reloaded;@Unknown Ghillie Mod;@CS Weapon Bag;@Tactical Flava;@LehsTFFix;@MMG - Mightys Military Gear;@Cl0ud's Military Gear;@BaseBuildingPlus;@Advanced Weapon Scopes;@PackingHeat;@GRW ER7 Gauss Rifle;@Mag Obfuscation;@TF-TrueNames;@ItemSizeTweak;@UsefulContainers;@UsefulBatteries;@CheckIdentity;@BulletStacksPlusPlusEnhanced;@Better-Snap-Sounds;@Inventory Blur Removal;@ViewInventoryAnimation;@BuildEverywhere;@DayZ-Expansion-Bundle;@DayZ-Expansion-Licensed;@Namalsk Survival;@Namalsk Island;@Dabs Framework;@VPPAdminTools;@CF" -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 29100
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start 