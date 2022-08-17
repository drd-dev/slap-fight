///@desc get the input from the player



keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyJump = keyboard_check_pressed(vk_space);
click = mouse_check_button_pressed(mb_left);
keyInteract = keyboard_check_pressed(ord("E"));
keyEnter = keyboard_check_pressed(vk_enter);


keyLeftPressed = keyboard_check_pressed(ord("A"));
keyRightPressed = keyboard_check_pressed(ord("D"));