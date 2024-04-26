      module mod1
       type aa
        sequence
         integer(4)::ii
         real(4)   ::rr
       end type
      contains
       function func(str) result(pstr)
        type(aa),target::str
        type(aa),pointer::pstr
         str=aa(555,777.777)
         pstr=>str
       end function
      end module

      subroutine sub()
       use mod1
       type(aa),target::str
       type(aa),pointer::pstr
        pstr=>func(str)
        if (pstr%ii/=555.or.pstr%rr/=777.777) print *,pstr
      end subroutine

      program main
        call sub()
        print *,'pass'
      end program
