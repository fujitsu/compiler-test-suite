program main
  integer,allocatable::tmp
  allocate(tmp)
  tmp=10
  call sub(tmp)
  write(2,*)tmp
print *,'pass'
contains
  subroutine sub(tmp)
    integer,allocatable::tmp
  end subroutine sub
end program main
