#define N 64
#define CONST_DISTANCE 1

program main
  complex(kind=2),dimension(N) :: a,b,res
  call init(a,b,res,N)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  complex(kind=2),dimension(1:n1) :: a,b,res
  do i=1,n1
     a(i) = cmplx(0,0,kind=2)
     b(i) = cmplx(0,0,kind=2)
     res(i) = cmplx(0,0,kind=2)
  enddo
  do i=1,n1,2
     b(i) = cmplx(i,i,kind=2)
     res(i) = cmplx(i,i,kind=2)
  enddo
end subroutine init

subroutine test(a,b)
  complex(kind=2), dimension(N) :: a,b
  do i=1,N,CONST_DISTANCE
     a(i) = b(i)
  enddo
end subroutine test
