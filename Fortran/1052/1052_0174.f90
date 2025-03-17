module taskdepend_mod
  type points
     integer :: x, y
  end type points
  type(points) :: ans
contains
  subroutine init(a)
    type(points) :: a
    a%x = 1
    a%y = 2
  end subroutine init
  
  subroutine test(a)
    type(points) :: a
    ans%x = 1
    ans%y = 2

    if (a%x .ne. ans%x .or. a%y .ne. ans%y) then
       print *, "NG"
    else
       print *, "OK"
    end if
  end subroutine test

end module taskdepend_mod

program main
  use taskdepend_mod
  type(points) :: a

  call init(a)

  !$omp parallel
  !$omp single
  !$omp task shared(a) depend(in: a)
  a%x = 1
  a%y = 2
  !$omp end task
  !$omp task shared(a) depend(out: a)
  call test(a)
  !$omp end task

  !$omp end single
  !$omp end parallel

end program main
