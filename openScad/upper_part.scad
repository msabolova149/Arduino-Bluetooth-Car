$fn = 80;

width = 110;
height = 120;
rr = 2.2;  //screw
r3 = 3.3/2;

union(){
    
    difference(){
		translate([4,4,0])
			minkowski(){
				sphere(1);
			cube([width-8, height-8, 4]);
			}// 
		// screws
		translate([12, height-12,-2]) cylinder(h= 10, r = rr);
		translate([12+85, height-12, -2]) cylinder(h= 10, r = rr);
		translate([26, 10, -2]) cylinder(h= 10, r = rr);
		translate([84, 10, -2]) cylinder(h= 10, r = rr);
		
		translate([30, 80, -2])
			minkowski(){
					sphere(1);
				cube([50,10, 15]);
			}
		
		translate([40, 10, -2])
			minkowski(){
				sphere(1);
				cube([30,5, 15]);
		}
    // 
		translate([95, 20, -2])
			minkowski(){
				sphere(1);
				cube([5,70, 10]);
		}
		translate([10, 20, -2])
			minkowski(){
				sphere(1);
				cube([5,70, 10]);
		}
    
    // for arduino
		translate([33, 25.5,-2]) cylinder(h= 15, r = r3);
		translate([34, 74,-2]) cylinder(h= 15, r = r3);
		translate([85, 31,-2]) cylinder(h= 15, r = r3);
		translate([85, 59,-2]) cylinder(h= 15, r = r3);
    
		// for head
		translate([53, 100,-2]) cylinder(h= 15, r = r3);
		translate([53, 107,-2]) cylinder(h= 15, r = r3);
    
	} // d
      
} // u
