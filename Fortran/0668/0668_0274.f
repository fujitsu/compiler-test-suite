      program main
      real*8 a(1024),b(1024,1024),c(1024,1024),d(1024)
      real*8 e(1024)
      do 10 j=1,1024
      do 10 i=1,1024
      b(i,j)=1.0
 10   c(i,j)=2.0
      do 20 i=1,1024
      do 20 k=1,1024
      e(i)=c(i,1)+b(i,1)
      d(i)=e(1)
 20   a(i)=d(i)+b(i,k)
      write(6,*) a(1),a(512),a(513),a(1024)
      end
