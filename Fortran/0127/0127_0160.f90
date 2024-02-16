subroutine sub1()
  real(kind=8),dimension(50) :: a,b
  real(kind=8) :: bmax
  data bmax/0.0/

  do k=1,50
     a(k) = k
     b(k) = 0.0
  enddo

  do k=1,50
     bmax = b(5)
     if (bmax.lt.a(k)) then
        b(5) = a(k)
     endif
  enddo

  print*, bmax
  print*, b(5)
  return
end subroutine sub1

program main
  call sub1()
end program main
