      program test01
      integer i1,i2,i3
      integer a,b,x,y,z
      i1=0
      i2=0
      i3=0
      a=1
      b=2
      x=3
      y=4
      z=5
      do i1=0,10,1
         y = y + z 
      end do
      do i1=0,10,1
         x = x - z
         z = x
         do i2=10,0,-1
            y = y + z 
         end do
         x = x - z
      end do
      print *,a,b,x,y,z
      end
      
