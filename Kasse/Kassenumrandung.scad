gap = 0.0;
xsize = 3.5;
ysize = xsize;
zsize = 3.5;
magnetHeight = 2.0;
magnetDiam = 4.0;
letterGap = 0.25;
letterSize = 5;
wordOffset = 0.25;

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
    cube(size=[((x1!=x2)?max(abs(x1-x2),1):max(abs(y1-y2),1))*xsize, ysize, zsize/5],center=true);
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
module A(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 2+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    PixelSteg(0+offsetX,3+offsetY,1+offsetX,4+offsetY);
    PixelSteg(3+offsetX,4+offsetY,4+offsetX,3+offsetY);
}
module B(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 2+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    PixelSteg(3+offsetX,2+offsetY,4+offsetX,1+offsetY);
    PixelSteg(3+offsetX,2+offsetY,4+offsetX,3+offsetY);
    PixelSteg(3+offsetX,4+offsetY,4+offsetX,3+offsetY);
    PixelSteg(3+offsetX,0+offsetY,4+offsetX,1+offsetY);
}
module C(offsetX, offsetY)
{
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    PixelSteg(0+offsetX,1+offsetY,1+offsetX,0+offsetY);
    PixelSteg(0+offsetX,3+offsetY,1+offsetX,4+offsetY);
    PixelSteg(3+offsetX,0+offsetY,4+offsetX,1+offsetY);
    PixelSteg(3+offsetX,4+offsetY,4+offsetX,3+offsetY);
}
module D(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    PixelSteg(3+offsetX,0+offsetY,4+offsetX,1+offsetY);
    PixelSteg(3+offsetX,4+offsetY,4+offsetX,3+offsetY);
}
module E(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    3dPixel(1+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 2+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
}
module F(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 2+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
}
module G(offsetX, offsetY)
{
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 2+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    PixelSteg(1+offsetX,0+offsetY,0+offsetX,1+offsetY);
    PixelSteg(3+offsetX,0+offsetY,4+offsetX,1+offsetY);
    PixelSteg(0+offsetX,3+offsetY,1+offsetX,4+offsetY);
}
module H(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 2+offsetY);
}
module I(offsetX, offsetY)
{
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 1+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 3+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
}
module J(offsetX, offsetY)
{
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    PixelSteg(3+offsetX,0+offsetY,4+offsetX,1+offsetY);
    PixelSteg(0+offsetX,1+offsetY,1+offsetX,0+offsetY);
}
module K(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 1+offsetY);
    3dPixel(3+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    PixelSteg(2+offsetX,2+offsetY,3+offsetX,3+offsetY);
    PixelSteg(2+offsetX,2+offsetY,3+offsetX,1+offsetY);
    PixelSteg(3+offsetX,3+offsetY,4+offsetX,4+offsetY);
    PixelSteg(3+offsetX,1+offsetY,4+offsetX,0+offsetY);
}
module L(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
}
module M(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 3+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 3+offsetY);
    PixelSteg(1+offsetX,3+offsetY,2+offsetX,2+offsetY);
    PixelSteg(2+offsetX,2+offsetY,3+offsetX,3+offsetY);
}
module N(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 3+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 1+offsetY);
    PixelSteg(1+offsetX,3+offsetY,2+offsetX,2+offsetY);
    PixelSteg(2+offsetX,2+offsetY,3+offsetX,1+offsetY);
}
module O(offsetX, offsetY)
{
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    PixelSteg(0+offsetX,1+offsetY,1+offsetX,0+offsetY);
    PixelSteg(0+offsetX,3+offsetY,1+offsetX,4+offsetY);
    PixelSteg(3+offsetX,0+offsetY,4+offsetX,1+offsetY);
    PixelSteg(3+offsetX,4+offsetY,4+offsetX,3+offsetY);
}
module P(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 2+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    PixelSteg(3+offsetX,2+offsetY,4+offsetX,3+offsetY);
    PixelSteg(3+offsetX,4+offsetY,4+offsetX,3+offsetY);
}
module Q(offsetX, offsetY)
{
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 1+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    PixelSteg(0+offsetX,1+offsetY,1+offsetX,0+offsetY);
    PixelSteg(0+offsetX,3+offsetY,1+offsetX,4+offsetY);
    PixelSteg(3+offsetX,0+offsetY,4+offsetX,1+offsetY);
    PixelSteg(3+offsetX,4+offsetY,4+offsetX,3+offsetY);
    PixelSteg(2+offsetX,0+offsetY,3+offsetX,1+offsetY);
    PixelSteg(3+offsetX,1+offsetY,4+offsetX,2+offsetY);
}
module R(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 2+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    PixelSteg(3+offsetX,2+offsetY,4+offsetX,1+offsetY);
    PixelSteg(3+offsetX,2+offsetY,4+offsetX,3+offsetY);
    PixelSteg(3+offsetX,4+offsetY,4+offsetX,3+offsetY);
}
module S(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(1+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    PixelSteg(0+offsetX,3+offsetY,1+offsetX,4+offsetY);
    PixelSteg(0+offsetX,3+offsetY,1+offsetX,2+offsetY);
    PixelSteg(3+offsetX,3+offsetY,4+offsetX,1+offsetY);
    PixelSteg(3+offsetX,0+offsetY,4+offsetX,1+offsetY);
}
module T(offsetX, offsetY)
{
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 1+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 3+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
}
module U(offsetX, offsetY)
{
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    PixelSteg(0+offsetX,1+offsetY,1+offsetX,0+offsetY);
    PixelSteg(3+offsetX,0+offsetY,4+offsetX,1+offsetY);
}
module V(offsetX, offsetY)
{
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(1+offsetX, 1+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    PixelSteg(1+offsetX,1+offsetY,2+offsetX,0+offsetY);
    PixelSteg(2+offsetX,0+offsetY,3+offsetX,1+offsetY);
    PixelSteg(0+offsetX,2+offsetY,1+offsetX,1+offsetY);
    PixelSteg(4+offsetX,2+offsetY,3+offsetX,1+offsetY);
}
module W(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(0+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 2+offsetY);
    3dPixel(0+offsetX, 3+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 1+offsetY);
    3dPixel(4+offsetX, 2+offsetY);
    3dPixel(4+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 1+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 1+offsetY);
    PixelSteg(1+offsetX,1+offsetY,2+offsetX,2+offsetY);
    PixelSteg(2+offsetX,2+offsetY,3+offsetX,1+offsetY);
}
module X(offsetX, offsetY)
{
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(1+offsetX, 1+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 3+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 1+offsetY);
    PixelSteg(1+offsetX,3+offsetY,2+offsetX,2+offsetY);
    PixelSteg(2+offsetX,2+offsetY,3+offsetX,1+offsetY);
    PixelSteg(0+offsetX,4+offsetY,1+offsetX,3+offsetY);
    PixelSteg(3+offsetX,1+offsetY,4+offsetX,0+offsetY);
    PixelSteg(0+offsetX,0+offsetY,1+offsetX,1+offsetY);
    PixelSteg(1+offsetX,1+offsetY,2+offsetX,2+offsetY);
    PixelSteg(2+offsetX,2+offsetY,3+offsetX,3+offsetY);
    PixelSteg(3+offsetX,3+offsetY,4+offsetX,4+offsetY);
}
module Y(offsetX, offsetY)
{
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 3+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 3+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(2+offsetX, 1+offsetY);
    PixelSteg(1+offsetX,3+offsetY,2+offsetX,2+offsetY);
    PixelSteg(0+offsetX,4+offsetY,1+offsetX,3+offsetY);
    PixelSteg(2+offsetX,2+offsetY,3+offsetX,3+offsetY);
    PixelSteg(3+offsetX,3+offsetY,4+offsetX,4+offsetY);
}
module Z(offsetX, offsetY)
{
    3dPixel(2+offsetX, 0+offsetY);
    3dPixel(1+offsetX, 1+offsetY);
    3dPixel(2+offsetX, 2+offsetY);
    3dPixel(3+offsetX, 3+offsetY);
    3dPixel(2+offsetX, 4+offsetY);
    3dPixel(0+offsetX, 4+offsetY);
    3dPixel(1+offsetX, 4+offsetY);
    3dPixel(3+offsetX, 4+offsetY);
    3dPixel(4+offsetX, 4+offsetY);
    3dPixel(0+offsetX, 0+offsetY);
    3dPixel(1+offsetX, 0+offsetY);
    3dPixel(3+offsetX, 0+offsetY);
    3dPixel(4+offsetX, 0+offsetY);
    PixelSteg(1+offsetX,1+offsetY,2+offsetX,2+offsetY);
    PixelSteg(2+offsetX,2+offsetY,3+offsetX,3+offsetY);
}
module LetterSteg(x1, y1, x2, y2, offset)
{
    PixelSteg(x1+offset*(letterSize+letterGap),y1-(letterSize+wordOffset),x2+(offset+1)*(letterSize+letterGap),y2-(letterSize+wordOffset),0);
}
module NameThomas()
{
    T(0*(letterSize+letterGap),-(letterSize+wordOffset));
    H(1*(letterSize+letterGap),-(letterSize+wordOffset));
    O(2*(letterSize+letterGap),-(letterSize+wordOffset));
    M(3*(letterSize+letterGap),-(letterSize+wordOffset));
    A(4*(letterSize+letterGap),-(letterSize+wordOffset));
    S(5*(letterSize+letterGap),-(letterSize+wordOffset));
    //T-H
    LetterSteg(4, 4, 0, 4, 0);
    LetterSteg(2, 0, 0, 0, 0);
    //H-O
    LetterSteg(4, 3, 0, 3, 1);
    LetterSteg(4, 1, 0, 1, 1);
    //O-M
    LetterSteg(4, 3, 0, 3, 2);
    LetterSteg(4, 1, 0, 1, 2);
    //M-A
    LetterSteg(4, 3, 0, 3, 3);
    LetterSteg(4, 1, 0, 1, 3);
    //A-S
    LetterSteg(4, 3, 0, 3, 4);
    LetterSteg(4, 0, 0, 0, 4);
}
module NameLars()
{
    L(0*(letterSize+letterGap),-(letterSize+wordOffset));
    A(1*(letterSize+letterGap),-(letterSize+wordOffset));
    R(2*(letterSize+letterGap),-(letterSize+wordOffset));
    S(3*(letterSize+letterGap),-(letterSize+wordOffset));
    //L-A
    PixelSteg(0+0*(letterSize+letterGap),3-(letterSize+wordOffset),0+1*(letterSize+letterGap),3-(letterSize+wordOffset),0);
    PixelSteg(4+0*(letterSize+letterGap),0-(letterSize+wordOffset),0+1*(letterSize+letterGap),0-(letterSize+wordOffset),0);
    //A-R
    PixelSteg(4+1*(letterSize+letterGap),3-(letterSize+wordOffset),0+2*(letterSize+letterGap),3-(letterSize+wordOffset),0);
    PixelSteg(4+1*(letterSize+letterGap),0-(letterSize+wordOffset),0+2*(letterSize+letterGap),0-(letterSize+wordOffset),0);
    //R-S
    PixelSteg(4+2*(letterSize+letterGap),3-(letterSize+wordOffset),0+3*(letterSize+letterGap),3-(letterSize+wordOffset),0);
    PixelSteg(4+2*(letterSize+letterGap),0-(letterSize+wordOffset),0+3*(letterSize+letterGap),0-(letterSize+wordOffset),0);
}
module NameDaniel()
{
    D(0*(letterSize+letterGap),-(letterSize+wordOffset));
    A(1*(letterSize+letterGap),-(letterSize+wordOffset));
    N(2*(letterSize+letterGap),-(letterSize+wordOffset));
    I(3*(letterSize+letterGap),-(letterSize+wordOffset));
    E(4*(letterSize+letterGap),-(letterSize+wordOffset));
    L(5*(letterSize+letterGap),-(letterSize+wordOffset));
    //D-A
    PixelSteg(4+0*(letterSize+letterGap),3-(letterSize+wordOffset),0+1*(letterSize+letterGap),3-(letterSize+wordOffset),0);
    PixelSteg(4+0*(letterSize+letterGap),1-(letterSize+wordOffset),0+1*(letterSize+letterGap),1-(letterSize+wordOffset),0);
    //A-N
    PixelSteg(4+1*(letterSize+letterGap),3-(letterSize+wordOffset),0+2*(letterSize+letterGap),3-(letterSize+wordOffset),0);
    PixelSteg(4+1*(letterSize+letterGap),1-(letterSize+wordOffset),0+2*(letterSize+letterGap),1-(letterSize+wordOffset),0);
    //N-I
    PixelSteg(4+2*(letterSize+letterGap),4-(letterSize+wordOffset),0+3*(letterSize+letterGap),4-(letterSize+wordOffset),0);
    PixelSteg(4+2*(letterSize+letterGap),0-(letterSize+wordOffset),0+3*(letterSize+letterGap),0-(letterSize+wordOffset),0);
    //I-E
    PixelSteg(4+3*(letterSize+letterGap),4-(letterSize+wordOffset),0+4*(letterSize+letterGap),4-(letterSize+wordOffset),0);
    PixelSteg(4+3*(letterSize+letterGap),0-(letterSize+wordOffset),0+4*(letterSize+letterGap),0-(letterSize+wordOffset),0);
    //E-L
    PixelSteg(4+4*(letterSize+letterGap),4-(letterSize+wordOffset),0+5*(letterSize+letterGap),4-(letterSize+wordOffset),0);
    PixelSteg(4+4*(letterSize+letterGap),0-(letterSize+wordOffset),0+5*(letterSize+letterGap),0-(letterSize+wordOffset),0);
}
module NameTobi()
{
    T(0*(letterSize+letterGap),-(letterSize+wordOffset));
    O(1*(letterSize+letterGap),-(letterSize+wordOffset));
    B(2*(letterSize+letterGap),-(letterSize+wordOffset));
    I(3*(letterSize+letterGap),-(letterSize+wordOffset));
    //T-O
    PixelSteg(4+0*(letterSize+letterGap),4-(letterSize+wordOffset),1+1*(letterSize+letterGap),4-(letterSize+wordOffset),0);
    PixelSteg(2+0*(letterSize+letterGap),0-(letterSize+wordOffset),1+1*(letterSize+letterGap),0-(letterSize+wordOffset),0);
    //O-B
    PixelSteg(4+1*(letterSize+letterGap),3-(letterSize+wordOffset),0+2*(letterSize+letterGap),3-(letterSize+wordOffset),0);
    PixelSteg(4+1*(letterSize+letterGap),1-(letterSize+wordOffset),0+2*(letterSize+letterGap),1-(letterSize+wordOffset),0);
    //B-I
    PixelSteg(3+2*(letterSize+letterGap),4-(letterSize+wordOffset),0+3*(letterSize+letterGap),4-(letterSize+wordOffset),0);
    PixelSteg(3+2*(letterSize+letterGap),0-(letterSize+wordOffset),0+3*(letterSize+letterGap),0-(letterSize+wordOffset),0);
}
module NameKaren()
{
    K(0*(letterSize+letterGap),-(letterSize+wordOffset));
    A(1*(letterSize+letterGap),-(letterSize+wordOffset));
    R(2*(letterSize+letterGap),-(letterSize+wordOffset));
    E(3*(letterSize+letterGap),-(letterSize+wordOffset));
    N(4*(letterSize+letterGap),-(letterSize+wordOffset));
    //K-A
    PixelSteg(4+0*(letterSize+letterGap),4-(letterSize+wordOffset),1+1*(letterSize+letterGap),4-(letterSize+wordOffset),0);
    PixelSteg(4+0*(letterSize+letterGap),0-(letterSize+wordOffset),0+1*(letterSize+letterGap),0-(letterSize+wordOffset),0);
    //A-R
    PixelSteg(3+1*(letterSize+letterGap),4-(letterSize+wordOffset),0+2*(letterSize+letterGap),4-(letterSize+wordOffset),0);
    PixelSteg(4+1*(letterSize+letterGap),0-(letterSize+wordOffset),0+2*(letterSize+letterGap),0-(letterSize+wordOffset),0);
    //R-E
    PixelSteg(3+2*(letterSize+letterGap),4-(letterSize+wordOffset),0+3*(letterSize+letterGap),4-(letterSize+wordOffset),0);
    PixelSteg(4+2*(letterSize+letterGap),0-(letterSize+wordOffset),0+3*(letterSize+letterGap),0-(letterSize+wordOffset),0);
    //E-N
    PixelSteg(4+3*(letterSize+letterGap),4-(letterSize+wordOffset),0+4*(letterSize+letterGap),4-(letterSize+wordOffset),0);
    PixelSteg(4+3*(letterSize+letterGap),0-(letterSize+wordOffset),0+4*(letterSize+letterGap),0-(letterSize+wordOffset),0);
}
module NameJens()
{
    J(0*(letterSize+letterGap),-(letterSize+wordOffset));
    E(1*(letterSize+letterGap),-(letterSize+wordOffset));
    N(2*(letterSize+letterGap),-(letterSize+wordOffset));
    S(3*(letterSize+letterGap),-(letterSize+wordOffset));
    //J-E
    LetterSteg(4, 4, 0, 4, 0);
    LetterSteg(2, 0, 0, 0, 0);
    //E-N
    LetterSteg(4, 4, 0, 4, 1);
    LetterSteg(4, 0, 0, 0, 1);
    //N-S
    LetterSteg(4, 3, 0, 3, 2);
    LetterSteg(4, 0, 0, 0, 2);
}
module NameSteve()
{
    S(0*(letterSize+letterGap),-(letterSize+wordOffset));
    T(1*(letterSize+letterGap),-(letterSize+wordOffset));
    E(2*(letterSize+letterGap),-(letterSize+wordOffset));
    V(3*(letterSize+letterGap),-(letterSize+wordOffset));
    E(4*(letterSize+letterGap),-(letterSize+wordOffset));
    //S-T
    LetterSteg(4, 4, 0, 4, 0);
    LetterSteg(2, 0, 2, 0, 0);
    //T-E
    LetterSteg(4, 4, 0, 4, 1);
    LetterSteg(2, 0, 0, 0, 1);
    //E-V
    LetterSteg(4, 4, 2, 4, 2);
    LetterSteg(4, 0, 2, 0, 2);
    //V-E
    LetterSteg(2, 4, 0, 4, 3);
    LetterSteg(2, 0, 0, 0, 3);
}
module NameAndree()
{
    A(0*(letterSize+letterGap),-(letterSize+wordOffset));
    N(1*(letterSize+letterGap),-(letterSize+wordOffset));
    D(2*(letterSize+letterGap),-(letterSize+wordOffset));
    R(3*(letterSize+letterGap),-(letterSize+wordOffset));
    E(4*(letterSize+letterGap),-(letterSize+wordOffset));
    E(5*(letterSize+letterGap),-(letterSize+wordOffset));
    //A-N
    LetterSteg(3, 4, 2, 4, 0);
    LetterSteg(4, 0, 0, 0, 0);
    //N-D
    LetterSteg(2, 4, 0, 4, 1);
    LetterSteg(4, 0, 0, 0, 1);
    //D-R
    LetterSteg(3, 4, 0, 4, 2);
    LetterSteg(3, 0, 0, 0, 2);
    //R-E
    LetterSteg(3, 4, 0, 4, 3);
    LetterSteg(4, 0, 0, 0, 3);
    //E-E
    LetterSteg(4, 4, 0, 4, 4);
    LetterSteg(4, 0, 0, 0, 4);
}
module NameStefan()
{
    S(0*(letterSize+letterGap),-(letterSize+wordOffset));
    T(1*(letterSize+letterGap),-(letterSize+wordOffset));
    E(2*(letterSize+letterGap),-(letterSize+wordOffset));
    F(3*(letterSize+letterGap),-(letterSize+wordOffset));
    A(4*(letterSize+letterGap),-(letterSize+wordOffset));
    N(5*(letterSize+letterGap),-(letterSize+wordOffset));
    //S-T
    LetterSteg(4, 4, 0, 4, 0);
    LetterSteg(3, 0, 2, 0, 0);
    //T-E
    LetterSteg(4, 4, 0, 4, 1);
    LetterSteg(2, 0, 0, 0, 1);
    //E-F
    LetterSteg(4, 4, 0, 4, 2);
    LetterSteg(4, 0, 0, 0, 2);
    //F-A
    LetterSteg(4, 4, 1, 4, 3);
    LetterSteg(0, 0, 0, 0, 3);
    //A-N
    LetterSteg(3, 4, 0, 4, 4);
    LetterSteg(4, 0, 0, 0, 4);
}

module Buchstabentest()
{
    A(0*(letterSize+letterGap),-(letterSize+wordOffset));
    B(1*(letterSize+letterGap),-(letterSize+wordOffset));
    C(2*(letterSize+letterGap),-(letterSize+wordOffset));
    D(3*(letterSize+letterGap),-(letterSize+wordOffset));
    E(4*(letterSize+letterGap),-(letterSize+wordOffset));
    F(5*(letterSize+letterGap),-(letterSize+wordOffset));
    G(6*(letterSize+letterGap),-(letterSize+wordOffset));
    H(7*(letterSize+letterGap),-(letterSize+wordOffset));
    I(8*(letterSize+letterGap),-(letterSize+wordOffset));
    J(9*(letterSize+letterGap),-(letterSize+wordOffset));
    K(10*(letterSize+letterGap),-(letterSize+wordOffset));
    L(11*(letterSize+letterGap),-(letterSize+wordOffset));
    M(12*(letterSize+letterGap),-(letterSize+wordOffset));
    N(13*(letterSize+letterGap),-(letterSize+wordOffset));
    O(14*(letterSize+letterGap),-(letterSize+wordOffset));
    P(15*(letterSize+letterGap),-(letterSize+wordOffset));
    Q(16*(letterSize+letterGap),-(letterSize+wordOffset));
    R(17*(letterSize+letterGap),-(letterSize+wordOffset));
    S(18*(letterSize+letterGap),-(letterSize+wordOffset));
    T(19*(letterSize+letterGap),-(letterSize+wordOffset));
    U(20*(letterSize+letterGap),-(letterSize+wordOffset));
    V(21*(letterSize+letterGap),-(letterSize+wordOffset));
    W(22*(letterSize+letterGap),-(letterSize+wordOffset));
    X(23*(letterSize+letterGap),-(letterSize+wordOffset));
    Y(24*(letterSize+letterGap),-(letterSize+wordOffset));
    Z(25*(letterSize+letterGap),-(letterSize+wordOffset));
}

//Logo mit Loch f?r Magnet
//difference()
//{
//    hshbLogo();
//    MagnetHole(8,6);
//}

//Namen setzen
//Buchstabenanzahl: x-Offset
//4: 0.1
//6: -0.35
//translate(v=[0.1*(xsize*letterSize+letterGap),0,0])
//    scale([0.75,0.75,1])
//        NameThomas();
//translate(v=[-0.2*(xsize*letterSize+letterGap),0,0])
//    scale([0.75,0.75,1])
//        NameKaren();
//translate(v=[0.1*(xsize*letterSize+letterGap),0,0])
//    scale([0.75,0.75,1])
//        NameJens();
//translate(v=[-0.2*(xsize*letterSize+letterGap),0,0])
//    scale([0.75,0.75,1])
//        NameSteve();
//translate(v=[-0.5*(xsize*letterSize+letterGap),0,0])
//    scale([0.75,0.75,1])
//        NameAndree();
//translate(v=[-0.5*(xsize*letterSize+letterGap),0,0])
//    scale([0.75,0.75,1])
//        NameStefan();

//Namen mit Logo verbinden
//translate([-1.0*xsize,0,0])
//    PixelSteg(5,0,5,-1,90);
//translate([-0.5*xsize,0,0])
//    PixelSteg(12,0,13,-1,0);

module Herzlich()
{
    H(0*(letterSize+letterGap),-(letterSize+wordOffset));
    E(1*(letterSize+letterGap),-(letterSize+wordOffset));
    R(2*(letterSize+letterGap),-(letterSize+wordOffset));
    Z(3*(letterSize+letterGap),-(letterSize+wordOffset));
    L(4*(letterSize+letterGap),-(letterSize+wordOffset));
    I(5*(letterSize+letterGap),-(letterSize+wordOffset));
    C(6*(letterSize+letterGap),-(letterSize+wordOffset));
    H(7*(letterSize+letterGap),-(letterSize+wordOffset));

    LetterSteg(0, 4, 2, 4, 0);
    LetterSteg(0, 0, 2, 0, 0);
    LetterSteg(2, 4, 2, 4, 1);
    LetterSteg(2, 0, 2, 0, 1);
    LetterSteg(2, 4, 2, 4, 2);
    LetterSteg(2, 0, 2, 0, 2);
    LetterSteg(2, 4, 2, 4, 3);
    LetterSteg(2, 0, 2, 0, 3);
    LetterSteg(2, 4, 2, 4, 4);
    LetterSteg(2, 0, 2, 0, 4);
    LetterSteg(2, 4, 2, 4, 5);
    LetterSteg(2, 0, 2, 0, 5);
    LetterSteg(2, 4, 4, 4, 6);
    LetterSteg(2, 0, 4, 0, 6);
}

module Willkommen()
{
    W(0*(letterSize+letterGap),-(letterSize+wordOffset));
    I(1*(letterSize+letterGap),-(letterSize+wordOffset));
    L(2*(letterSize+letterGap),-(letterSize+wordOffset));
    L(3*(letterSize+letterGap),-(letterSize+wordOffset));
    K(4*(letterSize+letterGap),-(letterSize+wordOffset));
    O(5*(letterSize+letterGap),-(letterSize+wordOffset));
    M(6*(letterSize+letterGap),-(letterSize+wordOffset));
    M(7*(letterSize+letterGap),-(letterSize+wordOffset));
    E(8*(letterSize+letterGap),-(letterSize+wordOffset));
    N(9*(letterSize+letterGap),-(letterSize+wordOffset));

    LetterSteg(0, 4, 2, 4, 0);
    LetterSteg(0, 0, 2, 0, 0);
    LetterSteg(2, 4, 2, 4, 1);
    LetterSteg(2, 0, 2, 0, 1);
    LetterSteg(2, 4, 2, 4, 2);
    LetterSteg(2, 0, 2, 0, 2);
    LetterSteg(2, 4, 2, 4, 3);
    LetterSteg(2, 0, 2, 0, 3);
    LetterSteg(2, 4, 2, 4, 4);
    LetterSteg(2, 0, 2, 0, 4);
    LetterSteg(2, 4, 2, 4, 5);
    LetterSteg(2, 0, 2, 0, 5);
    LetterSteg(2, 4, 2, 4, 6);
    LetterSteg(2, 0, 2, 0, 6);
    LetterSteg(2, 4, 2, 4, 7);
    LetterSteg(2, 0, 2, 0, 7);
    LetterSteg(2, 4, 4, 4, 8);
    LetterSteg(2, 0, 4, 0, 8);
}

module HerzlichWillkommen()
{
    Herzlich();

translate([-(letterSize*xsize+2*letterGap),-(letterSize*ysize+2*letterGap),0])
    Willkommen();
}

//HerzlichWillkommen();

module Bin()
{
    B(0*(letterSize+letterGap),-(letterSize+wordOffset));
    I(1*(letterSize+letterGap),-(letterSize+wordOffset));
    N(2*(letterSize+letterGap),-(letterSize+wordOffset));

    LetterSteg(0, 4, 2, 4, 0);
    LetterSteg(0, 0, 2, 0, 0);
    LetterSteg(2, 4, 4, 4, 1);
    LetterSteg(2, 0, 4, 0, 1);
}

module Gleich()
{
    G(0*(letterSize+letterGap),-(letterSize+wordOffset));
    L(1*(letterSize+letterGap),-(letterSize+wordOffset));
    E(2*(letterSize+letterGap),-(letterSize+wordOffset));
    I(3*(letterSize+letterGap),-(letterSize+wordOffset));
    C(4*(letterSize+letterGap),-(letterSize+wordOffset));
    H(5*(letterSize+letterGap),-(letterSize+wordOffset));

    LetterSteg(0, 4, 2, 4, 0);
    LetterSteg(0, 0, 2, 0, 0);
    LetterSteg(2, 4, 2, 4, 1);
    LetterSteg(2, 0, 2, 0, 1);
    LetterSteg(2, 4, 2, 4, 2);
    LetterSteg(2, 0, 2, 0, 2);
    LetterSteg(2, 4, 2, 4, 3);
    LetterSteg(2, 0, 2, 0, 3);
    LetterSteg(2, 4, 4, 4, 4);
    LetterSteg(2, 0, 4, 0, 4);
}

module Zurueck()
{
    Z(0*(letterSize+letterGap),-(letterSize+wordOffset));
    U(1*(letterSize+letterGap),-(letterSize+wordOffset));
    R(2*(letterSize+letterGap),-(letterSize+wordOffset));
    U(3*(letterSize+letterGap),-(letterSize+wordOffset));
    E(4*(letterSize+letterGap),-(letterSize+wordOffset));
    C(5*(letterSize+letterGap),-(letterSize+wordOffset));
    K(6*(letterSize+letterGap),-(letterSize+wordOffset));

    LetterSteg(0, 4, 2, 4, 0);
    LetterSteg(0, 0, 2, 0, 0);
    LetterSteg(2, 4, 2, 4, 1);
    LetterSteg(2, 0, 2, 0, 1);
    LetterSteg(2, 4, 2, 4, 2);
    LetterSteg(2, 0, 2, 0, 2);
    LetterSteg(2, 4, 2, 4, 3);
    LetterSteg(2, 0, 2, 0, 3);
    LetterSteg(2, 4, 2, 4, 4);
    LetterSteg(2, 0, 2, 0, 4);
    LetterSteg(2, 4, 4, 4, 5);
    LetterSteg(2, 0, 4, 0, 5);
}

module BinGleichZurueck()
{
    Bin();
    translate([3*(letterSize*ysize+letterGap)+7*letterGap,0,0])
        Gleich();
    translate([(letterSize*xsize+2*letterGap),-(letterSize*ysize+2*letterGap),0])
        Zurueck();
}

//BinGleichZurueck();

module Wir()
{
    W(0*(letterSize+letterGap),-(letterSize+wordOffset));
    I(1*(letterSize+letterGap),-(letterSize+wordOffset));
    R(2*(letterSize+letterGap),-(letterSize+wordOffset));

    LetterSteg(0, 4, 2, 4, 0);
    LetterSteg(0, 0, 2, 0, 0);
    LetterSteg(2, 4, 4, 4, 1);
    LetterSteg(2, 0, 4, 0, 1);
}

module Sind()
{
    S(0*(letterSize+letterGap),-(letterSize+wordOffset));
    I(1*(letterSize+letterGap),-(letterSize+wordOffset));
    N(2*(letterSize+letterGap),-(letterSize+wordOffset));
    D(3*(letterSize+letterGap),-(letterSize+wordOffset));

    LetterSteg(0, 4, 2, 4, 0);
    LetterSteg(0, 0, 2, 0, 0);
    LetterSteg(2, 4, 2, 4, 1);
    LetterSteg(2, 0, 2, 0, 1);
    LetterSteg(2, 4, 4, 4, 2);
    LetterSteg(2, 0, 4, 0, 2);
}

module Gegenueber()
{
    G(0*(letterSize+letterGap),-(letterSize+wordOffset));
    E(1*(letterSize+letterGap),-(letterSize+wordOffset));
    G(2*(letterSize+letterGap),-(letterSize+wordOffset));
    E(3*(letterSize+letterGap),-(letterSize+wordOffset));
    N(4*(letterSize+letterGap),-(letterSize+wordOffset));
    U(5*(letterSize+letterGap),-(letterSize+wordOffset));
    E(6*(letterSize+letterGap),-(letterSize+wordOffset));
    B(7*(letterSize+letterGap),-(letterSize+wordOffset));
    E(8*(letterSize+letterGap),-(letterSize+wordOffset));
    R(9*(letterSize+letterGap),-(letterSize+wordOffset));

    LetterSteg(0, 4, 2, 4, 0);
    LetterSteg(0, 0, 2, 0, 0);
    LetterSteg(2, 4, 2, 4, 1);
    LetterSteg(2, 0, 2, 0, 1);
    LetterSteg(2, 4, 2, 4, 2);
    LetterSteg(2, 0, 2, 0, 2);
    LetterSteg(2, 4, 2, 4, 3);
    LetterSteg(2, 0, 2, 0, 3);
    LetterSteg(2, 4, 2, 4, 4);
    LetterSteg(2, 0, 2, 0, 4);
    LetterSteg(2, 4, 2, 4, 5);
    LetterSteg(2, 0, 2, 0, 5);
    LetterSteg(2, 4, 2, 4, 6);
    LetterSteg(2, 0, 2, 0, 6);
    LetterSteg(2, 4, 2, 4, 7);
    LetterSteg(2, 0, 2, 0, 7);
    LetterSteg(2, 4, 4, 4, 8);
    LetterSteg(2, 0, 4, 0, 8);
}

module WirSindGegenueber()
{
    Wir();
    translate([3*(letterSize*ysize+letterGap)+7*letterGap,0,0])
        Sind();
    translate([-1.5*(letterSize*xsize+2*letterGap),-(letterSize*ysize+2*letterGap),0])
        Gegenueber();
}

//WirSindGegenueber();

module Spendenbox()
{
    S(0*(letterSize+letterGap),-(letterSize+wordOffset));
    P(1*(letterSize+letterGap),-(letterSize+wordOffset));
    E(2*(letterSize+letterGap),-(letterSize+wordOffset));
    N(3*(letterSize+letterGap),-(letterSize+wordOffset));
    D(4*(letterSize+letterGap),-(letterSize+wordOffset));
    E(5*(letterSize+letterGap),-(letterSize+wordOffset));
    N(6*(letterSize+letterGap),-(letterSize+wordOffset));
    B(7*(letterSize+letterGap),-(letterSize+wordOffset));
    O(8*(letterSize+letterGap),-(letterSize+wordOffset));
    X(9*(letterSize+letterGap),-(letterSize+wordOffset));
    
    LetterSteg(2, 4, 2, 4, 0);
    LetterSteg(2, 0, 2, 0, 0);
    LetterSteg(2, 4, 2, 4, 1);
    LetterSteg(2, 0, 2, 0, 1);
    LetterSteg(2, 4, 2, 4, 2);
    LetterSteg(2, 0, 2, 0, 2);
    LetterSteg(2, 4, 2, 4, 3);
    LetterSteg(2, 0, 2, 0, 3);
    LetterSteg(2, 4, 2, 4, 4);
    LetterSteg(2, 0, 2, 0, 4);
    LetterSteg(2, 4, 2, 4, 5);
    LetterSteg(2, 0, 2, 0, 5);
    LetterSteg(2, 4, 2, 4, 6);
    LetterSteg(2, 0, 2, 0, 6);
    LetterSteg(2, 4, 2, 4, 7);
    LetterSteg(2, 0, 2, 0, 7);
    LetterSteg(2, 4, 4, 4, 8);
    LetterSteg(2, 0, 4, 0, 8);
}

//Spendenbox();

module Kasse()
{
    K(0*(letterSize+letterGap),-(letterSize+wordOffset));
    A(1*(letterSize+letterGap),-(letterSize+wordOffset));
    S(2*(letterSize+letterGap),-(letterSize+wordOffset));
    S(3*(letterSize+letterGap),-(letterSize+wordOffset));
    E(4*(letterSize+letterGap),-(letterSize+wordOffset));

    //LetterSteg(4, 4, 2, 4, 0);
    LetterSteg(0, 0, 2, 0, 0);
    //LetterSteg(2, 4, 2, 4, 1);
    LetterSteg(2, 0, 2, 0, 1);
    //LetterSteg(2, 4, 2, 4, 2);
    LetterSteg(2, 0, 2, 0, 2);
    //LetterSteg(2, 4, 2, 4, 3);
    LetterSteg(2, 0, 2, 0, 3);
}

translate([letterSize*5.8,130+letterSize*4-wordOffset*2,0])
    Kasse();
translate([letterSize*5.8,130,0])
    cube([5*5*xsize+4*4*letterGap,ysize,zsize/5]);
difference()
{
    cube([150,130,zsize]);
    translate([10,10,-0.1])
        cube([130,110,zsize+0.2]);
}





