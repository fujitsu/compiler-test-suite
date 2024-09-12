module mod_pt

  contains

  subroutine init
    implicit none
    integer ::  var(1)
    pointer (ptr, var)
  end subroutine init
end module mod_pt

program crayptr
  use mod_pt
print *,'pass'
end program crayptr
