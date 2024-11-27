 module m_ind
 contains
   subroutine xx
   integer,allocatable :: m(:)
     integer :: k(4)
   allocate(m(2))
   m(2)=4
     k=(/1,2,3,4/)
   call ind_m1(m,k)
   contains
   subroutine ind_m1(m,k)
     implicit none
   integer,allocatable :: m(:)
     integer :: k(m(2))
     if (size(k)/=m(2))write(6,*) "NG"
     if (any(k/=(/1,2,3,4/)))write(6,*) "NG"
   end subroutine ind_m1
   end subroutine
 end module m_ind

   subroutine yy
   integer,allocatable :: m(:)
     integer :: k(4)
   allocate(m(2))
   k=(/11,12,13,14/)
   m(2)=4
   call ind_m(m,k)
   contains
 subroutine ind_m(m,k)
   implicit none
   integer,allocatable :: m(:)
   integer :: k(m(2))
     if (size(k)/=m(2))write(6,*) "NG"
     if (any(k/=(/11,12,13,14/)))write(6,*) "NG"
 end subroutine ind_m
   end subroutine

use m_ind
call xx
call yy
print *,'pass'
end
