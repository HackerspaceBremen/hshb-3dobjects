$fn=50;
hs=13.5;
difference()
{
    cylinder(r=8/2, h=hs);
    translate([-2,0,-0.1])
    cylinder(r=4/2, h=hs+0.2);
    translate([-4,-4,-0.1])
    cube([1,8,hs+0.2]);
}