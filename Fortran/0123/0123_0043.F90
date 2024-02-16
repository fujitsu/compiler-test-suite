#define N 256

program main
  real(kind=2),dimension(N) :: a
  real(kind=2)::res     

  call init(a,res)
  do i=1,2
     call test(a,res)
  enddo
  if(a(N) .ne. res) then
     print *, "NG"
  endif
  print *, "OK"
end program main

subroutine init(a,res)
  real(kind=2),dimension(1:N) :: a
  real(kind=2)::res     

  res  = real(min(10,N),kind=2)

  do i=1,N
     a(i) = real(i,kind=2)
  enddo
end subroutine init

subroutine test(a,res)
  real(kind=2), dimension(1:N) :: a
  real(kind=2)::res     
  do i=1,N
     if (res .lt. a(i)) then
        res = a(i)
     endif
  enddo
end subroutine test

