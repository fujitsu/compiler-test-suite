module str_mod
  type str
     integer val
  end type str
  type(str),allocatable :: str_val(:)
end module str_mod

subroutine sub(str_xxx)
  use str_mod
  type(str) str_xxx(10)
  str_xxx%val=(/1,2,3,4,5,6,7,8,9,10/)
end subroutine sub

program main
  use str_mod
  allocate(str_val(10))
  str_val%val=1
  call sub(str_val)
  if (any(str_val%val .ne. (/1,2,3,4,5,6,7,8,9,10/))) then
     print *,"NG ",str_val%val
  else
     print *,"OK"
  endif
end program main
