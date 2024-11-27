 module ptr_ind
   integer,pointer :: m
 end module ptr_ind

 module m_ind
 contains
   subroutine ind_m1(k)
     use ptr_ind
     implicit none
     integer :: k(m)
     k=(/1,2,3,4/)
     if (size(k)/=m)write(6,*) "NG"
     if (any(k/=(/1,2,3,4/)))write(6,*) "NG"
   end subroutine ind_m1
 end module m_ind

 subroutine ind_m(k)
   use ptr_ind
   implicit none
   integer :: k(m)
     if (size(k)/=m)write(6,*) "NG"
     k=(/11,12,13,14/)
     if (any(k/=(/11,12,13,14/)))write(6,*) "NG"
 end subroutine ind_m

use m_ind
 use ptr_ind
   integer :: k(4)
allocate(m)
m=4
call ind_m1(k)
call ind_m(k)
print *,'pass'
end
