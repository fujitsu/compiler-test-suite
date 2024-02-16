subroutine sub1()
  real(kind=8),dimension(10) :: a
  real(kind=8) :: btotal,total
  data btotal/0.0/
  data total/1.0/

  do k=1,10
     a(k) = 2.0
  enddo

  do k=1,10
     btotal = total
     total = btotal * a(k)
  enddo

  print*, btotal
  print*, total
  return
end subroutine sub1

program main
  call sub1()
end program main
