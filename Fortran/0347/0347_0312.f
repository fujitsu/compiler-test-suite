      real*4 a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./
      data  nn/19/
      do 10 i=1,nn-1
       do 10 j=1,nn-1
         a(i,j)=a(i,j)+b(i,j)*c(i,j)
 10   continue
      call  sub(a,b,c,nn)
      write(6,*) a
      write(6,*) b
      stop
      end
      subroutine sub(a,b,c,nn)
      real*4 a(nn-1,nn),b(nn-1,nn),c(nn-1,nn)
      do 10 i=1,nn-1
       c(i,1)=a(i,i)
       do 10 j=1,nn
         b(i,j)=a(i,j)+c(i,j)
 10   continue
      return
      end
