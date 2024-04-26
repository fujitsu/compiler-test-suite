 module m_ind
 type w
   integer,pointer :: m(:)
 end type
 type(w),pointer::z(:)
 contains
   subroutine ind_m1
     implicit none
     integer :: k(4)
     if (size(k)/=z(3)%m(3))print *,101
   end subroutine ind_m1
 end module m_ind

 subroutine ind_m
   use m_ind
   implicit none
   integer :: k(4)
     if (size(k)/=z(3)%m(3))print *,102
 end subroutine ind_m

use m_ind
allocate(z(3))
allocate(z(3)%m(3))
z(3)%m(3)=4
call ind_m1
call ind_m
print *,'pass'
end

