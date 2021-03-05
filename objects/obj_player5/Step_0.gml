if(duckKey){
falling = true
jumping = false
ducking = true
}

if(place_meeting(x, y + 1, obj_chao)){
vSpd = 0
jumping = false
falling = false

if(!duckKey){ducking = false}

if(jumpKey && !duckKey){
jumping = true;
vSpd = -jSpd;
}
}
else{
	if(vSpd < termVelocity){
	vSpd += grav 
	}
	
	if(sign(vSpd) == 1){
	falling = true;
	}
}

if(jumping){
if(vSpd < 0){
	jumping = true
}
else{
jumping = false
falling = true
}
}

if(place_meeting(x, y + vSpd, obj_chao)){
	while (!place_meeting(x, y + sign(vSpd), obj_chao)){
	 y += sign(vSpd)
	}
	vSpd = 0
}

y += vSpd

