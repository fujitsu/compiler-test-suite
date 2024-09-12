      program main
      call sub3
      stop
      end
      subroutine sub3
      real ra(4096),rb(4096)
      integer ia(4096)
      logical la(4096)
      data ia/1024*5,1024*0,1024*3,1024*2/
      data la/1024*.false.,1024*.true.,1024*.false.,1024*.true./
      inn=4096
      do 10 i=1,inn
 10   ra(i)=0.0
      write(6,*) ra(inn)
      do 11 i=1,4096
        rb(i)=0.0
        if (ia(i).gt.3) then
         rb(i)=1.0
        endif
 11   continue
      write(6,*) '*** sub3 result ****'
      write(6,1000) rb(1),rb(100),rb(1000),rb(2000),rb(4096)
 1000 format(f10.5)
      do  12 i=1,4096
        rb(i)=0.0
        if (la(i)) then
        if (ia(i).lt.3) then
         rb(i)=1.0
        endif
        endif
 12   continue
      write(6,2000) rb(1),rb(100),rb(1000),rb(2000),rb(4096)
 2000 format(f10.5)
      return
      end
