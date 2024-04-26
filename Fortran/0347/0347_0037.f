      program main
      real*8   a(10),b(10),c(0:9)
      j=10
      do 10 i=1,10
       a(i)=i
       b(j)=j
       j=j-1
       c(j)=j
  10  continue
      write(6,*) i
      write(6,*) a
      write(6,*) b
      write(6,*) c
      do 20 i=1,10
       c(j)=a(i)*b(i)
       j=j+1
       a(i)=c(j-1)
   20 continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
