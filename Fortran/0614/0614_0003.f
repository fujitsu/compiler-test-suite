      program main
      structure/base/
        character*4 ch01
        integer*4 i4a
        real*8    r8a
      end structure
      record /base/a(4),b(4),c(4)
      common /bl1/b/bl2/c
      pointer (str,a)
      str=loc(b(1))
      call sub01(4)
      call sub02(4)
      do 10 i=1,4
         if((a(i).ch01 .ne. c(i).ch01) .or.
     c      (a(i).i4a .ne. c(i).i4a) .or.
     c      (a(i).r8a.ne. c(i).r8a)) goto20
 10   continue     
      write(6,*)' ***** ok ***** '
      goto 30
 20   write(6,*)' ***** ng ***** '
      write(6,40)a.ch01,a.i4a,a.r8a
 40   format(' ',4a4,4x,4i4,4x,4f7.4)
      write(6,50)c.ch01,c.i4a,c.r8a
 50   format(' ',4a4,4x,4i4,4x,4f7.4)
 30   stop
      end

      subroutine sub01(n)
      structure/base/
        character*4 ch01
        integer*4 i4a
        real*8    r8a
      end structure
      record /base/a(4),b(4),dummy
      common /bl1/b
      integer*4 n,k,l,s
      real*8 max
      pointer (str,a)
      str=loc(b(1))
      do 1 k=1,n-1
         max=a(k).r8a
         s=k
         do 2 l=k+1,n
            if(a(l).r8a .gt. max) then
               max=a(l).r8a
               s=l
            endif
 2       continue
         dummy=a(k)
         a(k)=a(s)
         a(s)=dummy
 1    continue
      return  
      end

      subroutine sub02(n)
      structure/base/
        character*4 ch01
        integer*4 i4a
        real*8    r8a
      end structure
      record /base/c(4),dummy
      common /bl2/c
      integer*4 n,k,l,s
      real*8 max
      do 1 k=1,n-1
         max=c(k).r8a
         s=k
         do 2 l=k+1,n
            if(c(l).r8a .gt. max) then
               max=c(l).r8a
               s=l
            endif
 2       continue
         dummy=c(k)
         c(k)=c(s)
         c(s)=dummy
 1    continue
      return  
      end

      block data star
      structure/base/
        character*4 ch01
        integer*4 i4a
        real*8    r8a
      end structure
      record /base/a(4),b(4),c(4)
      common /bl1/b/bl2/c
      data (b(i).ch01 ,i=1,4)/'   I','   E','   G','   C'/
      data (b(i).i4a ,i=1,4)/    5 ,    6 ,    5 ,    6 /
      data (b(i).r8a,i=1,4)/1.7691,3.5512,7.1545,16.6890/
      data (c(i).ch01 ,i=1,4)/'   I','   E','   G','   C'/
      data (c(i).i4a ,i=1,4)/    5 ,    6 ,    5 ,    6 /
      data (c(i).r8a,i=1,4)/1.7691,3.5512,7.1545,16.6890/
      end
