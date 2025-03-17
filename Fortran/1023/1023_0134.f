       real a,b,l1,g1,v,w
       common a,b,l1,g1,v,w
       a=7.5
       b=6.6
       l1=300.0
       g1=7.8
       call pipe
       print *,"ok"
       end
 
       subroutine pipe
       real x,y,l,g,v,w
       common x,y,l,g,v,w
       v=3.14159/4.0*(x*x-y*y)*l
       w=v*g
       return
       end
