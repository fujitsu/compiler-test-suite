module m1
implicit none
integer::kk=0
type ty
    integer :: k 
   contains
    FINAL ::  final_sub
end type
contains
 subroutine final_sub(this)
 type(ty),intent(in) :: this
 kk=kk+this%k
 end subroutine
end module


use m1
implicit none
type(ty), pointer :: obj

allocate(obj)
obj%k=10
deallocate(obj)

if (kk/=10) print *,101

print*, "pass"
end program
