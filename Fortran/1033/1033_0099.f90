      module m
        type z
          integer(4)::zz(5)
        end type
       contains
        function f() result(a)
          type(z)::a(1)
           a(1)=z((/1,2,3,4,5/))
        end function f
      end module

      program main
       use m
       type(z)::a(1)
        a=f()
        if (any(a(1)%zz/=(/1,2,3,4,5/))) print *,'error ',a(1)%zz
        print *,'pass'
      end program main
