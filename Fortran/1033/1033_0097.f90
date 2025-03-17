      module m
        type z
          integer(4)::zz(5)
        end type
      end module

      program main
       use m
       type(z)::a,f
        a=f()
        if (any(a%zz/=(/1,2,3,4,5/))) print *,'error ',a%zz
        print *,'pass'
      end program main

      function f() result(b)
        use m
        type(z)::b,c
         c=z((/1,2,3,4,5/))
         b%zz=c%zz
      end function f
