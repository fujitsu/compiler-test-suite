subroutine sub_O1(a,b,c,n)
  real(8),dimension(1:n):: a,b,c

  do i=1,n
     a(i) = b(i) + c(i)
  end do
end subroutine sub_O1

subroutine sub_O2(a,b,c,n)
  real(8),dimension(1:n):: a,b,c

  do i=1,n
     a(i) = b(i) + c(i)
  end do
end subroutine sub_O2

subroutine sub_O3(a,b,c,n,x)
  real(8),dimension(1:n) :: a,b,c
  integer(8) :: x

  do i=1,n
     if (x == 0) then
        a(i) = b(i) + c(i)
     endif
  end do
end subroutine sub_O3

program main
  real(8),dimension(1:10) :: a,b,c
  integer(8) :: x

  a = 0.
  b = 1.
  c = 1.
  x = 0_8
  
  call sub_O1(a,b,c,10)
  call sub_O2(a,b,c,10)
  call sub_O3(a,b,c,10,x)

  do i=1,10
     if (a(i) .ne. 2.) then
        print *, "NG"
     endif
  enddo

  print *, "OK"
  
end program main
