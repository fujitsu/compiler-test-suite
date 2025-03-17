      module m
        type z
          integer(4),allocatable,dimension(:)::zz
        end type
      end module

      program main
       use m
       interface
        function f() result(b)
          use m
          type(z)::b(1)
        end function f
       end interface
       type(z)::a(1)
        a(:)=f()
        if (.not.allocated(a(1)%zz)) print *,'error-1 '
        if (any(a(1)%zz/=(/1,2,3,4,5/))) print *,'error-2 ',a(1)%zz
        deallocate(a(1)%zz)
        print *,'pass'
      end program main

      function f() result(b)
        use m
        type(z)::b(1)
         allocate(b(1)%zz(5))
         b(1)%zz=(/1,2,3,4,5/)
      end function f
