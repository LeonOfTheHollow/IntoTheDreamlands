/// @description Insert description here
// You can write your code in this editor

show_debug_message("clicked dummy")
if (dialog_active) {
	dialog_active = false;
} else if (lesson_complete){
	// nothing!
} else {
	dummy_active_dialog = instance_create_layer(
		0,0,"Overlay",
		obj_dialog,
		{
			pages: ["I'm a Total Dummy, designed for you to demonstrate your mastery of attacking!", "Go ahead and hit me - I won't do anything!"],
			choices: ["LET'S GO","NOT NOW"]
		}
	);
	dummy_active_dialog.choiceHandler = function(choice) {
		if (choice == 0) {
			global.duel_parameters = {
				fight_room: room,
				enemy_duelist: "TOTAL DUMMY",
				victoryHandler: victoryHandler
			};
			room_goto(Duel);
		} else if (choice == 1) {
			// dialog to point towards bookshelves
		} else {
			show_debug_message("Got unexpected choice in dummy fight: "+string(choice));
		}
	}
}
