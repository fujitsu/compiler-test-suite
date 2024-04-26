      program main
      call sub2
      stop
      end
c
      subroutine sub2
      real*8  da(2048),db(2048)
      logical la(2048)
      data    la/512*.true.,512*.false.,512*.false.,512*.false./
      do 10 i=1,2048
          da(i)=10.0
   10 continue
      do 11 i=1,2048
          db(i)=10.0
   11 continue
      do 12 i=1,2048
        if (la(i)) then
          da(i)=sin(da(i))
        endif
   12 continue
      do 13 i=1,2048
        if (la(i)) then
          db(i)=cos(da(i))
        endif
 13   continue

      write(6,9) da(1),da(100),da(300)
      write(6,9) da(1000),da(1026)
      write(6,9) db(1),db(100),db(500)
      write(6,9) db(1000),db(1024)
 9    format(f15.10,f15.10,f15.10)
      return
      end
      
