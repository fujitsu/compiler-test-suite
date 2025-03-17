      module m
        type z
          integer(4)::zz(10)
        end type
      end module

      program main
       use m
       type(z)::a
        call s(a)
        if (any(a%zz/=(/1,2,3,4,5,6,7,8,9,10/))) print *,'error ',a%zz
        print *,'pass'
      end program main

      subroutine s(b)
        use m
        type(z)::b,c
         c=z((/1,2,3,4,5,6,7,8,9,10/))
         b%zz=c%zz
      end subroutine s
