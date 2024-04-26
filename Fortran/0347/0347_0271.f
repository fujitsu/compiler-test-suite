      real*4  a(20,20),b(20,20),c(20,20)
      data   a,b,c/400*1.,400*2.,400*3./
      do 1 j=2,17
       do 1 i=2,19
         a(i,j)=b(i,j)+c(i,j)
 1    continue
      do 10 j=2,17
       do 10 i=2,19
         a(i,j)=b(i,j)+c(i,j)
         b(i+1,j+1)=a(i-1,j+1)*c(i,j)
 10   continue
      do 20 j=2,17,2
       do 20 i=2,19
         a(i,j)=b(i,j)+c(i,j)
         b(i+1,j+1)=a(i-1,j+1)*c(i,j)
         a(i,j+1)=b(i,j+1)+c(i,j+1)
         b(i+1,j+2)=a(i-1,j+2)*c(i,j+1)
 20   continue
       write(6,*) a,b,c
      stop
      end
