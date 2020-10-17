/**
 * ...
 * @author Ormael
 */
package classes.Perks 
{
	import classes.PerkClass;
	import classes.PerkType;
	import classes.CoC;
	
	public class AscensionTranshumanismWisPerk extends PerkType
	{
		
		override public function desc(params:PerkClass = null):String
		{
			return "(Rank: " + params.value1 + "/" + CoC.instance.charCreation.MAX_TRANSHUMANISM_WIS_LEVEL + ") Increases maximum Wis by " + params.value1 * 8 + ".";
		}
		
		public function AscensionTranshumanismWisPerk() 
		{
			super("Ascension: Transhumanism (Wis)", "Ascension: Transhumanism (Wis)", "", "Increases maximum Wis by 40.");
		}
		
		override public function keepOnAscension(respec:Boolean = false):Boolean 
		{
			return true;
		}
	}

}