subroutine func(r, a)
  implicit none
  real*8, dimension(1:5)::a, r
  integer::i

  do i = 1, 5
     r(i) = erf(a(i) / 123)
  end do
end subroutine func

program main
  implicit none
  real*8, dimension(1:5)::a, r
  integer::i
  logical*1::not_equal

  do i = 1, 5
     a(i) = 10.1256
  end do

  call func(r, a)
  
  not_equal = .false.
  do i = 1, 4
     if (r(5) .ne. r(i)) then
        not_equal = .true.
     end if
  end do

  if (not_equal) then
     print *, "NG"
  else
     print *, "OK"
  end if
end program main
