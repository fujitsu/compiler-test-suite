      program main
      real    ra(10)
      real    rb(10)/-1.,-2.,-3.,-4.,-5,1.,2.,3.,4.,5./
      real    rc(10)/10*5./,rd/2./
      integer ia(10)
      real*8  ib(10)/-1,-2,-3,-4,-5,1,2,3,4,5/
      real*8  ic(10)/10*1/
      logical l1/.false./,l2(10)/5*.false.,5*.true./
      logical l3(10),l4(10)/10*.true./
      do 1 i=1,10
       if(l1) goto 4
         ra(i)=rb(i)+rc(i)
        if(ra(i)-rd) 2,3,4
   2     l3(i)=rc(i).le.rb(i)
         goto 1
   3     l3(i)=rb(i).gt.rc(i)
         goto 1
   4     l3(i)=rc(i).lt.rb(i)
   1  continue
      write(6,fmt='(5f10.5)') ra
      write(6,fmt='(10l2)') l2,l3
      do 10 i=1,10
       if(l2(i).and.l3(i)) then
          l4(i)=rb(i).lt.ra(i)
          l3(i)=l2(i).and.l4(i)
         if(l2(i)) then
           l2(i)=l3(i).and.l4(i)
         else
           l3(i)=l2(i).or.l4(i)
         endif
       else
         if(l4(i)) then
           l3(i)=l4(i).eqv.l2(i)
         else
           l3(i)=l4(i).neqv.l2(i)
         endif
       endif
  10  continue
      write(6,fmt='(10l2)') l2,l3
      do 100 k=1,10
       ia(k)=ic(k)-ib(k)
       if(rc(k).eq.ia(k)) then
         l3(k)=rb(k).lt.ib(k)
       else
        if(l3(k)) then
         l4(k)=ia(k).ge.ib(k)
         l2(k)=l3(k).and.l4(k)
         if(l2(k)) ra(k)=rb(k)*2
        else
         l4(k)=ia(k).gt.ib(k)
        endif
       endif
 100  continue
      write(6,fmt='(5f10.5)')ra
      write(6,fmt='(10l2)')l4
      stop
      end
