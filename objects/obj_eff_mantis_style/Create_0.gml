/// @description Insert description here
// You can write your code in this editor
event_inherited();

hover_text = "Mantis waits.";

endEffect = function() {
	var isNotMe = function(_el, _idx) {
		return _el.object_index != obj_eff_mantis_style;
	}
	var new_effects_list = array_filter(owner.effects, isNotMe)
	if(new_effects_list == noone) {
		new_effects_list = [];	
	}
	owner.effects = new_effects_list
	instance_destroy(self);
}