      real*4  a1(20),a2(20),a3(20),b(20,2),c(20,2)
      data  a1,a2,a3/60*1./,nn/20/
      data  b,c/40*2.,40*3./
      do 10 j=1,2
       do 10 i=1,nn
         a1(i)=a1(i)+b(i,j)*c(i,j)
 10   continue
      do 20 j=1,1
       do 20 i=1,nn
         a2(i)=a2(i)+b(i,j)*c(i,j)
         a2(i)=a2(i)+b(i,j+1)*c(i,j+1)
 20   continue
      do 50 j=1,1
       do 30 i=1,nn
         a3(i)=a3(i)+b(i,j)*c(i,j)
 30    continue
       do 40 i=1,nn
         a3(i)=a3(i)+b(i,j+1)*c(i,j+1)
 40    continue
 50   continue
      write(6,*) a1
      write(6,*) a2
      write(6,*) a3
      stop
      end
