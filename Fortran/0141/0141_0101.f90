 module m_ind
 type w
   integer,allocatable :: m(:)
 end type
 type(w),allocatable::z(:)
 contains
   subroutine ind_m1
     implicit none
     integer :: k(4)
     if (size(k)/=z(3)%m(3))print *,101
   end subroutine ind_m1
 end module m_ind


use m_ind
allocate(z(3))
allocate(z(3)%m(3))
z(3)%m(3)=4
call ind_m1
print *,'pass'
end

