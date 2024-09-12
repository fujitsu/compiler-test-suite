      program main
      integer   ia(10),ib(10)
      data      ia/10*1/,ib/10*2/
      real*4    ra(10)/10*1.23456/
      real*8    da(10)
      complex   ca(10),cb(10),cs
      complex*16 cda(10)
      do 10 i=1,10
        s1 = ia(i)+ib(i)
        da(i) = s1
 10   continue
      write(6,*) da
      do 20 i=1,10
        ra(i) = i + i
        cs = ra(i)
        cda(i) = cs
 20   continue
      write(6,*) cda
      stop
      end
