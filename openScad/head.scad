$fn = 80;

hr = 4;
move_by = 25;
s = 60;
d = 35;
r2 = 3.3/2;

union(){
	difference(){  
		translate([move_by,move_by+10,0]) cube([s,d,hr]);

		// eyes
		translate([43, 53, -3]) cylinder(h = 17, r = 8.5); 
		translate([68, 53, -3]) cylinder(h = 17, r = 8.5);    

		//screws
		translate([34, 44, 1]) cylinder(h = 10, r = 1);
		translate([77, 44, 1]) cylinder(h = 10, r = 1);   

		// cuts
		translate([50, 43, 1]) cube([11, 5, 12]);
		translate([50, 60, 2]) cube([11, 5, 12]);

	} // diff


	rotate([0,0,25])translate([50, 47,0]) cylinder(h = hr, r = 2,$fn=3);
	rotate([0,0,15]) translate([44, 59,0]) cylinder(h = hr, r = 5,$fn=3);

	translate([110,0,0])
		mirror([1,0,0]){
			rotate([0,0,25]) translate([50, 47,0]) cylinder(h = hr, r = 2,$fn=3);
			rotate([0,0,15]) translate([44, 59,0]) cylinder(h = hr, r = 5,$fn=3);
		}// mir

	translate([40, 70,0]) cylinder(h = hr, r = 3,$fn=3);
	mirror([1,0,0])  translate([-70, 70, 0]) cylinder(h = hr, r = 3,$fn=3);

	// ears
		hull(){
			translate([12,15,0]) cylinder(r=1, h =hr);
			translate([22,27,0]) cylinder(r=6, h =hr);
			translate([29,36,0]) cylinder(r=7, h =hr);
		}

		translate([110,0,0]) mirror([1,0,0])
		hull(){
			translate([12,15,0]) cylinder(r=1, h =hr);
			translate([22,27,0]) cylinder(r=6, h =hr);
			translate([29,36,0]) cylinder(r=7, h =hr);
		}
	// neck
		translate([50, 70,0]) cube([10, 10, hr]);

		difference(){
			translate([50, 80,0]) cube([10, 3, 20]);
			// 	
			rotate([90,0,0]) translate([55, 15,-87]) cylinder(h = 10, r =r2);
			rotate([90,0,0]) translate([55, 8,-87]) cylinder(h = 10, r =r2);
		}
} // u

