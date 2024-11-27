 module m_ind
 contains
   subroutine xx
   integer,pointer :: m
     integer :: k(4)
   allocate(m)
   m=4
   call ind_m1(k)
   contains
   subroutine ind_m1(k)
     implicit none
     integer :: k(m)
     k=(/1,2,3,4/)
     if (size(k)/=m)write(6,*) "NG"
     if (any(k/=(/1,2,3,4/)))write(6,*) "NG"
   end subroutine ind_m1
   end subroutine
 end module m_ind

   subroutine yy
   integer,pointer :: m
     integer :: k(4)
   allocate(m)
   m=4
   call ind_m(k)
   contains
 subroutine ind_m(k)
   implicit none
   integer :: k(m)
     if (size(k)/=m)write(6,*) "NG"
     k=(/11,12,13,14/)
     if (any(k/=(/11,12,13,14/)))write(6,*) "NG"
 end subroutine ind_m
   end subroutine

use m_ind
call xx
call yy
print *,'pass'
end
