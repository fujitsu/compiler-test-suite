      program main
      real*4  a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./
      do 10 j=1,10
       n=1
       do 10 i=1,20
        a(i,j)=a(i,j)+b(n,j+1)+c(j*2,i)
        n=n+1
 10   continue
      do 20 j=1,10
       do 20 i=1,10
       a(j,i*2)=b(j*2-1,i*2-1)+c(i,j)
       b(j,i*2)=a(j+1,i*2-1)*c(i,j)
 20   continue
      write(6,*) a
      write(6,*) b
      stop
      end
