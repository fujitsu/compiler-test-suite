program main
  implicit none
  integer, parameter :: n = 8
  integer :: i
  real(8) :: a(n), b(n), c(n), d(n)
  
  do i = 1, n
     a(i) = i
  end do

  b = a

  do i = 1, n
     if ( a(i) .ne. b(i) ) then
        write(*,*) 'b = ', b(i)
     endif
  end do

  do i = 1, n
     c(i) = 0.5_8 * a(i) + cos(b(i))
  end do

  d = 0.5_8 * a + cos(b)

  do i = 1, n
     if ( c(i) .ne. d(i) ) then
        write(*,*) 'c = ', c(i)
     endif
  end do

  write(*,*) 'OK'
end program main
