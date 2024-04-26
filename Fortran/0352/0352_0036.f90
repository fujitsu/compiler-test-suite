module str_mod
  integer,allocatable :: val(:)
contains
  subroutine sub1()
    val=(/1,2,3,4,5,6,7,8,9,10/)
  end subroutine sub1
end module str_mod

module str_mod_dummy
  use str_mod,only:val_dummy=>val
contains
  subroutine sub2()
    val_dummy=(/11,12,13,14,15,16,17,18,19,20/)
  end subroutine sub2
end module str_mod_dummy

program main
  use str_mod
  use str_mod_dummy
  allocate(val(10))
  val=1
  call sub1()
  call sub2()
  if (any(val .ne. (/11,12,13,14,15,16,17,18,19,20/))) then
     print *,"NG ",val
  else
     print *,"OK"
  endif
  if (any(val_dummy .ne. (/11,12,13,14,15,16,17,18,19,20/)))   then
     print *,"NG ",val_dummy
  else
     print *,"OK"
  endif
end program main
