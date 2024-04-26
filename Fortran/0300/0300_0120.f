      real*16 dx/1/
      call sub(dx)
      end

      subroutine  sub(dx)
      implicit  real*16(a-h)
      real*16 e2(10,10)/100*0/,b(10)/1,2,3,4,5,6,7,8,9,10/

      do 10 i=1,10
        dx = b(i)
         do 100 k=1,10
           e2(i,k) = dx
  100 continue
  10  continue
      write(6,1) e2
 1    format(10f7.2)
      end
