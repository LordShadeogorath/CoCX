/**
 * ...
 * @author Ormael
 */
package classes.Items.Weapons 
{
	import classes.Items.Weapon;
	import classes.Player;
	
	public class Lance extends Weapon
	{
		
		public function Lance() 
		{
			super("Lance", "Lance", "deadly lance", "a deadly lance", "piercing stab", 12, 480, "A long wooden shaft with a pointed metal head, used as a weapon by knights and cavalry soldiers in charging.  This would ignore most armors.  Req. 100+ speed to unleash full attack power.");
		}
		
		override public function get attack():Number {
			var boost:int = 0;
			var base:int = 0;
			base += 6;
			if (game.player.spe >= 100) base += 3;
			if (game.player.spe >= 50) base += 3;
			if (game.player.isMeetingNaturalJousterMasterGradeReq()) boost += base * 4;
			else if (game.player.isMeetingNaturalJousterReq()) boost += base * 2;
			return (boost);
		}
	}
}