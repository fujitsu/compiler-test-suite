      program main
      real*4  a(20,20),b(20,20),c(20)
      integer*4  il(20)
      data  a,b/400*1.,400*2./,c/20*3./,nn/10/
      do 10 i=1,20
       il(i) = 20 - i + 1
  10  continue
      do 20 i=1,nn
       do 20 j=1,10
        a(i,j)=b(i,j)+c(j)
        b(i,j)=a(i,i)*2.-c(j)
        c(il(j)) = a(i,j)*2.
        call  sub(c(il(j)))
  20  continue
      do 30 i1=1,nn
       do 30 i2=1,nn
        a(i1,i2)=b(i1,i2)*c(il(i2))
        c(i2) = b(i1,i2)*2.0
        xx = a(i1,il(i2))*c(il(i2))
        call  sub1(xx,c(i2))
        b(i1,i2) = c(i2)+xx
  30  continue
      write(6,*) ((a(i,j),i=1,10),j=1,10)
      write(6,*) ((b(i,j),i=1,10),j=1,10)
      write(6,*) c
      stop
      end
      subroutine  sub(xx)
      xx = xx + 1.
      return
      end
      subroutine  sub1(xx,zz)
      xx = xx + 1.
      zz = zz + 1.
      return
      end
