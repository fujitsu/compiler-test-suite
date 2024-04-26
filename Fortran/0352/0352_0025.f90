module str_mod
  type str
     integer,allocatable :: val(:)
  end type str
  type(str) str_val
end module str_mod

subroutine sub1(str_xxx)
  use str_mod
  type(str) str_xxx
  str_xxx%val=(/1,2,3,4,5,6,7,8,9,10/)
  str_val%val=0
end subroutine sub1

subroutine sub2(str_yyy)
  use str_mod
  type(str) str_yyy
  str_val%val=3
  str_yyy%val=(/11,12,13,14,15,16,17,18,19,20/)
end subroutine sub2

program main
  use str_mod
  allocate(str_val%val(10))
  str_val%val=1
  call sub1(str_val)
  call sub2(str_val)
  if (any(str_val%val .ne. (/11,12,13,14,15,16,17,18,19,20/))) then
     print *,"NG ",str_val%val
  else
     print *,"OK"
  endif
end program main
