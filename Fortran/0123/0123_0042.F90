#define N 256

program main
  real(kind=2),dimension(N) :: a,b
  real(kind=2):: res
  integer(kind=2), dimension(1:N) :: c
  integer(kind=2) :: i,x

  x=1

  call init(a,b,c,res)
  do i=1,2
     call test(a,b,c,x)
  enddo
  if(a(2) .ne. res) then
     print *, "NG"
  endif
  print *, "OK"

end program main

#define POS 1

subroutine init(a,b,c,res)
  real(kind=2),dimension(1:N) :: a,b
  real(kind=2) :: res
  integer(kind=2), dimension(1:N) :: c
  integer(kind=2) :: tmp,i

  do i=1,N
     a(i) = real(0.,kind=2)
     b(i) = real(i,kind=2)
     if (mod(i,4) .eq. POS) then
       c(i) = 2
       tmp = i
     else
       c(i) = 1
     endif 
  enddo
  res = b(tmp)

end subroutine init


subroutine test(a,b,c,x)
  real(kind=2), dimension(1:N) :: a,b
  integer(kind=2), dimension(1:N) :: c
  integer(kind=2) :: x,i

  do i=1,N
     if (c(i) .gt. x) then
        a(2) = b(i)
     endif
  enddo
end subroutine test
