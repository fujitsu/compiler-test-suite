subroutine sub1()
  real(kind=8),dimension(50) :: a
  real(kind=8) :: tmax
  integer(kind=4) :: bind
  integer(kind=4),dimension(50) :: tind
  data tmax/0.0/
  data bind/0/
  data tind/50*0/
  do k=1,50
     a(k) = k
  enddo

  do k=1,50
     bind = tind(5)
     if (tmax.lt.a(k)) then
        tmax = a(k)
        tind(5) = k
     endif
  enddo

  print*, tmax
  print*, bind
  print*, tind(5)
  return
end subroutine sub1

program main
  call sub1()
end program main
