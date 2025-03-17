module taskdepend_mod
contains
  subroutine test(x)
    integer, pointer :: x
    if (associated(x)) then
       print *, "NG"
    endif
  end subroutine test
end module taskdepend_mod

program main
  use taskdepend_mod
  integer, pointer :: x
  logical :: flag
  flag = .false.

  !$omp parallel
  !$omp single
  !$omp task shared(x) depend(inout: x)
  if (.not. flag) then
     nullify(x)
     flag = .true.
  endif
  !$omp end task
  !$omp task shared(x) depend(inout: x)
  call test(x)
  !$omp end task
  !$omp end single
  !$omp end parallel

  print *, "OK"

end program main

