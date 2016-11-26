gap = 0.0;
xsize = 3.5;
ysize = xsize;
zsize = 3.5;
magnetHeight = 2.0;
magnetDiam = 4.0;

module 3dPixel(xpos, ypos)
{
    translate(v=[xpos*(gap+xsize),ypos*(gap+ysize),0])
    cube(size=[xsize, ysize, zsize]);
}
module RingHole(xpos, ypos)
{
    difference(){
        3dPixel(xpos, ypos);
        translate(v=[xpos*(gap+xsize)+0.5*xsize,ypos*(gap+ysize)+0.5*ysize,0.5*zsize])
        cylinder(h=1.1*zsize, r=0.4*xsize, $fn=20, center=true);
    }
}
module PixelSteg(x1, y1, x2, y2, rot=45)
{
    translate(v=[(x1+x2)/2*(gap+xsize)+0.5*xsize,(y1+y2)/2*(gap+ysize)+0.5*ysize,zsize/5/2])
    rotate([0,0,rot])
    cube(size=[abs(x1-x2)*xsize, ysize, zsize/5],center=true);
}

module MagnetHole(xpos, ypos)
{
    translate(v=[xpos*(gap+xsize)+0.5*xsize,ypos*(gap+ysize)+0.5*ysize,magnetHeight/2])
    cylinder(h=magnetHeight, r=magnetDiam/2, $fn=20, center=true);
}

module hshbLogo()
{
    union()
    {
        3dPixel(3,0);
        3dPixel(4,0);
        3dPixel(12,0);
        3dPixel(4,1);
        3dPixel(13,1);
        3dPixel(5,2);
        3dPixel(13,2);
        3dPixel(5,3);
        3dPixel(6,3);
        3dPixel(13,3);
        3dPixel(15,3);
        for(i = [5:9])
        {
            3dPixel(i,4);
        }
        3dPixel(12,4);
        3dPixel(13,4);
        3dPixel(14,4);
        3dPixel(1,5);
        3dPixel(2,5);
        for(i = [5:14])
        {
            3dPixel(i,5);
        }
        for(i = [1:13])
        {
            3dPixel(i,6);
        }
        for(i = [2:4])
        {
            3dPixel(i,7);
        }
        for(i = [6:12])
        {
            3dPixel(i,7);
        }
        3dPixel(2,8);
        3dPixel(3,8);
        3dPixel(7,8);
        3dPixel(10,8);
        3dPixel(2,9);
        3dPixel(7,9);
        3dPixel(10,9);
        for(i = [5:11])
        {
            3dPixel(i,10);
        }
        for(i = [4:10])
        {
            3dPixel(i,11);
        }
        3dPixel(12,11);
        3dPixel(7,12);
        3dPixel(9,12);
        3dPixel(10,12);
        for(i = [6:11])
        {
            3dPixel(i,13);
        }
        3dPixel(5,14);
        3dPixel(8,14);
        3dPixel(12,14);
        3dPixel(7,15);
        3dPixel(9,15);
        for(i = [6:7])
        {
            3dPixel(i,16);
        }
        for(i = [9:11])
        {
            3dPixel(i,16);
        }
        3dPixel(8,16);
        3dPixel(8,15);
        //RingHole(8,15);
        3dPixel(5,17);
        3dPixel(6,17);
        3dPixel(9,17);
        3dPixel(10,17);
        3dPixel(6,18);
    }
    PixelSteg(4,1,5,2);
    PixelSteg(12,0,13,1);
    PixelSteg(14,3,15,4);
    PixelSteg(11,10,12,11);
    PixelSteg(11,13,12,14);
    PixelSteg(6,13,5,14);
}

//Logo mit Loch f?r Magnet
difference()
{
    hshbLogo();
    //MagnetHole(8,6);
    $fn=50;
    translate([8.5*xsize,16*ysize,-0.05])
    cylinder(r=xsize/2,h=zsize*1.1);
}




