      program main
      implicit integer*4(a-z)
      dimension ar1(100),ar2(100)
      dimension op3(100),op4(100)
      common /ar/ar1,ar2
      common /si/op3rc
      op4 = 2

      call init
      call init

      csum=0
      do 40 i=2,100
        ar1(i) =-ar1(i-1) * (-op3rc) - op4(i)
        csum = csum + iabs(ar1(i))
   40 continue
      write(6,*) ' pat.4 csum= ',csum
      stop
      end
      subroutine init
      implicit integer*4(a-z)
      dimension ar1(100),ar2(100)
      dimension op3(100),op4(100)
      common /ar/ar1,ar2
      common /si/op3rc

      ar1 = 1
      op3rc=1
      return
      end
