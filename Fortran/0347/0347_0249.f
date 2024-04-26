      program main
      dimension  a(20,20),b(20,20),c(20,20),d(20,20)
      data a,b,c,d/400*1.,400*2.,400*3.,400*4./,nn/18/
      do 10 j=2,nn
       do 10 i=2,nn
         a(i,j)=b(i,j)+c(i+1,j)
         d(i,j)=b(i-1,j)*a(i,j+1)
         c(i,j)=a(i+1,j)/d(i+1,j)
         b(i,j)=c(i-1,j)+d(i-1,j)
 10   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
