      program main
      real    ra(10),rb(10),rc/2./,rd/2./,re(10)
      data    rb/1.,1.2,1.3,1.4,1.5,-1.1,-1.2,-1.3,-1.4,-1.5/
      real*8  rra(10),rrb(10),rrc/2./,rrd/2./
      integer ia(10),ib(10),ic/2/,id/3/,ie(10)
      data    ib/1,2,3,4,5,6,7,8,9,10/
      logical l1(10),l2(10),l3(10),l4/.false./,l5/.true./
      do 1 i=1,10
        ia(i)=ib(i)*ic
       if(ia(i).eq.id) then
        ie(i)=ia(i)/id
        ib(i)=ishft(id,2)
       else
        ie(i)=abs(ic)
        l1(i)=ib(i).ge.ic
       endif
        l2(i)=l1(i).and.l5
       if(l2(i)) ia(i)=ib(i)-ic
        l3(i)=ia(i).lt.id
       if(l2(i)) then
        ib(i)=ishft(id,-2)
       endif
   1    continue
      write(6,*) l2
      write(6,*) ib
      do 10 i=1,10
        ra(i)=rb(i)*rc
        l1(i)=ra(i).le.rd
        re(i)=ra(i)/rd
        rb(i)=aint(rd)
        l2(i)=rb(i).gt.rc
        rb(i)=re(i)+1
        l3(i)=l2(i).and.l4
        rb(i)=anint(rd)
       if(l3(i)) ra(i)=rb(i)-rc
        l2(i)=ra(i).eq.rd
   10   continue
      write(6,*) l3
      write(6,fmt='(5f10.5)') ra
      do 100 i=1,10
        rrb(i)=rc*ra(i)+ib(i)
        rra(i)=rrb(i)*rc
        ia(i)=5-ia(i)
       if(ia(i)-ib(i)) 5,15,25
    5   l1(i)=ia(i).lt.rd
        re(i)=ia(i)/rd
        rb(i)=abs(rrd)
   15   l2(i)=rrb(i).ge.rc
        rb(i)=re(i)+1
   25   l3(i)=l2(i).and.l4
        rb(i)=rrc
       if(l3(i)) ra(i)=rb(i)-rc
        l2(i)=ra(i).eq.rd
        re(i)=ra(i)*ia(i)+rc
       if(l1(i)) then
        rrb(i)=anint(rrd)
       else
        rrb(i)=rrd-rb(i)
       endif
  100   continue
      write(6,*) l1
      write(6,fmt='(5f10.6)') rrb
      stop
      end
