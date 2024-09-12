module xxx
  type test1
     sequence
     integer x, y, z
  end type test1
  type test2
     sequence
     integer xx, yy
     type(test1) base
  end type test2
end module xxx

program main
  use xxx
  integer a, b, c, d
  type(test2) e(10)
  common /aa/ a, b, c, d, e
  !$omp threadprivate(/aa/)

  a = 1
  b = 2
  c = 3
  d = 4
  e(3)%base%x = 1
  e(3)%base%y = 2
  e(3)%base%z = 3
  e(3)%xx = 4
  e(3)%yy = 5

  call sub1()

  if((a .eq. 3) .and. (b .eq. 4) .and. (c .eq. 5) .and. (d .eq. 6) .and. &
       (e(3)%base%x .eq. 3) .and. (e(3)%base%y .eq. 4) .and. &
       (e(3)%base%z .eq. 5) .and. (e(3)%xx .eq. 6) .and. (e(3)%yy .eq. 7)) then
     print *, 'pass'
  else
     print *, 'NG'
  end if

end program main

subroutine sub1()
  use xxx
  integer a, b, c, d
  type(test2) e(10)
  common /aa/ a, b, c, d, e
  !$omp threadprivate(/aa/)

  a = a+1
  b = b+1
  c = c+1
  d = d+1
  e(3)%base%x = e(3)%base%x+1
  e(3)%base%y = e(3)%base%y+1
  e(3)%base%z = e(3)%base%z+1
  e(3)%xx = e(3)%xx+1
  e(3)%yy = e(3)%yy+1

  call sub2()
end subroutine sub1

subroutine sub2()
  use xxx
  integer a, b, c, d
  type(test2) e(10)
  common /aa/ a, b, c, d, e
  !$omp threadprivate(/aa/)

  a = a+1
  b = b+1
  c = c+1
  d = d+1
  e(3)%base%x = e(3)%base%x+1
  e(3)%base%y = e(3)%base%y+1
  e(3)%base%z = e(3)%base%z+1
  e(3)%xx = e(3)%xx+1
  e(3)%yy = e(3)%yy+1

end subroutine sub2
