module w
   type z
   integer,allocatable :: m(:)
   end type
   type(z)::zz
end 
 module m_ind
use w
 contains
   subroutine xx
     integer :: k(4)
   allocate(zz%m(2))
   zz%m(2)=4
     k=(/1,2,3,4/)
   call ind_m1(k)
   contains
   subroutine ind_m1(k)
     implicit none
     integer :: k(zz%m(2))
     if (size(k)/=zz%m(2))write(6,*) "NG"
     if (any(k/=(/1,2,3,4/)))write(6,*) "NG"
   end subroutine ind_m1
   end subroutine
 end module m_ind

   subroutine yy
     integer :: k(4)
   k=(/11,12,13,14/)
   call ind_m(k)
   contains
 subroutine ind_m(k)
   use w
   implicit none
   integer :: k(zz%m(2))
     if (size(k)/=zz%m(2))write(6,*) "NG"
     if (any(k/=(/11,12,13,14/)))write(6,*) "NG"
 end subroutine ind_m
   end subroutine

use m_ind
call xx
call yy
print *,'pass'
end
