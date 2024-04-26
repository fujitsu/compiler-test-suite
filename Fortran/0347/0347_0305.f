      real*4 a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./
      data  nn/18/

      do 10 i=1,nn
        a(i+1,i)=2.
        do 10 j=1,nn
          a(i,j)=b(i,j)+c(i,j)
 10   continue
      do 20 i=2,nn
       do 30 j=2,nn
         b(i,j)=a(i,j)*c(i,j)
 30    continue
       c(i-1,i-1)=b(i,i)
 20   continue
      do 40 i=2,nn
        b(i,i)=c(i+1,i-1)
        do 50 j=2,nn
          c(i,j)=c(i,j)+a(j,i)*b(i,j)
 50     continue
        a(i,i-1)=c(i-1,i)
 40   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
