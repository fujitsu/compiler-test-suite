      program main
      call sub1
      call sub2
      call sub3
      call sub4
      stop
      end
      subroutine sub1
      real     r4a(10),r4b(10)
      logical  l4a(10)
      data     l4a/.true.,.false.,.true.,
     +         .true.,.false.,.true.,
     +         .true.,.false.,.true.,.false./
      do 1 i=1,10
 1    r4a(i)=10.0
      do 2 i=1,10
 2    r4b(i)=20.0
      do 10 i=1,10
       if (l4a(i)) then
         r4b(i)=r4a(i)
       endif
 10   continue
      write(6,*) '*** sub1 result ****'
      write(6,90) r4b
 90   format(5(f5.1))
      return
      end
      subroutine sub2
      real     r4a(10),r4b(10)
      logical  l4a(10)
      data     l4a/.true.,.false.,.true.,
     +         .true.,.false.,.true.,
     +         .true.,.false.,.true.,.false./
      do 1 i=1,10
 1    r4a(i)=10.0
      do 2 i=1,10
 2    r4b(i)=20.0
      do 10 i=1,10
       if (l4a(i)) then
         r4b(i)=r4a(i)
       endif
 10   continue
      write(6,*) '*** sub2 result ****'
      write(6,90) r4b
 90   format(5(f5.1))
      return
      end
      subroutine sub3
      real*4    r4a(1:10),r4b(10)
      real*8    r8a(1:10),r8b(10)
      integer*4 i4a(1:10),i4b(10)
      do 1 i=1,5
      r4a(i) =1.0
      r4a(i+5)=0.0
      r8a(i) =1.d0
      r8a(i+5)=0.d0
      i4a(i) =1
 1    i4a(i+5)=0
      n=5
      n=n+n
      do 10 i=1,n
        if(r4a(i).gt.0) then
          r4b(i)=r8a(i)
        else
          r4b(i)=r8a(i)
        endif
 10   continue
      do 20 i=1,n
        if(r8a(i).gt.0) then
          r8b(i)=r4a(i)
        else
          r8b(i)=r4a(i)
        endif
 20   continue
      do 30 i=1,n
        if(i4a(i).gt.0) then
          i4b(i)=sqrt(r4a(i))+i4a(i)
        else
          i4b(i)=sqrt(r4a(i))+i4a(i)
        endif
 30   continue
      write(6,*) '*** sub3 result ****'
      write(6,8) i4b
      write(6,9) r4b
      write(6,9) r8b
  8   format(5(i14))
  9   format(5(f14.3))
      return
      end
      subroutine sub4
      real*4    r4a(1:10),r4b(10)
      real*8    r8a(1:10),r8b(10)
      integer*4 i4a(1:10),i4b(10)
      do 10 i=1,5
      r4a(i) =1.0
      r4a(i+5)=0.0
      r8a(i) =1.d0
      r8a(i+5)=0.d0
      i4a(i) =1
10    i4a(i+5)=0
      n=5
      n=n+n
      do 100 i=1,n
        if(r4a(i).gt.0) then
          r4b(i)=r8a(i)
        else
          r4b(i)=r8a(i)
        endif
100   continue
      do 200 i=1,n
        if(r8a(i).gt.0) then
          r8b(i)=r4a(i)
        else
          r8b(i)=r4a(i)
        endif
200   continue
      do 300 i=1,n
        if(i4a(i).gt.0) then
          i4b(i)=sqrt(r4a(i))+i4a(i)
        else
          i4b(i)=sqrt(r4a(i))+i4a(i)
        endif
300   continue
      write(6,*) '*** sub4 result ****'
      write(6,8) i4b
      write(6,9) r4b
      write(6,9) r8b
  8   format(5(i14))
  9   format(5(f14.3))
      return
      end
