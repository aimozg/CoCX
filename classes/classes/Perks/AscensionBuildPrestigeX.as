/**
 * Created by aimozg on 27.01.14.
 */
package classes.Perks
{
import classes.PerkClass;
import classes.PerkType;
import classes.PerkLib;

public class AscensionBuildPrestigeX extends PerkType
{

    override public function desc(params:PerkClass = null):String {
        var pVal:Number = player.perkv1(PerkLib.AscensionBuildingPrestigeX) - 1;
        "Your understanding of prestige jobs from your previous life allows you to pick another " + pVal.toString() + " job" + (pVal > 1 ? "s":"") +" at lvl 42+."
        return "Your body has adapted to having unnatural organs to the point of being able to sustain " + pVal.toString() + " extra mutation" + (pVal > 1 ? "s":"") +" in each organ.";
    }

    override public function name(params:PerkClass=null):String {
        var sufval:String = player.perkv1(PerkLib.AscensionBuildingPrestigeX).toString();
        return "Ascension: Building Prestige Stage " + sufval;
    }

    public function AscensionBuildPrestigeX() {
        super("Ascension Building Prestige Stage", "Ascension Building Prestige Stage",
                ".");
    }

    override public function keepOnAscension(respec:Boolean = false):Boolean {
        return true;
    }
}
}