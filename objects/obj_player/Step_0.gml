key_left = keyboard_check(ord("A")) or keyboard_check(vk_left)
key_right = keyboard_check(ord("D")) or keyboard_check(vk_right)
key_jump = keyboard_check_pressed(vk_space)
image_speed = 0.2

var move = key_right - key_left;
hSpd = move * walksp;
vSpd = vSpd + grv

if(place_meeting(x + hSpd, y, obj_chao)){

while(!place_meeting(x + sign(hSpd), y, obj_chao)){
 x = x + sign(hSpd)
}
hSpd = 0

}
x = x + hSpd

if(place_meeting(x, y + vSpd, obj_chao)){

while(!place_meeting(x, y+ sign(vSpd), obj_chao)){
 y = y + sign(vSpd)
}
vSpd = 0

}
y = y + vSpd

if(place_meeting(x, y+1, obj_chao) && key_jump){
vSpd = - 15
} 

if(keyboard_check(vk_control)){
sprite_index = spr_bonoroDuck}
if(keyboard_check_released(vk_control)){
sprite_index = spr_bonoro}

if(global.pontos > 30){
global.dificuldade = 1
}
if(global.pontos > 60){
global.dificuldade = 2
}
if(global.pontos > 90){
global.dificuldade = 3
}
if(global.pontos > 120){
global.dificuldade = 4
}