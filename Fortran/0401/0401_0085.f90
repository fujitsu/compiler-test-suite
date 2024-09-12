program main
  integer a, b, c, d, e(10)
  common /aa/ a, b
  common /cc/ c, d, e
  !$omp threadprivate(/aa/,/cc/)
  a = 1
  b = 2
  c = 3
  d = 4
  e = 5

  call sub1()

  if((a .eq. 3) .and. (b .eq. 4) .and. (c .eq. 5) .and. &
       & (d .eq. 6) .and. (e(1) .eq. 7)) then
     print *, 'pass'
  else
     print *, 'NG'
  end if

end program main

subroutine sub1()
  integer a, b, c, d, e(10)
  common /aa/ a, b
  common /cc/ c, d, e
  !$omp threadprivate(/aa/,/cc/)

  a = a+1
  b = b+1
  c = c+1
  d = d+1
  e = e+1

  call sub2()
end subroutine sub1

subroutine sub2()
  integer a, b, c, d, e(10)
  common /aa/ a, b
  common /cc/ c, d, e
  !$omp threadprivate(/aa/,/cc/)

  a = a+1
  b = b+1
  c = c+1
  d = d+1
  e = e+1

end subroutine sub2
