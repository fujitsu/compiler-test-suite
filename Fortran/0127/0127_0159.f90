subroutine sub1()
  real(kind=8),dimension(50) :: a
  real(kind=8) :: bmax,tmax
  data bmax/0.0/
  data tmax/0.0/

  do k=1,50
     a(k) = k
  enddo

  do k=1,50
     bmax = tmax
     if (bmax.lt.a(k)) then
        tmax = a(k)
     endif
  enddo

  print*, bmax
  print*, tmax
  return
end subroutine sub1

program main
  call sub1()
end program main
