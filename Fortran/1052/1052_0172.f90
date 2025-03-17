module taskdepend_mod
  integer, parameter :: ans_x=2
  real(kind=4), parameter :: ans_y=4.0
  real(kind=8), parameter :: ans_z=6.0
  logical, parameter :: ans_l=.TRUE.
  real, parameter :: epsilon=1.0D-13
  
contains
  subroutine init(x, y, z, l)
    integer :: x
    real(kind=4) :: y
    real(kind=8) :: z
    logical :: l
    x = 1
    y = 2.0
    z = 3.0
    l = .FALSE.
  end subroutine init
  
  subroutine test(x, y, z, l)
    integer :: x
    real(kind=4) :: y
    real(kind=8) :: z
    logical :: l
    if ((x .ne. ans_x) .or. (abs(y - ans_y) .gt. epsilon) .or. (abs(z - ans_z) .gt. epsilon) .or. (.not. l)) then
       print *, "NG"
    else
       print *, "OK"
    end if
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  integer :: x
  real(kind=4) :: y
  real(kind=8) :: z
  logical :: l

  call init(x, y, z, l)

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(in: x, y, z, l)
  x = x + 1
  y = y + 2.0
  z = z + 3.0
  l = .TRUE.
  !$omp end task
  !$omp task shared(x) depend(out: x, y, z, l)
  call test(x, y, z, l)
  !$omp end task

  !$omp end single
  !$omp end parallel

end program main
