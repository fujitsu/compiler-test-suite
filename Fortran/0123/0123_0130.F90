#define N 512

program main
  complex(kind=2),dimension(N) :: a
  do i=1,2
     call test(a)
  enddo
  do i=1,N
     if(a(i) .ne. cmplx(1.0,1.0,kind=2)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine test(a)
  complex(kind=2), dimension(N) :: a
  do i=1,N
     a(i) = cmplx(1.0,1.0,kind=2)
  enddo
end subroutine test
