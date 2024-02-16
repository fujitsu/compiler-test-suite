subroutine sub1()
  integer(kind=4) :: ecount,j
  real(kind=8),dimension(50) :: a,b,c

  do k=1,50
     a(k) = 1.0
     b(k) = 2.0
     c(k) = 3.0
  enddo

  j = 50
  ecount = 0

  do k=1,50
     if (mod(k,2).eq.0) then
        ecount = j
        a(j) = b(k)
        j = j - 1
     else
        a(j) = c(k)
        j = j - 1
     endif
  enddo

  print*, a(1)
  print*, a(2)
  print*, ecount
  return
end subroutine sub1

program main
  call sub1()
end program main
