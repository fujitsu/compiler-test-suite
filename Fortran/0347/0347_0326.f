      real*4  a(20,20),b(20,20),c(20,20)
      data a,b,c/400*1.,400*2.,400*3./
      data nn/18/

      do 90 j=1,nn
       do 10 i=1,nn
         rx = a(i,j)+b(i,j)
         rx = rx + c(i,j)
         a(i,j)= sqrt(rx)
         call sub(a(i,j))
         b(i,j)=b(i,j)+float(i)
  10   continue
       do 20 i=2,18
         b(i,j)=sqrt(b(j,1))+c(i,j)
         c(i,j)=sqrt(c(1,1))+a(i,j)
         write(6,*) c(i,j)
  20   continue
  90  continue
      write(6,*) ((a(i,j),i=1,10),j=1,10)
      write(6,*) ((b(i,j),i=1,10),j=1,10)
      stop
      end
      subroutine sub(rx)
      rx=rx+1
      return
      end
