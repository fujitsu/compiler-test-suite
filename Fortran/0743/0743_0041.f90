 module m_ind
 contains
   subroutine xx
   type z
   integer,allocatable :: m(:)
   end type
   type(z)::zz
     integer :: k(4)
   allocate(zz%m(2))
   zz%m(2)=4
     k=(/1,2,3,4/)
   call ind_m1(zz,k)
   contains
   subroutine ind_m1(zz,k)
     implicit none
   type(z)::zz
     integer :: k(zz%m(2))
     if (size(k)/=zz%m(2))write(6,*) "NG"
     if (any(k/=(/1,2,3,4/)))write(6,*) "NG"
   end subroutine ind_m1
   end subroutine
 end module m_ind

   subroutine yy
   type z
   integer,allocatable :: m(:)
   end type
   type(z)::zz(2)
     integer :: k(4)
   allocate(zz(2)%m(2))
   k=(/11,12,13,14/)
   zz(2)%m(2)=4
   call ind_m(zz,k)
   contains
 subroutine ind_m(zz,k)
   implicit none
   type(z)::zz(:)
   integer :: k(zz(2)%m(2))
     if (size(k)/=zz(2)%m(2))write(6,*) "NG"
     if (any(k/=(/11,12,13,14/)))write(6,*) "NG"
 end subroutine ind_m
   end subroutine

use m_ind
call xx
call yy
print *,'pass'
end
