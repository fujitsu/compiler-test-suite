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

      type(z) function f() 
        use m
         f%zz=(/1,2,3,4,5/)
      end function f
