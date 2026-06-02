module mod_pt

  contains

  subroutine init
    implicit none
    integer :: n, i
    integer ::  var(2048)
    common /cmn_base/ ptr
    pointer (ptr, var)

    n=2048
    ptr = malloc(n*4)

    do i=1, n
      var(i)= i
    enddo

    if (var(2048)/=2048) print *,301

  end subroutine init
end module mod_pt

program main
  use mod_pt
    integer ::  var(2048)
    common /cmn_base/ ptr
    pointer (ptr, var)
  call init
    if (var(2048)/=2048) print *,301

  call free(ptr) 
print *,'pass'
end program main
