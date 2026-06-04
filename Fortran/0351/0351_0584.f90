subroutine test(a,b,N)
  integer(kind=8)::N
  real(kind=8), dimension(N,N,N) :: a,b
  do i=1,N
     do j=1,5
        do k =1,N
           a(k,j,i) = b(k,j,i)
        enddo
     enddo
  enddo
end subroutine test

program main
  print *, "OK"
end program main
