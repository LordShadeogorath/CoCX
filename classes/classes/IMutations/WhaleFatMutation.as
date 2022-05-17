/**
 * Original code by aimozg on 27.01.14.
 * Extended for Mutations by Jtecx on 14.03.22.
 */
package classes.IMutations
{
import classes.PerkClass;
import classes.IMutationPerkType;
import classes.Player;

public class WhaleFatMutation extends IMutationPerkType
    {
        //v1 contains the mutation tier
        override public function desc(params:PerkClass = null):String {
            var descS:String = "";
            var pTier:int = player.perkv1(IMutationsLib.WhaleFatIM);
            var pHunger:int = 0;
            if (pTier >= 1) descS += "Increased damage reduction against physical damage and grants cold resistance permanently";
            if (pTier == 2){
                descS += ", juggle duration is increased by 1";
            }
            if (pTier == 3){
                descS += ", juggle duration is increased by 2";
            }
            while (pTier != 0){
                pHunger += 5*pTier;
                pTier--;
            }
            if (pTier >= 1) descS += ", Increase max hunger cap by " + pHunger + "";
            if (descS != "")descS += ".";
            return descS;
        }

        //Name. Need it say more?
        override public function name(params:PerkClass=null):String {
            var sufval:String;
            switch (player.perkv1(IMutationsLib.WhaleFatIM)){
                case 2:
                    sufval = "(Primitive)";
                    break;
                case 3:
                    sufval = "(Evolved)";
                    break;
                default:
                    sufval = "";
            }
            return "Whale Fat" + sufval;
        }

        //Mutation Requirements
        override public function pReqs(target:* = null):void{
            try{
                if (target == null){
                    trace("Notice: pBuffs target was not set for perk " + this.name() + ". Defaulting to player.");
                    target = player;
                }
                var params:PerkClass = target.getPerk(this);
                var pTier:int = params.value1;
                //This helps keep the requirements output clean.
                IMutationsLib.WhaleFatIM.requirements = [];
                if (pTier == 0){
                    IMutationsLib.WhaleFatIM.requireFatTissueMutationSlot()
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.orcaScore() >= 14 || player.leviathanScore() >= 20;
                    }, "Orca race");
                }
                else{
                    var pLvl:int = pTier * 30;
                    IMutationsLib.WhaleFatIM.requireLevel(pLvl);
                }
            }catch(e:Error){
                trace(e.getStackTrace());
            }
        }

        //Mutations Buffs
        override public function pBuffs(target:* = null):Object{
            var pBuffs:Object = {};
            if (target == null){
                trace("Notice: pBuffs target was not set for perk " + this.name() + ". Defaulting to player.");
                target = player;
            }
            var params:PerkClass = target.getPerk(this);
            var pTier:int = params.value1;
            if (pTier == 1) pBuffs['tou.mult'] = 0.05;
            else if (pTier == 2) pBuffs['tou.mult'] = 0.15;
            else if (pTier == 3) pBuffs['tou.mult'] = 0.3;
            return pBuffs;
        }

        public function WhaleFatMutation() {
            super("Whale Fat IM", "Whale Fat", ".");
            maxLvl = 3;
        }

        
    }
}