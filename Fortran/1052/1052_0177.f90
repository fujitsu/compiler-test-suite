module taskdepend_mod
  integer, parameter :: ans_x=2
  integer, parameter :: ans_y=4
  integer, parameter :: ans_z=6
contains
  subroutine init(x, y, z)
    integer :: x, y, z
    x = 1
    y = 2
    z = 3
  end subroutine init
  
  subroutine test(x, y, z)
    integer :: x, y, z
    if ((x .ne. ans_x) .or. (y .ne. ans_y) .or. (z .ne. ans_z)) then
       print *, "NG"
    else 
       print *, "OK"
    end if
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: x, y, z

  call init(x, y, z)

  !$omp parallel
  !$omp single
  !$omp task shared(x,y,z) &
  !$omp depend(out: x) &
  !$omp depend(inout: y) &
  !$omp depend(inout: z)
  x = x + 1
  y = y + 2
  z = z + 3
  !$omp end task
  !$omp task shared(x,y,z) &
  !$omp depend(inout: x) &
  !$omp depend(out: y) &
  !$omp depend(in: z)
  call test(x, y, z)
  !$omp end task

  !$omp end single
  !$omp end parallel

end program main
