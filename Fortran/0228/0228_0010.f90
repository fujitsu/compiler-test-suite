  module m1
implicit none
integer::v1
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
use m1
implicit none
class(ty),allocatable:: v01
private
public::s1,v01
contains
subroutine s1
integer::k
allocate(ty2::v01)
call v01%gen(1)
if (v01%ii/=1)print *,10001
k=0
           select type(v01)
             type is(ty2)
                if (v01%iii/=100) print *,9001
                k=1
           end select 
   if (k/=1) print *,1010
end
end
use m2,only:s1
call s1

print *,'pass'
end
