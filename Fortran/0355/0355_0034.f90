subroutine test (score)
  integer score, count
  common /global/ count
  select case (score)
  case (0)
     count = count + 1
  case (1:29)
     count = count + 2
  case (30:59)
     count = count + 3
  case (60:89)
     count = count + 4
  case (90:100)
     count = count + 5
  case default
     count = count + 6
  end select
end subroutine test

program main
  implicit none
  integer count
  common /global/ count
  count = 0
  call test (3)
  call test (60)
  call test (80)
  call test (15)
  call test (0)
  call test (77)
  call test (100)

  if (count .eq. 22) then
     print *, "OK"
  else
     print *, "NG"
  endif
  
end program main
