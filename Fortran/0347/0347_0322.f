      common /vsu1/ a(20,20),b(20,20),c(20,20)
      dimension  wa(20,20),wb(20,20),wc(20,20)
      data  nn/18/
      do 10 i=1,20
       do 10 j=1,20
         a(i,j)=float(i)
         b(i,j)=float(j)
         c(i,j)=float(i-j)
 10   continue

      do 20 j=1,nn
       do 20 i=2,18
         a(i,j)=a(i-1,j)+b(i,j)
 20   continue

      do 30 i=1,nn
       do 30 j=1,i
         b(i,j)=b(i,j)+c(i,j)
 30   continue
      call sub(a,b,c,nn)
      do 40 j=1,20
       do 40 i=1,20
         wa(i,j)=a(i,j)
         wb(i,j)=b(i,j)
         wc(i,j)=c(i,j)
 40   continue
      write(6,*) wa
      write(6,*) wb
      write(6,*) wc
      stop
      end

      subroutine sub(a,b,c,nn)
      dimension a(nn,nn),b(nn,nn),c(nn,nn)
      do 10 j=2,nn
       do 10 i=2,nn
         c(i,j)=c(i-1,j)+b(i,j)*a(j,j)
  10  continue
      do 20 j=2,nn/2
       do 20 i=2,nn
         b(i,j)=c(i-1,2)+b(2,j)*a(j,3)
  20  continue
      return
      end
