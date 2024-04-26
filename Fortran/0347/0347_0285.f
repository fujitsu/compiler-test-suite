      real*4  a(20,20),b(20,20),c(20)
      data  a,b,c/400*1.,400*2.,20*3./
      data  n/20/,n1/1/,n2/2/
      call  sub(a,b,c,n,n1,n2,n)
      write(6,*) ' a= ',((a(i,j),i=1,10),j=1,10)
      write(6,*) ' b= ',((b(i,j),i=1,10),j=1,10)
      stop
      end
      subroutine sub(a,b,c,nn,n1,n2,n3)
      real*4  a(nn,nn),b(n3,nn),c(nn)
      do 10 i=2,nn/2
       do 10 j=2,nn/2,n1
         a(i,j+n1*n2-n1)=a(i,j+n1*n2-n1)+b(i,j+(n2-n1))*c(j)
         b(i,j+(n2-n1))=c(j)*2.+b(i+10,j)
  10  continue
      do 20 j=5,nn-2
       do 20 i=5,nn-2,n1
         a(i+n1*n2-n1,j)=a(i+n1*n2-n1,j)+b(i-(n2+n1),j)*c(j)
         b(i-(n2+n1),j)=c(j)*2.+b(j,i)
  20  continue
      return
      end
