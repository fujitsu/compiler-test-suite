      module mo1
      integer,private:: m1
      contains
      subroutine sub1()
      i1=1
      m1=1
      print *,'sub1 ',i1,m1
      end subroutine
      end module
      module mo2
      integer m2
      contains
      subroutine sub2()
      use mo1
      i2=2
      m2=2
      call sub1()
      print *,'sub2 ',i2,m2
      end subroutine
      end module
      use mo2
      i=1
      call sub2()
      end
