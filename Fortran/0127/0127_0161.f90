subroutine sub1()
  real(kind=8),dimension(50) :: a
  real(kind=8) :: bmax,tmax,x
  data bmax/0.0/
  data tmax/0.0/
  data x/0.0/
  do k=1,50
     a(k) = k
  enddo

  do k=1,50
     bmax = tmax
     x = bmax - a(k)
     if (x.lt.0.0) then
        tmax = a(k)
     endif
  enddo

  print*, bmax
  print*, tmax
  print*, x
  return
end subroutine sub1

program main
  call sub1()
end program main
