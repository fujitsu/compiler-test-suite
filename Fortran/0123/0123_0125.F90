#define N 64

program main
  complex(kind=2), dimension(N) :: a
  complex(kind=2) :: dest,res
      
  do i=1,2
      call init(a,res,N)
      call test(a,dest)
  enddo
  if(res .ne. dest) then
     print *, "NG"
  endif
  print *, "OK"
end program main

subroutine init(a,res,n1)
  complex(kind=2), dimension(N) :: a
  complex(kind=2) :: res
  res = cmplx(0,0,kind=2)
  do i=1,n1
     a(i) = cmplx(i,i,kind=2)
     res = res + a(i)
  enddo
end subroutine init

subroutine test(a,dest)
  complex(kind=2), dimension(N) :: a
  complex(kind=2) :: dest,tmp
  tmp = cmplx(0,0,kind=2)
  do i=1,N
      tmp = tmp + a(i)
  enddo
  dest = tmp
end subroutine test
