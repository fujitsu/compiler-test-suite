subroutine sub(a,b,c,n)
  real a(n,n), b(n,n), c
  DO J=1,N
     DO I=1,N
        A(I,J) = A(I,J) + C * B(I,J)
     ENDDO
  ENDDO
end subroutine sub

program main
  integer, parameter:: n= 100
  real a(n,n), b(n,n), c
  c = 3
  do j=1,n
     do i = 1,n
        a(i,j) = i*j
        b(i,j) = i*j        
     end do
  end do
  call sub(a,b,c,n)
  do j=1,n
     do i = 1,n
        if (a(i,j) .ne. real(i*j) + 3. * real(i*j)) then
           print *, "NG", i,j
        end if
     end do
  end do
  print *,'PASS'
end
