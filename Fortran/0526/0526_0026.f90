  module m1
implicit none
        type ty
         integer :: ii
         contains
          procedure:: a1
          generic :: assignment(=) => a1
        end type
        type,extends(ty)::ty2
          integer::iii
        end type
        contains
         subroutine a1(d1,d2)
          class(ty),intent(out) :: d1
          integer,intent(in) ::  d2
           d1%ii = d2
         end
       end module
  module m2
implicit none
        type xty
         integer :: ii
         contains
          procedure:: a1
          generic :: assignment(=) => a1
        end type
        type,extends(xty)::xty2
          integer::iii
        end type
        contains
         subroutine a1(d1,d2)
          class(xty),intent(out) :: d1
          integer,intent(in) ::  d2
           d1%ii = d2+1000
         end
       end module
    
use m1
use m2
implicit none
class(ty),allocatable:: v01
class(xty),allocatable:: w01
allocate(v01,w01)
v01=1
if (v01%ii/=1)print *,10001

w01=1
if (w01%ii/=1001)print *,20001

print *,'pass'
end
