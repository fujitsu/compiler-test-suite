print *,'snfmm514 pass'
end

 module ptr_ind
   integer,pointer :: m
 end module ptr_ind

 module m_ind
 contains
   subroutine ind_m1
     use ptr_ind
     implicit none
     integer :: k(m)
   end subroutine ind_m1
 end module m_ind

 subroutine ind_m
   use ptr_ind
   implicit none
   integer :: k(m)
 end subroutine ind_m
