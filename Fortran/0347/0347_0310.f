      real*4 a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./
      data  nn/18/

      do 10 i=2,nn
        a(i,i)=2.
        do 10 j=2,i
          a(i,j)=a(j,j)+b(i,j)+c(i,j)
 10   continue
      do 20 i=2,nn
       do 30 j=2,nn
         b(j,i)=a(i,j)-c(j,nn+1)
 30    continue
       c(i,i+1)=b(i,i+1)+a(i,1)
 20   continue
      do 40 i=2,nn
        b(i,i)=c(i,i)
        do 40 j=2,nn
          c(i+1,j)=a(j,nn+1)*b(i+1,j)+b(5,i)
 40   continue
      do 60 i=2,nn
        do 50 j=2,nn
          c(2,j)=c(i,j)+a(j,nn+1)*b(i,j-1)
 50     continue
        a(i+1,i-1)=c(i,i-1)+b(i,i)
 60   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
