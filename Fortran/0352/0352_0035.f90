module str_mod
  integer,allocatable :: val(:)
contains
  subroutine sub1(xxx)
    integer xxx(10)
    val=(/1,2,3,4,5,6,7,8,9,10/)
    xxx = 10
  end subroutine sub1
  subroutine sub2(yyy)
    integer yyy(10)
     yyy=(/11,12,13,14,15,16,17,18,19,20/)
  end subroutine sub2

end module str_mod

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
