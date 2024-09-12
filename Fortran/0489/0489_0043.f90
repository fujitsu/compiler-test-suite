         module m1
           type x
             integer,allocatable::x2(:)
           end type
          type ty
           type(x) :: cmp
          end type
        contains
        integer function   s(v)
         type (ty):: v
         s=1
        end function
        end
        subroutine s1
        use m1
         type(x)::x2
        if (s(ty(x2))/=1) print *,101
        end
        call s1
        print *,'pass'
        end

