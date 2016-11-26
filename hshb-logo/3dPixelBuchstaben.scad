use <3dPixel.scad>;

letterGap = 0.25;
letterSize = 5;
wordOffset = 0.25;


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

Buchstabentest();





