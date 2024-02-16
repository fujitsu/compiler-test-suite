subroutine sub1()
  real(kind=8),dimension(50) :: a,b
  real(kind=8) :: btotal
  data btotal/0.0/

  do k=1,50
     a(k) = k
     b(k) = 0.0
  enddo

  do k=1,50
     btotal = b(5)
     b(5) = btotal + a(k)
  enddo

  print*, btotal
  print*, b(5)
  return
end subroutine sub1

program main
  call sub1()
end program main
