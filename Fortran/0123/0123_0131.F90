#define N 512

program main
  real(kind=2),dimension(N) :: a
  do i=1,2
     call test(a)
  enddo
  do i=1,N
     if(a(i) .ne. 1._8) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine test(a)
  real(kind=2), dimension(N) :: a
  do i=1,N
     a(i) = 1._8
  enddo
end subroutine test
