      program main
      real a(300),b(300),c(300),d(300),e(300)
      integer n/200/
      data a,b,c,d,e/1500*1/

       do 10 i=2,n-1
        a(i) = a(i-1)
        b(i) = b(i-1)*e(i)+a(i)
        c(i+1) = sqrt(c(i-1))
        d(i) = a(i)/d(i)
   10  continue
       write(6,*) 'no-1',a,b,c,d
       call dum(a,b,c,d,e)

       do 20 i=2,n-1
        a(i) = a(i-1)
        b(i) = b(i-1)*e(i)+a(i)
        c(i+1) = sqrt(c(i-1))
        d(i) = a(i)/d(i)
   20  continue
       write(6,*) 'no-2 ',a,b,c,d
       call dum(a,b,c,d,e)

       do 30 i=2,n-1
        a(i) = a(i-1)
        if(a(i).gt.i) then
         b(i) = b(i-1)*e(i)+a(i)
        endif
        c(i+1) = sqrt(c(i-1))
        d(i) = a(i)/d(i)
   30  continue
       write(6,*) 'no-3 ',a,b,c,d
      end
      subroutine dum(a,b,c,d,e)
      real a(300),b(300),c(300),d(300),e(300)
      do 99 i=1,300
       a(i)=1
       b(i)=1
       c(i)=1
       d(i)=1
 99    e(i)=1
      return
      end
