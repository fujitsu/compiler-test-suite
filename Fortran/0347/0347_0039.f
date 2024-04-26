      program main
      real*8   a(11),b(10),c(0:9)
      data a/11*1.0/
      data b/10*1.0/
      data c/10*1.0/
      j=0
      do 10 i=1,10
       write(6,*) i
  10  continue
      write(6,*) i
      do 20 i=1,10
       write(6,*) j
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
      stop
      end
