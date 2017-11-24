/**
 * ...
 * @author Ormael
 */
package classes.Scenes.NPCs 
{
import classes.*;
import classes.GlobalFlags.kFLAGS;
import classes.internals.ChainedDrop;

public class RyuBiDragon extends Monster
	{
		override public function defeated(hpVictory:Boolean):void
			{
			clearOutput();
			cleanupAfterCombat();
			if (flags[kFLAGS.RYUBI_LVL_UP] == 1) {
				outputText("Placeholder");
				flags[kFLAGS.RYUBI_LVL_UP]++;
				return;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 2) {
				outputText("Placeholder");
				flags[kFLAGS.RYUBI_LVL_UP]++;
				return;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 3) {
				outputText("Placeholder");
				flags[kFLAGS.RYUBI_LVL_UP]++;
				return;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 4) {
				outputText("Placeholder");
				flags[kFLAGS.RYUBI_LVL_UP]++;
				return;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 5) {
				outputText("Placeholder");
				flags[kFLAGS.RYUBI_LVL_UP]++;
				return;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 6) {
				outputText("Placeholder");
				return;
			}
		}
		
		override public function won(hpVictory:Boolean, pcCameWorms:Boolean):void
		{
			clearOutput();
			outputText("Placeholder");
			cleanupAfterCombat();
			return;
		}
		
		public function RyuBiDragon() 
		{
			if (flags[kFLAGS.RYUBI_LVL_UP] == 1) {
				initStrTouSpeInte(100, 100, 20, 10);
				initWisLibSensCor(10, 50, 35, 50);
				this.weaponAttack = 4;
				this.armorDef = 4;
				this.lustVuln = .95;
				this.bonusHP = 50;
				this.bonusLust = 10;
				this.level = 3;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 2) {
				initStrTouSpeInte(110, 120, 30, 25);
				initWisLibSensCor(25, 50, 35, 50);
				this.weaponAttack = 7;
				this.armorDef = 7;
				this.lustVuln = .95;
				this.bonusHP = 100;
				this.bonusLust = 20;
				this.level = 6;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 3) {
				initStrTouSpeInte(120, 140, 40, 40);
				initWisLibSensCor(40, 50, 35, 50);
				this.weaponAttack = 10;
				this.armorDef = 10;
				this.lustVuln = .9;
				this.bonusHP = 150;
				this.bonusLust = 30;
				this.level = 9;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 4) {
				initStrTouSpeInte(130, 160, 50, 60);
				initWisLibSensCor(60, 50, 35, 50);
				this.weaponAttack = 15;
				this.armorDef = 15;
				this.lustVuln = .9;
				this.bonusHP = 200;
				this.bonusLust = 40;
				this.level = 12;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 5) {
				initStrTouSpeInte(140, 180, 60, 80);
				initWisLibSensCor(80, 50, 35, 50);
				this.weaponAttack = 20;
				this.armorDef = 20;
				this.lustVuln = .85;
				this.bonusHP = 250;
				this.bonusLust = 50;
				this.level = 15;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 6) {
				initStrTouSpeInte(150, 200, 70, 100);
				initWisLibSensCor(100, 50, 35, 50);
				this.weaponAttack = 25;
				this.armorDef = 25;
				this.lustVuln = .85;
				this.bonusHP = 300;
				this.bonusLust = 60;
				this.level = 18;
			}
			if (flags[kFLAGS.RYUBI_LVL_UP] == 7) {
				initStrTouSpeInte(150, 200, 70, 100);
				initWisLibSensCor(100, 50, 35, 50);
				this.weaponAttack = 36;
				this.armorDef = 54;
				this.lustVuln = .85;
				this.bonusHP = 300;
				this.bonusLust = 60;
				this.level = 21;
			}
			this.a = "the ";
			this.short = "dragon";//może na początku po prostu a (mighty) dragon
			this.imageName = "ryubidragon";
			this.long = "You are currently battling a mighty dragon.";
			//this.long = "You are currently 'battling' RyuBi in dragon from, in a playfight.  At least, that was the intention.  The way she lashes her tail along the ground, with claws spread and teeth bared ferociously, makes you wonder.";
			createVagina(true,AppearanceDefs.VAGINA_WETNESS_NORMAL,AppearanceDefs.VAGINA_LOOSENESS_NORMAL);
			createStatusEffect(StatusEffects.BonusVCapacity,10,0,0,0);
			createBreastRow(Appearance.breastCupInverse("A"));
			this.ass.analLooseness = AppearanceDefs.ANAL_LOOSENESS_TIGHT;
			this.ass.analWetness = AppearanceDefs.ANAL_WETNESS_DRY;
			this.createStatusEffect(StatusEffects.BonusACapacity,10,0,0,0);
			this.tallness = 340;
			this.hipRating = AppearanceDefs.HIP_RATING_SLENDER;
			this.buttRating = AppearanceDefs.BUTT_RATING_TIGHT;
			this.skin.base.color = "white";
			this.hairColor = "black";
			this.hairLength = 1;
		//	initStrTouSpeInte(400, 400, 20, 10);
			this.weaponName = "claws";
			this.weaponVerb="claw";
			this.armorName = "scales";
			this.lust = 20;
			this.temperment = TEMPERMENT_LOVE_GRAPPLES;
			this.gems = 5 + rand(3);
			this.drop = new ChainedDrop().add(useables.D_SCALE, 0.2);
			this.faceType = AppearanceDefs.FACE_DRAGON;
			this.tongueType = AppearanceDefs.TONGUE_DRACONIC;
			this.earType = AppearanceDefs.EARS_DRAGON;
			this.hornType = AppearanceDefs.HORNS_DRACONIC_X4_12_INCH_LONG;
			this.horns = 4;
			this.wingType = AppearanceDefs.WING_TYPE_DRACONIC_HUGE;
			this.lowerBody = AppearanceDefs.LOWER_BODY_TYPE_DRAGON;
			this.tailType = AppearanceDefs.TAIL_TYPE_DRACONIC;
			this.createPerk(PerkLib.EnemyBossType, 0, 0, 0, 0);
			this.createPerk(PerkLib.EnemyGigantType, 0, 0, 0, 0);
			this.createPerk(PerkLib.EnemyGodType, 0, 0, 0, 0);
			checkMonster();
		}
		
	}

}