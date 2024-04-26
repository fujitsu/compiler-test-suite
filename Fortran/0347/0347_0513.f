      program main
      real*8  a(100),b(100),c(102)
      call indata(a,b,c)
      do 10 i=1,100
       b(i)=b(i)+a(i)
       c(i+1)=c(i)+c(i+2)
   10 continue
      write(6,999) (a(i),i=1,100),(b(i),i=1,100),(c(i),i=1,100)
  999 format(1h ,10h-- a(*) --,/,(20(5(f10.5,2x)/)),
     +     /,1h ,10h-- b(*) --,/,(20(5(f10.5,2x)/)),
     +     /,1h ,10h-- c(*) --,/,(20(5(f10.5,2x)/)))
      end
      subroutine indata(x,y,z)
      real*8 x(100),y(100),z(102)
      do 50 i=1,100
        x(i)=i+0.1
        y(i)=i+0.2
        z(i)=i+0.3
   50 continue
      z(101)=i+0.3
      z(102)=i+1.3
      end
