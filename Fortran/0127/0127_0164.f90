subroutine sub1()
  real(kind=8),dimension(10) :: a,b
  real(kind=8) :: btotal
  data btotal/0.0/

  do k=1,10
     a(k) = 2.0
     b(k) = 1.0
  enddo

  do k=1,10
     btotal = b(5)
     b(5) = btotal * a(k)
  enddo

  print*, btotal
  print*, b(5)
  return
end subroutine sub1

program main
  call sub1()
end program main
