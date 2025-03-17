      module m
        type z
          integer(4)::zz(5)
        end type
       contains
        function f(kk) result(b)
         integer(4),intent(in)::kk(5)
          type(z)::b,c
           c=z(kk)
           b%zz=c%zz
        end function f
      end module

      program main
       use m
       type(z)::a
       integer(4)::kk(5)
        kk=(/1,2,3,4,5/)
        a=f(kk)
        if (any(a%zz/=(/1,2,3,4,5/))) print *,'error ',a%zz
        print *,'pass'
      end program main
