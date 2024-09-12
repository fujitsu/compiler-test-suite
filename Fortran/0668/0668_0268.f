      program main
      call sub1
      call sub2
      call sub3
      stop
      end
      subroutine sub1
      integer ia(514),ib(1024)
      integer ic(514),id(17,32)
      data    ic/200*4,100*0,214*3/
      do 10 i=1,514
          ia(i)=10
   10 continue
      do 11 i=1,1024
          ib(i)=10
   11 continue
      do 12 i=1,514
          ia(i)=ia(i)+ia(i)
        if (ic(i).gt.1) then
          ra=ia(i)*ia(i)
        endif
   12 continue
      do 13 i=1,17
      do 13 j=1,32
         id(i,j)=ib(i)
   13 continue
      write(6,*) '*** sub2 result ****'
      write(6,*) ra
      write(6,*) ia(1),ia(100),ia(300),ia(500),ia(514)
      write(6,*) ib(1),ib(100),ib(500),ib(1000),ib(1024)
      write(6,*) id(1,1),id(10,10),id(10,32),id(17,20),id(17,32)
      return
      end
      subroutine sub2
      real*8  da(1026),db(2048)
      logical la(2048)
      data    la/512*.true.,512*.false.,512*.false.,512*.false./
      do 10 i=1,1026
          da(i)=10.0
   10 continue
      do 11 i=1,2048
          db(i)=10.0
   11 continue
      do 12 i=1,1026
        if (la(i)) then
          da(i)=sin(da(i))
        endif
   12 continue
      do 13 i=1,2048
        if (la(i)) then
          db(i)=cos(da(i))
        endif
   13 continue
      write(6,*) '*** sub2 result ****'
      write(6,*) da(1),da(100),da(300)
      write(6,*) da(1000),da(1026)
      write(6,*) db(1),db(100),db(500)
      write(6,*) db(1000),db(1024)
      return
      end
      subroutine sub3
      real ra(2050),rb(4096)
      do 10 i=1,2050
          ra(i)=10.0
   10 continue
      do 11 i=1,4096
          rb(i)=10.0
   11 continue
      do 12 i=1,2050
          ra(i)=sin(ra(i))
          ra(i)=mod(ra(i),3)
   12 continue
      do 13 i=1,2050,2
          rb(i)=ra(i)+rb(i)
   13 continue
      write(6,*) '*** sub3 result ****'
      write(6,*) ra(1),ra(100),ra(1000),ra(2000),ra(2050)
      write(6,*) rb(1),rb(100),rb(1000),rb(2000),rb(4096)
      return
      end
