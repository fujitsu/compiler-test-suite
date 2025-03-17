      module m
        type z
          integer(4),allocatable,dimension(:)::zz
        end type
      end module

      program main
       use m
       type(z)::a,f
        a=f()
        if (.not.allocated(a%zz)) print *,'error-1 '
        if (any(a%zz/=(/1,2,3,4,5/))) print *,'error-2 ',a%zz
        deallocate(a%zz)
        print *,'pass'
      end program main

      function f() result(b)
        use m
        type(z)::b
         allocate(b%zz(5))
         b%zz=(/1,2,3,4,5/)
      end function f
