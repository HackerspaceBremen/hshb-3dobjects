module 3dPixel(xpos, ypos, xsi=3.5, ysi, zsi, gap=0.0)
{
    xsize = xsi;
    ysize = (ysi==undef)? xsi : ysi;
    zsize = (zsi==undef)? xsi : zsi;
    translate(v=[xpos*(gap+xsize),ypos*(gap+ysize),0])
    cube(size=[xsize, ysize, zsize]);
}
module RingHole(xpos, ypos, xsi=3.5, ysi, zsi, gap=0.0)
{
    xsize = xsi;
    ysize = (ysi==undef)? xsi : ysi;
    zsize = (zsi==undef)? xsi : zsi;
    difference(){
        3dPixel(xpos, ypos, xsize, ysize, zsize, gap);
        translate(v=[xpos*(gap+xsize)+0.5*xsize,ypos*(gap+ysize)+0.5*ysize,0.5*zsize])
        cylinder(h=1.1*zsize, r=0.4*xsize, $fn=20, center=true);
    }
}
module PixelSteg(x1, y1, x2, y2, rot=45, xsi=3.5, ysi, zsi, gap=0.0)
{
    xsize = xsi;
    ysize = (ysi==undef)? xsi : ysi;
    zsize = (zsi==undef)? xsi : zsi;
    translate(v=[(x1+x2)/2*(gap+xsize)+0.5*xsize,(y1+y2)/2*(gap+ysize)+0.5*ysize,zsize/5/2])
    rotate([0,0,rot])
    cube(size=[((x1!=x2)?max(abs(x1-x2),1):max(abs(y1-y2),1))*xsize, ysize, zsize/5],center=true);
}

module MagnetHole(xpos, ypos, xsi=3.5, ysi, zsi, gap=0.0, magnetHeight = 2.0, magnetDiam = 4.0)
{
    xsize = xsi;
    ysize = (ysi==undef)? xsi : ysi;
    zsize = (zsi==undef)? xsi : zsi;
    translate(v=[xpos*(gap+xsize)+0.5*xsize,ypos*(gap+ysize)+0.5*ysize,magnetHeight/2-magnetHeight*0.1])
    cylinder(h=magnetHeight*1.1, r=magnetDiam/2, $fn=20, center=true);
}

3dPixel(0,0);
RingHole(1,1);
difference()
{
    3dPixel(2,2);
    MagnetHole(2,2);
}



