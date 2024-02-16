program main
  integer, parameter :: n = 50
  real(8) :: a(n), result(n)
  integer :: i,m

   do i = 1, n
      a(i) = i+1
      result(i) = 0
   enddo

  do i = 1, n-1
     result(i) = log(a(i))
  enddo
  write(6,99) result

  m = 1
  do i = 1, n-1
     result(i) = log(a(m))
     m = m - 0
  enddo
  write(6,99) result

  m = 50
  do i = 1, n-1,2
     result(i) = log(a(m))
     m = m - 1
  enddo
  write(6,99) result

99 format(5f10.5)
end program main
