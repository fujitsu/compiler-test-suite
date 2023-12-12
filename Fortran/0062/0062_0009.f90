!
subroutine index_exchange_r8(a,b,c,n)
real(kind=8),dimension(1:n,1:n,1:n) :: a,b,c
do i=1,n
  do j=1,n
    do k=1,n
      a(i,j,k) = a(i,j,k) + b(i,j,k)*c(i,j,k)
    enddo
  enddo
enddo
end subroutine

subroutine index_exchange_i8(a,b,c,n)
integer(kind=8),dimension(1:n,1:n,1:n) :: a,b,c
do i=1,n
  do j=1,n
    do k=1,n
      a(i,j,k) = a(i,j,k) + b(i,j,k)*c(i,j,k)
    enddo
  enddo
enddo
end subroutine

program main
integer,parameter :: n=30
real   (kind=8),dimension(1:n,1:n,1:n) :: r1,r2,r3
integer(kind=8),dimension(1:n,1:n,1:n) :: a1,a2,a3
real   (kind=8),parameter :: r8ans = 162000._8
integer(kind=8),parameter :: i8ans = 162000_8
logical(kind=4) :: mm

mm = .true.

!
r1 = 2._8
r2 = 2._8
r3 = 2._8
call index_exchange_r8(r1,r2,r3,n)
if (sum(r1) /= r8ans) then
  mm = .false.
  print *,"ng : ", sum(r1), " != ", r8ans
endif

!
a1 = 2_8
a2 = 2_8
a3 = 2_8
call index_exchange_i8(a1,a2,a3,n)
if (sum(a1) /= i8ans) then
  mm = .false.
  print *,"ng : ", sum(a1), " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
