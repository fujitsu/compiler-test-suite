      program main
      call sub1
      call sub2
      call sub3
      call sub4
      stop
      end
      subroutine sub1
      real     r4a(1000),r4b(1000)
      logical  l4a(1000)
      data     l4a/100*.true.,100*.false.,100*.true.,
     +         100*.true.,100*.false.,100*.true.,
     +         100*.true.,100*.false.,100*.true.,50*.false.,
     +         49*.true.,.false./
      do 1 i=1,1000
      r4a(i)=10.0
  1   r4b(i)=20.0
      do 10 i=1,1000
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
      real     r4a(1000),r4b(1000)
      logical  l4a(1000)
      data     l4a/100*.true.,100*.false.,100*.true.,
     +         100*.true.,100*.false.,100*.true.,
     +         100*.true.,100*.false.,100*.true.,50*.false.,
     +         49*.true.,.false./
      do 1 i=1,1000
      r4a(i)=10.0
 1    r4b(i)=20.0
      do 10 i=1,1000
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
      integer*4 i4a(2048),iax,ibx,i4b(2048)
      data i4a/512*-5,512*0,512*5,512*10/
      data iax,ibx/1,0/
      do 9 i=1,2048
        if(iax.le.i4a(i)) then
          i4b(i)=i4a(i)
          ibx=i
        endif
 9    continue
      do 99 i=1,2048
        if(iax.le.i4a(i)) then
          i4b(i)=max(i4a(i),1)
        endif
 99   continue
      write(6,*) '*** sub3 result ****'
      write(6,*) 'max data ****  ',i4b(ibx)
      write(6,*) 'max index ***  ',ibx
      return
      end
      subroutine sub4
      real*8 r8a(1024),rif
      integer*4 imax
      data r8a/256*10.0,256*0.d0,256*1.0,256*20.0/
      data imax/1/
      do 11 i=1,1024
        rif=r8a(imax)-r8a(i)
        if(rif.le.0) then
          imax=i
        endif
11    continue
      do 12 i=1,1024
        if(rif.le.0) then
          rif=max(r8a(i),1)
        endif
12    continue
      write(6,*) '*** sub4 result ****'
      write(6,*) rif
      write(6,*) imax
      return
      end
