subroutine sub(a,b,c,n)
  real a(n), b(n), c(n)
  !OCL STRIPING (2)
  DO I=1,N
     A(I) = B(I) + C(I)
  ENDDO
end subroutine sub

program main
  integer, parameter:: n= 100
  real a(n), b(n), c(n)
  a = 0
  do i = 1,n
     b(i) = i
     c(i) = i
  end do
  call sub(a,b,c,n)
  do j=1,n
     do i = 1,n
        if (a(i) .ne. real(i) + real(i)) then
           print *, "NG", i, a(i)
           stop
        end if
     end do
  end do
  print *,'PASS'
end
