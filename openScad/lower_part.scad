$fn = 80;

width = 110;
lenght = 120;
v_s = 25; // s

o_kol = 2.1; //mm r
motor = 10;// v
led = 3.3; // rgb
mm = 86;

rr = 2.2; //screw

union(){
    difference(){
        minkowski(){
            sphere(1);
        cube([width, lenght, v_s]);
        }// 
        translate([3,3,3]) cube([width-6, lenght-6, v_s+10]);
            
		// motors
		translate([14,8,-5])  cylinder(h = 20, r = 1.2);
	   translate([18,8,-5]) cylinder(h = 20, r = 1.2);       
	   translate([8+mm,8,-5])  cylinder(h = 20, r = 1.2);
	   translate([12+mm,8,-5]) cylinder(h = 20, r = 1.2);  
	  
	   
	   translate([6,44,-15]) cylinder(h = 30, r = 1.2);
	   translate([26,44,-15])  cylinder(h = 30, r = 1.2);  
	   translate([mm,44,-15]) cylinder(h = 30, r = 1.2);
	   translate([19+mm,44,-15]) cylinder(h = 30, r = 1.2);
		
	   // gear wire
	   translate([85,70,-5]) cylinder(h = 20, r = 4);
	   translate([27,70,-5])  cylinder(h = 20, r = 4);
		
		// for switcher
		translate([7,-5,8])cube([16, 15, 10]);
		
		// for rgb leds
		rotate([90, 0,0]) translate([width/3-1,10,-lenght-10]) cylinder(h = 30, r = led);

		rotate([90, 0,0])translate([width/3-8,17,-lenght-10]) cylinder(h = 30, r = 1.7);   
		rotate([90, 0,0]) translate([2*width/3-1,10,-lenght-10]) cylinder(h = 30, r = led);
		rotate([90, 0,0]) translate([2*width/3+6,17,-lenght-10]) cylinder(h = 30, r = 1.7);
		
		
		// passive wheel
		translate([33+8,lenght -20,-2]) cylinder(h = 10, r = o_kol);
		translate([33+8,lenght -20- 34,-2]) cylinder(h = 10, r = o_kol);
		translate([33 + 28+8,lenght -20,-2]) cylinder(h = 10, r = o_kol);     
		translate([33 + 28+8,lenght -20 -34,-2]) cylinder(h = 10, r = o_kol);
		
		// screws
		translate([12, lenght-12, -8]) cylinder(h= 30, r = rr);
		translate([12+85, lenght-12, -8]) cylinder(h= 30, r = rr);
		translate([26, 10, -8]) cylinder(h= 30, r = rr);
		translate([84, 10, -8]) cylinder(h= 30, r = rr);
    
    }       // d
      
// board
    translate([33,64,3]) cube([3, 40, 5]); 
    translate([75,64,3]) cube([3, 40, 5]); 

} // 



