module str_mod
  type str
     integer,allocatable,dimension(:) :: val
  end type str
  type(str) str_val
end module str_mod

program main
  use str_mod
  allocate(str_val%val(10))
  str_val%val=1
  call sub(str_val)
  if (any(str_val%val .ne. (/1,2,3,4,5,6,7,8,9,10/))) then
     print *,"NG ",str_val%val
  else
     print *,"OK"
  endif
contains
  subroutine sub(str_val)
    type(str) str_val
    str_val%val=(/1,2,3,4,5,6,7,8,9,10/)
  end subroutine sub
end program main
