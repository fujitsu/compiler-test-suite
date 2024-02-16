#define N 256

program main
  real(kind=2),dimension(N) :: dest,src,res
  call init(dest,src,res,N)
  do i=1,2
     call test(dest,src,i-1)
  enddo
  do i=1,N
     if(dest(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,src,res,n1)
  real(kind=2),dimension(1:n1) :: dest,src,res
  do i=1,n1
     dest(i) = 0._2
     src(i) = real(i,kind=2)
     res(i) = real(i+i,kind=2)
  enddo
end subroutine init

subroutine test(dest, src, idx)
  real(kind=2), dimension(N) :: dest,src
  integer(kind=4)::idx
  do i=1,N
     dest(i) = src(i) + real(i*idx,kind=2)
  enddo
end subroutine test
