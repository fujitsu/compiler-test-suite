module xxx
  type test
     sequence
     integer x, y, z
  end type test
end module xxx

program main
  use xxx
  integer a, b, c, d
  type(test) e
  common /aa/ a, b
  common /cc/ c, d, e
  !$omp threadprivate(/aa/,/cc/)
  a = 1
  b = 2
  c = 3
  d = 4
  e%x = 1
  e%y = 2
  e%z = 3

  call sub1()

  if((a .eq. 3) .and. (b .eq. 4) .and. (c .eq. 5) .and. (d .eq. 6) &
       .and. (e%x .eq. 3) .and. (e%y .eq. 4) .and. (e%z .eq. 5)) then
     print *, 'pass'
  else
     print *, 'NG'
  end if

end program main

subroutine sub1()
  use xxx
  integer a, b, c, d
  type(test) e
  common /aa/ a, b
  common /cc/ c, d, e
  !$omp threadprivate(/aa/,/cc/)

  a = a+1
  b = b+1
  c = c+1
  d = d+1
  e%x = e%x+1
  e%y = e%y+1
  e%z = e%z+1

  call sub2()
end subroutine sub1

subroutine sub2()
  use xxx
  integer a, b, c, d
  type(test) e
  common /aa/ a, b
  common /cc/ c, d, e
  !$omp threadprivate(/aa/,/cc/)

  a = a+1
  b = b+1
  c = c+1
  d = d+1
  e%x = e%x+1
  e%y = e%y+1
  e%z = e%z+1

end subroutine sub2
