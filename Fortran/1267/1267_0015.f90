subroutine sub(a,b,n)
  real a(n,n), b(n,n)
  !OCL UNROLL_AND_JAM(2)
  DO J=1, 128
     DO I=1, 128
        A(I, J) = B(I, J) + B(I, J+1)
     END DO
  END DO
end subroutine sub

program main
  integer, parameter:: n= 200
  real a(n,n), b(n,n)
  do j=1,n
     do i = 1,n
        a(i,j) = i*j
        b(i,j) = i*j        
     end do
  end do
  call sub(a,b,n)
  do j=1,128
     do i = 1,128
        if (a(i,j) .ne. b(i,j) + b(i,j+1)) then
           print *, "NG", i,j, a(i,j)
           stop
        end if
     end do
  end do
  print *,'PASS'
end
