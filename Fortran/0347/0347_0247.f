      program main
      dimension  a(20,20),b(20,20),c(20,20)
      data a,b,c/400*1.,400*2.,400*3./,nn/18/
      do 10 i=2,nn
       do 20 j=2,nn
         a(j,i)=b(j,nn-j+1)+c(j,i)
         b(j+1,nn-j+1)=c(j,i)*a(j,i)
 20    continue
       do 10 j=2,nn
         a(i,j)=b(i+1,j+1)+c(j,i)
         b(i,i)=b(i,i)+a(j,i)*c(j,i)
 10   continue
      write(6,*) a
      stop
      end
