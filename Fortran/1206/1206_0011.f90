 module m
   type ty
     integer(8) :: value
   end type
  type tt
     class(ty),allocatable::node1 (:)
   end type
 contains

 end module

 subroutine s1
 USE m
type g
 class (tt),allocatable:: t (:),y (:)
end type
type (g),allocatable::h(:)

if (allocated(h)) then
h(1)%y=h(1)%t
end if

 end
 call s1
 print*, "sngg280r : pass"
 end
