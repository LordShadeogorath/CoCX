package classes.Races {
import classes.BodyData;
import classes.BodyParts.*;
import classes.IMutations.IMutationsLib;
import classes.PerkLib;
import classes.Race;

public class BunnyRace extends Race {
	public function BunnyRace(id:int) {
		super("Bunny", id);
	}
	
	public override function setup():void {
		addScores()
				.faceType(Face.BUNNY, +1)
				.earType(Ears.BUNNY, +1, -1000)
				.legType(LowerBody.BUNNY, +1)
				.skinCoatType(Skin.FUR, +2)
				.tailType(Tail.RABBIT, +1)
				.height(LESS_THAN(72), +1)
				.noBalls(0, -1)
				.customRequirement("","No easter bunny balls",
						function (body:BodyData): Boolean {
							return !(body.player.hasPerk(PerkLib.EasterBunnyBalls) && body.hasBalls)
						}, 0, -1000);
		addScoresAfter(2)
				.noAntennae(+1)
				.noWings(+1)
		addScoresAfter(4)
				.eyeType(Eyes.HUMAN, +1)
				.armType(Arms.HUMAN, +1)
		
		addMutation(IMutationsLib.HinezumiBurningBloodIM);
		
		buildTier(10, "bunny")
				.namesMaleFemale("bunny-boy","bunny-girl")
				.buffs({
					"str.mult": -0.20,
					"tou.mult": -0.10,
					"spe.mult": +0.90,
					"lib.mult": +0.90
				})
				.end();
	}
}
}