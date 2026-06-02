      real*8    a(5,5,5,5,5,5,5)
      real*8    b(5,5,5,5,5,5,5)
      real*8    x(5,5,5,5,5,5,5)
      real*8    y(5,5,5,5,5,5,5)
      logical   ans1(5,5,5,5,5,5,5)
      logical   ans2(5,5,5,5,5,5,5)
      integer   l(5)
      common /com/a,b,x,y
      common /ans/ans1,ans2
      common /lst/l
      write(6,*) '***** - start *****'
      write(6,*) ' '
      do 10 i7=1,5
      do 10 i6=1,5
      do 10 i5=1,5
      do 10 i4=1,5
      do 10 i3=1,5
      do 10 i2=1,5
      do 10 i1=1,5
          a(i1,i2,i3,i4,i5,i6,i7)    = 0.0d0
          b(i1,i2,i3,i4,i5,i6,i7)    = 0.0d0
          x(i1,i2,i3,i4,i5,i6,i7)    = i1*i2
          y(i1,i2,i3,i4,i5,i6,i7)    = i1*i3
          ans1(i1,i2,i3,i4,i5,i6,i7) = .false.
          ans2(i1,i2,i3,i4,i5,i6,i7) = .false.
          l(i7)=0
   10 continue

      call lset
      call sub1(a,b,x,y)
      call sub2(a,b,x,y)

      do 20 i7=1,5
      do 20 i6=1,5
      do 20 i5=1,5
      do 20 i4=1,5
      do 20 i3=1,5
      do 20 i2=1,5
      do 20 i1=1,5
        if ( ans1(i1,i2,i3,i4,i5,i6,i7) .neqv.
     +       ans2(i1,i2,i3,i4,i5,i6,i7) ) then
          write(6,*) '===== -  ng   ====='
          go to 999
        endif
   20 continue
      write(6,*) '===== -  ok   ====='
  999 write(6,*) '***** -  end  *****'
      stop
      end
      subroutine lset
      integer   time
      integer   l(5)
      common /lst/l

        do 10 i=1,5
           l(i) = i
   10   continue
      write(6,*) '-----   lset  -  end  -----'
      return
      end
      subroutine sub1(a,b,x,y)
      real*8    a(5,5,5,5,5,5,5)
      real*8    b(5,5,5,5,5,5,5)
      real*8    x(5,5,5,5,5,5,5)
      real*8    y(5,5,5,5,5,5,5)
      logical   ans1(5,5,5,5,5,5,5)
      logical   ans2(5,5,5,5,5,5,5)
      integer   l(5)
      common /ans/ans1,ans2
      common /lst/l

        do 10 i=1,5,2
          a(l(i),l(i),l(i),l(i),l(i),l(i),l(i)) =
     +      x(l(i),l(i),l(i),l(i),l(i),l(i),l(i)) +
     +      y(l(i),l(i),l(i),l(i),l(i),l(i),l(i))
   10 continue

      do 20 i7=1,5
      do 20 i6=1,5
      do 20 i5=1,5
      do 20 i4=1,5
      do 20 i3=1,5
      do 20 i2=1,5
      do 20 i1=1,5
        if (a(i1,i2,i3,i4,i5,i6,i7) .eq. 0.0d0) then
          ans1(i1,i2,i3,i4,i5,i6,i7)=.false.
        else
          ans1(i1,i2,i3,i4,i5,i6,i7)=.true.
        endif
   20 continue
      write(6,*) '-----   sub1  -  end  -----'
      return
      end
      subroutine sub2(a,b,x,y)
      real*8    a(5,5,5,5,5,5,5)
      real*8    b(5,5,5,5,5,5,5)
      real*8    x(5,5,5,5,5,5,5)
      real*8    y(5,5,5,5,5,5,5)
      logical   ans1(5,5,5,5,5,5,5)
      logical   ans2(5,5,5,5,5,5,5)
      integer   l(5)
      common /ans/ans1,ans2
      common /lst/l

      i = 1
 10   if ( i .le. 5 ) then
          b(l(i),l(i),l(i),l(i),l(i),l(i),l(i)) =
     +      x(l(i),l(i),l(i),l(i),l(i),l(i),l(i)) +
     +      y(l(i),l(i),l(i),l(i),l(i),l(i),l(i))
          i = i+2
          goto 10
       endif

      do 20 i7=1,5
      do 20 i6=1,5
      do 20 i5=1,5
      do 20 i4=1,5
      do 20 i3=1,5
      do 20 i2=1,5
      do 20 i1=1,5
        if (b(i1,i2,i3,i4,i5,i6,i7) .eq. 0.0d0) then
          ans2(i1,i2,i3,i4,i5,i6,i7)=.false.
        else
          ans2(i1,i2,i3,i4,i5,i6,i7)=.true.
        endif
   20 continue
      write(6,*) '-----   sub2  -  end  -----'
      return
      end
