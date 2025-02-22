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
	
	public class OniEnlightenedKimono extends Armor
	{
		
		public function OniEnlightenedKimono()
		{
			super("OE Kimo", "OniEnlightenedKimono", "Oni Noble kimono", "a oni noble kimono", 0, 20, 10000, "This deceptively sturdy kimono belonged to a beloved shogun amonst oni nobility. Despite their natural predisposition for domination over smaller races, some oni lords decides to rule as benevolent rulers rather then slavemasters. These benevolent oni lords more often then not are in search of the so called drunken enlightment.", "Light");
			withTag(ItemTags.AGILE);
		}
		
		override public function canUse():Boolean {
			if (game.player.tallness >= 80) return super.canUse();
			outputText("You aren't tall enough to wear this kimono!  ");
			return false;
		}

		override public function playerEquip():Armor {
			while (game.player.hasPerk(PerkLib.OniEnlightenedKimono)) game.player.removePerk(PerkLib.OniEnlightenedKimono);
			game.player.createPerk(PerkLib.OniEnlightenedKimono,0,0,0,0);
			return super.playerEquip();
		}

		override public function playerRemove():Armor {
			while (game.player.hasPerk(PerkLib.OniEnlightenedKimono)) game.player.removePerk(PerkLib.OniEnlightenedKimono);
			return super.playerRemove();
		}

		override public function get def():Number{
			var mod:int = (100-game.player.cor)/10;
			return 13 + mod;
		}
	}
}