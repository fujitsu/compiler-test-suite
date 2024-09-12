 integer :: a1(2)=3,a2
         call Isub(a1(1),a2)
if (any(a1/=[1,3])) print *,101
if (    a2/=2) print *,102
         if (If1(a1(1),a2)/=3) print *,201
if (any(a1/=[11,3])) print *,101
if (    a2/=12) print *,1021
print *,'pass'
         contains
           elemental  subroutine Isub(d1,d2)
             integer,intent(out):: d1
             integer,intent(out) :: d2
              d1=1
              d2=2
           end subroutine
          impure elemental function If1(d1,d2)
            implicit none
            integer,intent(out) :: d1
           integer,intent(out) :: d2
           integer:: If1
              d1=11
              d2=12
              If1=3
          end function
        end
