      function func(str) result(pstr)
       type aa
        sequence
         integer(4)::ii
         real(4)   ::rr
       end type
       type(aa),target::str
       type(aa),pointer::pstr
        str=aa(555,777.777)
        pstr=>str
      end function

      subroutine sub()
       interface
        function func(str) result(pstr)
         type aa
          sequence
           integer(4)::ii
           real(4)   ::rr
         end type
         type(aa),target::str
         type(aa),pointer::pstr
        end function
       end interface
       type aa
        sequence
         integer(4)::ii
         real(4)   ::rr
       end type
       type(aa),target::str
       type(aa),pointer::pstr
        pstr=>func(str)
        if (pstr%ii/=555.or.pstr%rr/=777.777) print *,pstr
      end subroutine

      program main
        call sub()
        print *,'pass'
      end program
