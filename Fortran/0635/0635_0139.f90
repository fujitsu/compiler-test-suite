subroutine PRL_msg_too_small_count(a,b,n,m)
real(kind=8),dimension(1:n) :: a
real(kind=8),dimension(1:3) :: b
do i=1,3
  a(i) = a(i) + 1.
enddo
do i=1,m
  b(i) = b(i) + 1.
enddo
end subroutine

program main
integer,parameter :: m=3
integer,parameter :: n=3
real(kind=8),dimension(1:n) :: a
real(kind=8),dimension(1:3) :: b
a = 1.
b = 1.
call PRL_msg_too_small_count(a,b,n,m)
if (sum(a) .eq. sum(b)) then
  print *,"ok"
else
  print *,"ng"
endif
end
