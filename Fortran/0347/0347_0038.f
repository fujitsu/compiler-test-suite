      program main
      real*8   a(11),b(10),c(0:9)
      j=10
      do 10 i=1,10
       j=j-1
  10  continue
      write(6,*) i
      write(6,*) j
      do 20 i=1,10
       j=j+1
       b(j)=j-1
       a(j+1)=11-j
       c(j-1)=a(j+1)*b(j)
       a(j)=c(j-1)
   20 continue
      write(6,*) i
      write(6,*) j
      write(6,*) a
      write(6,*) b
      write(6,*) c
      j=0
      do 30 i=1,10
       j=j+1
       b(j)=j-1
       a(j+1)=11-j
       c(j-1)=a(j+1)*b(j)
       a(j)=c(j-1)
   30 continue
      write(6,*) i
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
