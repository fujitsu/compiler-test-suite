      module m
        type z
          complex(4)::zz(3)
        end type
      end module

      program main
       use m
       type(z)::a
        call s(a)
        if (any(a%zz/=(/(1.0,-1.0),(2.0,-2.0),(3.0,-3.0)/))) print *,'error ',a%zz
        print *,'pass'
      end program main

      subroutine s(b)
        use m
        type(z)::b,c
         c=z((/(1.0,-1.0),(2.0,-2.0),(3.0,-3.0)/))
         b%zz=c%zz
      end subroutine s
