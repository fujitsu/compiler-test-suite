  module m1
implicit none
private
public::ty
        type ty
         integer :: ii
         contains
          procedure:: a1
          generic :: assignment(=) => a1
        end type
        contains
         subroutine a1(d1,d2)
          class(ty),intent(out) :: d1
          integer,intent(in) ::  d2
           d1%ii = d2
         end
       end module
  module xm1
use m1
implicit none
        type xty
         integer :: ii
         contains
          procedure:: a1
          generic :: assignment(=) => a1
        end type
        contains
         subroutine a1(d1,d2)
          class(xty),intent(out) :: d1
          integer,intent(in) ::  d2
           d1%ii = d2+1000
         end
       end module
    
       use xm1
implicit none
type(ty):: v01
type(xty):: w01
v01=1
if (v01%ii/=1)print *,10001

w01=1
if (w01%ii/=1001)print *,20001

print *,'pass'
end
