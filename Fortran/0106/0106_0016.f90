program main
  integer, parameter :: n = 50
  real(8) :: a(n), result(n)
  integer * 1 i1
  integer * 2 i2
  integer * 4 i4
  integer * 8 i8

   do i = 1, n
      a(i) = i+1
      result(i) = 0
   enddo

  do i1 = 1, n
     result(i1) = log(a(i1))
  enddo
  write(6,99) result

  do i2 = 1, n
     result(i2) = log(a(i2))
  enddo
  write(6,99) result

  do i4 = 1, n
     result(i4) = log(a(i4))
  enddo
  write(6,99) result

  do i8 = 1, n
     result(i8) = log(a(i8))
  enddo
  write(6,99) result

99 format(5f10.5)
end program main
