module str_mod
  integer,allocatable :: val(:)
end module str_mod

subroutine sub1(arg_xxx)
  use str_mod
  integer arg_xxx(10)
  arg_xxx=(/1,2,3,4,5,6,7,8,9,10/)
  val=0
end subroutine sub1

subroutine sub2(arg_yyy)
  use str_mod
  integer arg_yyy(10)
  val=5
  arg_yyy=(/11,12,13,14,15,16,17,18,19,20/)
end subroutine sub2

program main
  use str_mod
  allocate(val(10))
  val=1
  call sub1(val)
  call sub2(val)
  if (any(val .ne. (/11,12,13,14,15,16,17,18,19,20/))) then
     print *,"NG ",val
  else
     print *,"OK"
  endif
end program main
