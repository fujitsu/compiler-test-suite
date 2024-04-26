      real*4  a(20,20),b(20,20),c(20)
      data  a,b,c/400*1.,400*2.,20*3./
      data  n/20/,n1/1/,n2/2/
      call  sub(a,b,c,n,n1,n2,n)
      write(6,*) ' a= ',((a(i,j),i=1,10),j=1,10)
      stop
      end
      subroutine sub(a,b,c,nn,n1,n2,n3)
      real*4  a(nn,nn),b(n3,nn),c(nn)
      do 10 i=2,nn/2
       n=1
       do 10 j=2,nn/2
         a(i,n+n1*n2-n1)=a(i,n+n1*n2-n1)+b(i,j+(n2-n1))*c(j)
         b(i,j+(n2-n1))=c(j)*2.+b(i+10,j)
         n=n+1
  10  continue
      return
      end
