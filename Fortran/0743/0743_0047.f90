 module ptr_ind
 type w
   integer,allocatable :: m(:)
 end type
 type(w),allocatable::z(:)
 end module ptr_ind

 module m_ind
     use ptr_ind
 contains
   subroutine ind_m1
     implicit none
     integer :: k(z(3)%m(3))
     if (size(k)/=z(3)%m(3))write(6,*) "NG"
   end subroutine ind_m1
 end module m_ind

 subroutine ind_m
   use ptr_ind
   implicit none
   integer :: k(z(3)%m(3))
     if (size(k)/=z(3)%m(3))write(6,*) "NG"
 end subroutine ind_m

use m_ind
allocate(z(3))
allocate(z(3)%m(3))
z(3)%m(3)=4
call ind_m1
call ind_m
print *,'pass'
end
