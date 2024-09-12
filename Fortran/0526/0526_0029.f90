  module m1
implicit none
private

public::ty,ty2
        type ty
         integer :: ii
         contains
          procedure:: a1
          generic :: gen=> a1
        end type
        type,extends(ty)::ty2
          integer::iii
        end type
        contains
         subroutine a1(d1,d2)
          class(ty),intent(out) :: d1
          integer,intent(in) ::  d2
           d1%ii = d2
           select type(d1)
             type is(ty2)
              d1%iii = 100
           end select 
         end
       end module
  module m2
implicit none
private

public::xty,xty2
        type xty
         integer :: ii
         contains
          procedure:: a1
          generic :: gen   => a1
        end type
        type,extends(xty)::xty2
          integer::iii
        end type
        contains
         subroutine a1(d1,d2)
          class(xty),intent(out) :: d1
          integer,intent(in) ::  d2
           d1%ii = d2+1000
           select type(d1)
             type is(xty2)
              d1%iii = 2000
           end select 
         end
       end module
    
use m1
use m2
implicit none
class(ty),allocatable:: v01
class(xty),allocatable:: w01
integer::k
allocate(ty2::v01)
allocate(xty2::w01)
call v01%gen(1)
if (v01%ii/=1)print *,10001
k=0
           select type(v01)
             type is(ty2)
                if (v01%iii/=100) print *,9001
                k=1
           end select 
   if (k/=1) print *,1010

call w01%gen(1)
if (w01%ii/=1001)print *,20001
k=0
           select type(w01)
             type is(xty2)
                if (w01%iii/=2000) print *,9002
                k=1
           end select 
   if (k/=1) print *,1014

print *,'pass'
end
