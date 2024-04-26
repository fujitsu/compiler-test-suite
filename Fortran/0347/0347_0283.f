      real*4  a(20,20),b(20,20),c(20)
      data  a,b,c/400*1.,400*2.,20*3./
      data  n/20/,n1/1/,n2/2/
      call  sub(a,b,c,n,n1,n2)
      write(6,*) ' a= ',((a(i,j),i=1,10),j=1,10)
      stop
      end
      subroutine sub(a,b,c,nn,n1,n2)
      real*4  a(nn,nn),b(nn,nn),c(nn)
      do 10 i=1,nn-n2
       do 10 j=2,nn-n1
         a(i,j+n1*n2-n1)=a(i,j+n1*n2-n1)+b(i,j)*c(j)
  10  continue
      return
      end
