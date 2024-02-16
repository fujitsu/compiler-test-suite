#define N 64

program main
  complex(kind=8),dimension(1:N) :: src
  complex(kind=2),dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  call init(src,dest,mask)
  do i=1,2
     call test(src,dest,mask)
  enddo
  do i=1,N
     if(dest(i) .ne. cmplx(i,i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(src,dest,mask)
  complex(kind=8),dimension(1:N) :: src
  complex(kind=2),dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = cmplx(0._8,0._8)
     src(i) = cmplx(real(i,kind=2), real(i,kind=2))
     mask(i) = 1_4
  enddo
end subroutine init

subroutine test(src,dest,mask)
  complex(kind=8),dimension(1:N) :: src
  complex(kind=2),dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  do i=1,N
     dest(i) = src(i)
  enddo
end subroutine test
