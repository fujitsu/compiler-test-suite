subroutine sub(a,b,c,n)
  real a(n,16), b(n,16), c(n,16)
  DO I=1,N
     !OCL FULLUNROLL_PRE_SIMD
     DO J=1,16
        A(I,J) = B(I,J) + C(I,J)
     ENDDO
  ENDDO
end subroutine sub

program main
  integer, parameter:: n= 100
  real a(n,16), b(n,16), c(n,16)
  c = 3
  do j=1,16
     do i = 1,n
        b(i,j) = i*j
        c(i,j) = i*j        
     end do
  end do
  call sub(a,b,c,n)
  do j=1,16
     do i = 1,n
        if (a(i,j) .ne. real(i*j) + real(i*j)) then
           print *, "NG", i,j, a(i,j)
           stop
        end if
     end do
  end do
  print *,'PASS'
end
