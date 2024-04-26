      module mod1
       type aa
        sequence
         integer(4)::ii
         real(4)   ::rr
       end type
      contains
        function func() result(str1)
         type(aa)::str1
          str1=aa(555,777.777)
        end function
      end module

      subroutine sub()
       use mod1,type1=>aa
       type(type1)::str
        str=func()
        if (str%ii/=555.or.str%rr/=777.777) print *,str
      end subroutine

      program main
        call sub()
        print *,'pass'
      end program
