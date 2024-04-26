program main
  call s1
  call s2(1)
  print *,'pass'
end program main

subroutine s1
  integer :: i=1
  integer(8) :: addr
  block
    save i
    addr = loc(i)
  end block
  if (loc(i) == addr) print *,11
end subroutine s1

recursive subroutine s2(n)
  integer :: i
  integer(8), save :: addr
  integer :: n
  block
    save
  end block
  select case(n)
  case(1)
     addr = loc(i)
     call s2(n+1)
  case default
     if (addr == loc(i)) print *,21
  end select
end subroutine s2
