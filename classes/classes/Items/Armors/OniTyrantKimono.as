/**
 * @author Liadri
 */
package classes.Items.Armors 
{
	import classes.CoC;
	import classes.Items.Armor;
import classes.Items.ItemTags;
import classes.PerkLib;
import classes.Player;
	
	public class OniTyrantKimono extends Armor
	{
		
		public function OniTyrantKimono()
		{
			super("OT Kimo", "OniTyrantKimono", "Oni Tyrant kimono", "a oni tyrant kimono", 0, 20, 10000, "This deceptively sturdy kimono belonged to a tyrant amonst oni nobility. In their homeland oni rules over lesser race with an iron fist. Might makes right or so they say.", "Light");
			withTag(ItemTags.AGILE);
		}
		
		override public function canUse():Boolean {
			if (game.player.tallness >= 80) return super.canUse();
			outputText("You aren't tall enough to wear this kimono!  ");
			return false;
		}

		override public function playerEquip():Armor {
			while (game.player.hasPerk(PerkLib.OniTyrantKimono)) game.player.removePerk(PerkLib.OniTyrantKimono);
			game.player.createPerk(PerkLib.OniTyrantKimono,0,0,0,0);
			return super.playerEquip();
		}

		override public function playerRemove():Armor {
			while (game.player.hasPerk(PerkLib.OniTyrantKimono)) game.player.removePerk(PerkLib.OniTyrantKimono);
			return super.playerRemove();
		}

		override public function get def():Number{
			var mod:int = game.player.cor/10;
			return 13 + mod;
		}
	}
}