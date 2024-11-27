module w
   type z
   integer,allocatable :: m(:)
   end type
   type(z),allocatable::zz(:)
end 
 module m_ind
use w
 contains
   subroutine xx
   allocate(zz(3))
   allocate(zz(3)%m(2))
   zz(3)%m(2)=4
   call ind_m1
   contains
   subroutine ind_m1
     implicit none
     integer :: k(zz(3)%m(2))
     k=(/1,2,3,4/)
     if (size(k)/=zz(3)%m(2))write(6,*) "NG"
     if (any(k/=(/1,2,3,4/)))write(6,*) "NG"
   end subroutine ind_m1
   end subroutine
 end module m_ind

   subroutine yy
   use w
   call ind_m
   contains
 subroutine ind_m
   implicit none
   integer :: k(zz(3)%m(2))
   k=(/11,12,13,14/)
     if (size(k)/=zz(3)%m(2))write(6,*) "NG"
     if (any(k/=(/11,12,13,14/)))write(6,*) "NG"
 end subroutine ind_m
   end subroutine

use m_ind
call xx
call yy
print *,'pass'
end
