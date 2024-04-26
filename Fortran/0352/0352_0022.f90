module str_mod
  type str
     integer val
  end type str
  type(str),allocatable :: str_val(:)
end module str_mod

module str_mod_dummy
  use str_mod,only:str_val_dummy=>str_val
end module str_mod_dummy

subroutine sub1()
  use str_mod
  str_val%val=(/1,2,3,4,5,6,7,8,9,10/)
end subroutine sub1

subroutine sub2()
  use str_mod_dummy
  str_val_dummy%val=(/11,12,13,14,15,16,17,18,19,20/)
end subroutine sub2

program main
  use str_mod
  use str_mod_dummy
  allocate(str_val(10))
  str_val%val=1
  call sub1()
  call sub2()
  if (any(str_val%val .ne. (/11,12,13,14,15,16,17,18,19,20/))) then
     print *,"NG ",str_val%val
  else
     print *,"OK"
  endif
  if (any(str_val_dummy%val .ne. (/11,12,13,14,15,16,17,18,19,20/)))   then
     print *,"NG ",str_val_dummy%val
  else
     print *,"OK"
  endif
end program main
