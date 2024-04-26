      program main
      real*4  a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./
      data  nn/4/
      do 30 j=1,10
       do 10 i=1,nn
        a(i*i,j)=b(nn,i+j)+c(i,i)
 10   continue
       do 20 i=1,10
        a(j,i*2)=c(j*2-1,i*2-1)+b(i,j)
        c(i,i*2)=a(j+1,j*2)*b(i,j)
 20    continue
 30   continue
      write(6,*) a
      write(6,*) c
      stop
      end
