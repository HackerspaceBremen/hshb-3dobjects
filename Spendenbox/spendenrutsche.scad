wall = 2;
$fn = 50;

module slope1()
{
    linear_extrude(wall)
    {
        polygon(points=[[0,0],[40,0],[40+17.5,-20],[0-17.5,-20]]);
    }
}
module slope2()
{
    linear_extrude(wall)
    {
        polygon(points=[[0,0],[0,10],[-20,10+17.5],[0-20,0-17.5]]);
    }
}

module shute()
{
    translate([0,0,2])
    union()
    {
        translate([0,0,-10])
        difference()
        {
            cube([40,10,10]);
            translate([wall,wall,-0.5])
                cube([40-2*wall,10-2*wall,11]);
        }
        translate([0,0,-wall])
            rotate([-30,0,0])
                slope1();
        translate([0,10,-wall])
            rotate([30,0,0])
                mirror([0,1,0])
                    slope1();
        translate([0,0,-wall])
            rotate([0,30,0])
                slope2();
        translate([40-wall/2,0,-0.2])
            rotate([0,150,0])
                slope2();
    }
}

difference()
{
    shute();
    
    translate([10,-10,0])
        cylinder(r=2.5,h=50);
    translate([10,20,0])
        cylinder(r=2.5,h=50);
    translate([30,-10,0])
        cylinder(r=2.5,h=50);
    translate([30,20,0])
        cylinder(r=2.5,h=50);
//    translate([-10,5,0])
//        cylinder(r=2.5,h=50);
//    translate([50,5,0])
//        cylinder(r=2.5,h=50);
    
    translate([-10,5,2.5])
        rotate([0,90,0])
            cylinder(r=2.5,h=60);
}

translate([-17.5,-17.5,0])
    cube([wall,45,11.7]);
translate([40+17.5-wall,-17.5,0])
    cube([wall,45,11.7]);

translate([-17.5,-17.5,0])
    cube([74.5,wall,11.7]);
translate([-17.5,25.5,0])
    cube([74.5,wall,11.7]);


