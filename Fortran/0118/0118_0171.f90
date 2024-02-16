subroutine func(r, a)
  implicit none
  complex*8, dimension(1:5)::a
  real*8, dimension(1:5)::r
  integer::i

  do i = 1, 5
     r(i) = sqrt(a(i))
  end do
end subroutine func

program main
  implicit none
  complex*8, dimension(1:5)::a
  real*8, dimension(1:5)::r
  integer::i
  logical*1::not_equal

  do i = 1, 5
     a(i) = dcmplx(1.11325_4, 1.11322_4)
  end do

  call func(r, a)
  
  not_equal = .false.
  do i = 1, 4
     if (r(5) .ne. r(i)) then
        not_equal = .true.
        exit
     end if
  end do

  if (not_equal) then
     print *, "NG"
  else
     print *, "OK"
  end if
end program main
