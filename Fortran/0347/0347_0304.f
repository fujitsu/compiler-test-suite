      real*4 a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./
      data  nn/18/

      do 10 i=1,nn
        a(i,i)=2.
        do 10 j=1,nn
          a(i,j)=b(i,j)+c(i,j)
 10   continue
      write(6,*) a
      stop
      end
