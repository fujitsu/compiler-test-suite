      module mod1
      implicit none
      namelist /nam/a,b,c,d,e,f
      real*4 a,b
      real*8 c,d
      real*8 e,f
      end module mod1
      recursive subroutine test1()
      use mod1
      a=1 ; b=2
      c=3 ; d=4
      e=5 ; f=6
      write(6,nam)
      end
      module mod2
      implicit none
      namelist /nam/a,b,c,d,e,f
      integer*1 a,b
      integer*2 c,d
      integer*4 e,f
      end module mod2
      recursive subroutine test2()
      use mod2
      a=1 ; b=2
      c=3 ; d=4
      e=5 ; f=6
      write(6,nam)
      end
      module mod3
      implicit none
      namelist /nam/a,b,e,f
      logical*1 a,b
      logical*4 e,f
      end module mod3
      recursive subroutine test3()
      use mod3
      a=.true. ; b=.false.
      e=.true. ; f=.false.
      write(6,nam)
      end
      module mod4
      implicit none
      namelist /nam/a,b,e,f
      complex*8 a,b
      complex*16 e,f
      end module mod4
      recursive subroutine test4()
      use mod4
      a=(1,2) ; b=(2,3)
      e=(4,5) ; f=(5,6)
      write(6,nam)
      end
      program main
      implicit none
      call test1
      call test2
      call test3
      call test4
      end
