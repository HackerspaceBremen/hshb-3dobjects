width = 52;
height = 39.5;
thickness = 5;
wall = 1;

difference()
{
    union()
    {
        cube([width, height, thickness]);
        translate([wall,wall,thickness])
            cube([width-2*wall, height-2*wall, thickness]);
    }
    translate([3*wall, 3*wall, 3*wall])
        cube([width-6*wall, height-6*wall, 2*thickness]);
}
