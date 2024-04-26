module str_mod
  integer,allocatable :: val(:)
end module str_mod

program main
  use str_mod
  allocate(val(10))
  val=1
  call sub()
  if (any(val .ne. (/1,2,3,4,5,6,7,8,9,10/))) then
     print *,"NG ",val
  else
     print *,"OK"
  endif
contains
  subroutine sub()
    val=(/1,2,3,4,5,6,7,8,9,10/)
  end subroutine sub
end program main
