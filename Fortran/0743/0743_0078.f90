   program main
     real, allocatable, target :: a(:)
     real, pointer :: p(:)
     allocate (p(2))
     allocate (a(2))
     write(44,*)associated(p)
     p => a
     write(44,*)associated(p)
     print *,'pass'
   end program main
   subroutine xx
     real, allocatable, target :: a(:)
     real, pointer :: p(:)
     p => a
   end
