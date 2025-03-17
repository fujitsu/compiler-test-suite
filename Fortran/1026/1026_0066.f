      module mo
      common /cmn/ bbb
      integer int
      end module
      module moo
      integer int2
      end module

      use mo
      use moo
      print *,bbb,int2
      end
