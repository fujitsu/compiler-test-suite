subroutine sub(a, b, m, n)
  real*8 a(n,n), b(n,n)
  !OCL LOOP_INTERCHANGE(I,J)
  DO I=1,M
     DO J=1,N
        A(I,J) = A(I,J) + B(J,I)
     ENDDO
  ENDDO
end subroutine sub


program main
  integer, parameter :: n = 100
  integer, parameter :: m = 100  
  real*8 a(n,n), b(n,n)

  do i=1,m
     do j=1,n
        a(j,i) = i + j
        b(j,i) = i + j        
     end do
  end do
  call sub(a,b,n,n)
  do i=1,m
     do j=1,n
        if(a(i,j).ne.i+j+i+j) then
           stop "NG"
        endif
     end do
  end do
  print *, "PASS"
end program main
