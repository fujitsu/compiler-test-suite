      real*8       a(10000),b(10000),c(10000),d(10000)
      integer*4     x(10000),y(10000)
      common /com/a,b,c,d
      do 1 j=1,10000,2
        x(j) = j+1
        y(j) = j+1
    1 continue
      do 2 j=2,10000,2
        x(j) = j-1
        y(j) = j-1
    2 continue
      do 10 j=1,10000
        a(x(j))=j
        b(y(j))=j+1
        c(x(j))=j-1
        d(y(j))=j+2
   10 continue
      call comsb1(a,b,c,d,x,y)
      stop
      end
      subroutine comsb1(a,b,c,d,x,y)
      real*8 a(10000),b(10000),c(10000),d(10000)
      real*8 aa(10000),bb(10000),cc(10000),dd(10000)
      integer*4  x(10000),y(10000)
      do 20 i = 1,10000
        if(a(x(i)).gt.b(y(i))) then
           c(i) = a(x(i)) - b(y(i))
        else
           d(i) = a(x(i)) + b(y(i))
        endif
        if(a(x(i)).eq.b(y(i)) .and. c(i).eq.d(i)) then
           c(x(i)) = a(i) + b(i)
        else
           d(y(i)) = a(i) + b(x(i))
        endif
   20 continue
      do 30 i = 1,9999
        if(a(x(i)).lt.a(x(i+1))) then
           a(i) = a(x(i+1)) - a(x(i))
        else
           if(b(y(i)).lt.b(y(i+1))) then
              b(i) = b(y(i+1)) + b(y(i))
           else
              if(c(y(i)).lt.c(y(i+1))) then
                 c(i) = c(y(i+1)) + c(y(i))
              else
                 if(d(x(i)).lt.d(x(i+1))) then
                    d(i) = d(x(i+1)) + d(x(i))
                 endif
              endif
           endif
        endif
        if(a(x(i)).eq.b(y(i)) .and. c(i).eq.d(i)) then
           c(x(i)) = a(i) + b(i)
        else
           d(y(i)) = a(i) + b(x(i))
        endif
   30 continue
      if(a(10000).eq.9999 .and. b(10000).eq.10000 .and.
     +c(10000).eq.9998 .and. d(10000).eq.10001) then
       do 999 j=1,10000
         aa(j)=a(j)
         bb(j)=b(j)
         cc(j)=c(j)
         dd(j)=d(j)
 999  continue
         write(*,*) '** com-array test ok **'
         write(*,*) ''
         write(*,*) ''
         write(*,*) aa(10000),bb(10000),cc(10000),dd(10000)
      else
         write(*,*) '** com-array test ng **'
      endif
      return
      end
