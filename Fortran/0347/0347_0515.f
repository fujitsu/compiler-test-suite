      program main
      real*8  a(100),sum,c(102)
      data    sum/0/
      call indata(a,c)
      do 10 i=1,100
       sum=sum+a(i)
       c(i+1)=c(i)+c(i+2)
   10 continue
      write(6,999) (a(i),i=1,100),sum
  999 format(1h ,10h-- a(*) --,/,(20(5(f10.5,2x)/)),
     +     /,1h ,9h-- sum --,f20.10)
      end
      subroutine indata(x,z)
      real*8 x(100),z(102)
      do 50 i=1,100
        x(i)=i+0.1
        z(i)=i+0.3
   50 continue
      z(101)=i+0.3
      z(102)=i+1.3
      end
