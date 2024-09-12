 module m1
private::a1
        type ty1
         integer :: ii
         contains
          procedure:: a1
          generic :: assignment(=) => a1
        end type
        contains
         subroutine a1(d1,d2)
          class(ty1),intent(out) :: d1
          integer,intent(in) ::  d2
           d1%ii = d2
         end

  end module
  module m2
  use m1
        type ty2
         integer :: ii
         contains
          procedure:: a1
          generic :: assignment(=) => a1
        end type
        contains
         subroutine a1(d1,d2)
          class(ty2),intent(out) :: d1
          integer,intent(in) ::  d2
           d1%ii = d2+1
         end
  end module
    
use m2
type(ty1)::v1
type(ty2)::v2
v1=1
if (v1%ii/=1) print *,1001
v2=1
if (v2%ii/=2) print *,1002
print *,'pass'
end
