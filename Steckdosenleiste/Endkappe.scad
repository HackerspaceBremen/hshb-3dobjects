width = 51.3;
height = 39.5;
thickness = 5;
wall = 2;
offset = 1.2;
hole = 6;
hole_y = 19.5;
hole_z = 6.5;

difference()
{
    union()
    {
        cube([width, height, thickness]);
        translate([offset,offset,thickness])
            cube([width-2*offset, height-2*offset, 2*thickness]);
    }
    translate([offset+wall, offset+wall, thickness])
        cube([width-2*(offset+wall), height-2*(offset+wall), 3*thickness]);
    translate([offset, hole_y+offset, hole_z])
        cube([width, hole, hole]);
}
