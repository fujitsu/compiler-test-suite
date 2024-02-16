subroutine sub1()
  real(kind=8),dimension(50) :: a
  real(kind=8) :: btotal,total
  data btotal/0.0/
  data total/0.0/

  do k=1,50
     a(k) = k
  enddo

  do k=1,50
     btotal = total
     total = btotal + a(k)
  enddo

  print*, btotal
  print*, total
  return
end subroutine sub1

program main
  call sub1()
end program main
