subroutine reduction_add(r, a)
  implicit none
  real*8::r
  real*8, dimension(1:10000)::a
  integer::i

  do i = 1, 10000
     r = r + a(i)
  end do
end subroutine reduction_add

program main
  implicit none
  real*8::r
  real*8, dimension(1:10000)::a
  integer::i, counter
  real*8, parameter::k = 0.00012
  real*8, parameter::margin = 1.0E-12
  real*8, parameter::base = 1.259999982474_8

  do i = 1, 10000
     counter = mod(i, 2)

     if (counter == 0) then
        a(i) = 1.1 * k
     else
        a(i) = 1.0 * k
     end if
  end do
  
  r = 0.0
  call reduction_add(r, a)
  
  if (abs(r - base) .ge. margin) then
     print *, "NG"
  else
     print *, "OK"
  end if
end program main
