#define N 64

program main
  integer(kind=2),dimension(1:N) :: src
  complex(kind=2),dimension(1:N) :: dest
  call init(src,dest)
  do i=1,2
     call test(src,dest)
  enddo
  do i=1,N
     if(dest(i) .ne. cmplx(i,0._4)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(src,dest)
  integer(kind=2),dimension(1:N) :: src
  complex(kind=2),dimension(1:N) :: dest
  do i=1,N
     dest(i) = cmplx(0._4,0._4)
     src(i) = i
  enddo
end subroutine init

subroutine test(src,dest)
  integer(kind=2),dimension(1:N) :: src
  complex(kind=2),dimension(1:N) :: dest
  do i=1,N
     dest(i) = src(i)
  enddo
end subroutine test
