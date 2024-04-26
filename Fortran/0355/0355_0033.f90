subroutine sub (x)
  integer x
  select case (x)
  case (0)
     print *, "0"
  case (1)
     print *, "OK"
  case (2)
     print *, "2"
  case default
     print *, "OK"
  end select
end subroutine sub

program main
  implicit none
  call sub (3)
  call sub (1)
end program main
