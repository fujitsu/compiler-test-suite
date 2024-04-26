      real*4 a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./
      data  nn/18/

      do 10 i=1,nn
        a(i,i)=2.
        do 10 j=1,nn
          a(i,i)=a(i,i)+b(i,j)+c(i,j)
 10   continue
      do 20 i=2,nn
       do 30 j=i,nn
         b(i,i)=a(i,j)-c(nn,j)
 30    continue
       c(i,i)=b(i,2)
 20   continue
      do 40 i=2,nn
        b(i,i)=c(i+1,i-1)
        do 50 j=i,nn
          c(nn,j)=c(i,i)+a(j,nn+1)*b(2,i+1)
 50     continue
        a(i,i+1)=c(i,i)
 40   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
