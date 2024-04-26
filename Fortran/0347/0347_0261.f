      program main
      real*4 a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./,nn/16/
      do 10 i=2,nn
       do 10 j=2,nn
         s=float(j-i)
         a(i,j)=b(i,j)+c(i,j)
         call  sub(a(i,j),c(i,j))
         b(i,j)=(c(i,j)-a(j,i))*s
  10  continue
      do 20 i=2,nn
       nx=1
       do 20 j=2,nn
         rx=float(j)
         ry=a(i,j)*2.
         c(i,j)=a(i,j)+b(i,j)
         call  sub(c(1,j),b(i,j))
         if (rx.lt.ry) then
           nx=nx+1
           a(i,j)=a(i,j)+min1(rx,ry)
           b(j,1)=(c(i,j)-a(i-1,nx))*rx
         endif
  20  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
      subroutine  sub(x,y)
      z=y
      x=x+sqrt(y)
      y=y+sin(z)
      return
      end
