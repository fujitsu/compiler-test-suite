module str_mod
  type str
     integer,allocatable :: val(:)
  end type str
  type(str) str_val
contains
  subroutine sub1()
    str_val%val=(/1,2,3,4,5,6,7,8,9,10/)
  end subroutine sub1

  subroutine sub2()
    str_val%val=(/11,12,13,14,15,16,17,18,19,20/)
  end subroutine sub2
end module str_mod

program main
  use str_mod
  allocate(str_val%val(10))
  str_val%val=1
  call sub1()
  call sub2()
  if (any(str_val%val .ne. (/11,12,13,14,15,16,17,18,19,20/))) then
     print *,"NG ",str_val%val
  else
     print *,"OK"
  endif
end program main
