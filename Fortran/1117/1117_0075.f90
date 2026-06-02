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
  do i=1, 10
     e(i)%base%x = 1
     e(i)%base%y = 2
     e(i)%base%z = 3
     e(i)%xx = 4
     e(i)%yy = 5
  end do

!$omp parallel copyin(/aa/)
  call sub1()
!$omp end parallel

  if((a .eq. 3) .and. (b .eq. 4) .and. (c .eq. 5) .and. (d .eq. 6) .and. &
       (e(3)%base%x .eq. 3) .and. (e(3)%base%y .eq. 4) .and. &
       (e(3)%base%z .eq. 5) .and. (e(3)%xx .eq. 6) .and. (e(3)%yy .eq. 7)) then
     print *, 'ok'
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
  do i=1, 10
     e(i)%base%x = e(i)%base%x+1
     e(i)%base%y = e(i)%base%y+1
     e(i)%base%z = e(i)%base%z+1
     e(i)%xx = e(i)%xx+1
     e(i)%yy = e(i)%yy+1
  end do

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
  do i=1, 10
     e(i)%base%x = e(i)%base%x+1
     e(i)%base%y = e(i)%base%y+1
     e(i)%base%z = e(i)%base%z+1
     e(i)%xx = e(i)%xx+1
     e(i)%yy = e(i)%yy+1
  end do

end subroutine sub2
