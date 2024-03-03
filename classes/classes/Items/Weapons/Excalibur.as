/**
 * ...
 * @author Liadri
 */
package classes.Items.Weapons
{
	import classes.Items.Weapon;
	import classes.Items.ItemTags;
	import classes.PerkLib;
	import classes.Player;
	import classes.GlobalFlags.*;
	
	public class Excalibur extends Weapon
	{
		
		public function Excalibur()
		{
			super("Excalib", "Excalibur", "Excalibur", "an Excalibur", "slash", 40, 800, "A legendary sword said to have been made by Marae for her champion. This weapon radiates divine power, purifying its wielder and protecting them from impurity.", "", "Sword");
			withTag(ItemTags.I_LEGENDARY);
		}
		
		override public function get attack():Number {
			var temp:int = 10 + int((90 - game.player.cor) / 3);
			if (temp < 10) temp = 10;
			if (game.player.hasPerk(PerkLib.HiddenJobSwordImmortal)) temp = 40;
			return temp;
		}
		
		override public function canEquip(doOutput:Boolean):Boolean {
			if (game.player.cor < (33 + game.player.corruptionTolerance)) return super.canEquip(doOutput);
			if (doOutput) outputText("You grab hold of the handle of the sword only to have it grow burning hot.  You're forced to let it go lest you burn yourself.  Something within the sword must be displeased.  ");
			return false;
		}
	}
}
