 module ptr_ind
   integer,allocatable :: m(:)
 end module ptr_ind

 module m_ind
     use ptr_ind
 contains
   subroutine ind_m1
     implicit none
     integer :: k(m(3))
     if (size(k)/=m(3))write(6,*) "NG"
   end subroutine ind_m1
 end module m_ind

 subroutine ind_m
   use ptr_ind
   implicit none
   integer :: k(m(3))
     if (size(k)/=m(3))write(6,*) "NG"
 end subroutine ind_m

use m_ind
allocate(m(3))
m(3)=4
call ind_m1
call ind_m
print *,'pass'
end