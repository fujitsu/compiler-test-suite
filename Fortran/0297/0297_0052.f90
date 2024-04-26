subroutine vgather_type(a,b,u,uu,n)
real(8),dimension(1:n) :: a,b
integer(8),dimension(1:n) :: u,uu

do i=1,n
  u(i) = i
  uu(i) = i*i
  a(i) = real(u(i)+uu(i),kind=8) + b(i)
enddo
end subroutine

subroutine vscather_type(a,b,u,uu,n)
real(8),dimension(1:n) :: a,b
integer(8),dimension(1:n) :: u,uu

do i=1,n
  a(i) = b(i)+1.0
  u(i) = int(a(i),kind=8)+uu(i)
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a,b
integer(8),dimension(1:n) :: u,uu
a = 0.0
b = 1.0
u = 0
uu = 1
call vgather_type(a,b,u,uu,n)
if (int(sum(a)) .eq. 343500) then
  print *,"ok"
else
  print *,"ng", int(sum(a))
endif

a = 0.0
b = 1.0
u = 0
uu = 1
call vscather_type(a,b,u,uu,n)
if (sum(u) .eq. 300) then
  print *,"ok"
else
  print *,"ng", sum(u)
endif
end program
