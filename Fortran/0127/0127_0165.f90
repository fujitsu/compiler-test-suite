subroutine sub1()
  real(kind=8),dimension(50) :: a
  real(kind=8) :: tmax
  integer(kind=4) :: bind,tind
  data tmax/0.0/
  data bind/0/
  data tind/0/
  do k=1,50
     a(k) = k
  enddo

  do k=1,50
     bind = tind
     if (tmax.lt.a(k)) then
        tmax = a(k)
        tind = k
     endif
  enddo

  print*, tmax
  print*, bind
  print*, tind
  return
end subroutine sub1

program main
  call sub1()
end program main
