subroutine fptrans_r4toi4tor4(a4,b4,n)
real(4),dimension(1:n) :: a4,b4
do i=1,n
  b4(i) = real(int(a4(i),kind=4),kind=4)
enddo
end subroutine

subroutine fptrans_r4toi4tor8(a4,b8,n)
real(4),dimension(1:n) :: a4
real(8),dimension(1:n) :: b8
do i=1,n
  b8(i) = real(int(a4(i),kind=4),kind=8)
enddo
end subroutine

subroutine fptrans_r8toi8tor4(a8,b4,n)
real(8),dimension(1:n) :: a8
real(4),dimension(1:n) :: b4
do i=1,n
  b4(i) = real(int(a8(i),kind=8),kind=4)
enddo
end subroutine

subroutine fptrans_r8toi8tor8(a8,b8,n)
real(8),dimension(1:n) :: a8,b8
do i=1,n
  b8(i) = real(int(a8(i),kind=8),kind=8)
enddo
end subroutine

program main
integer,parameter :: n=100
real(4),dimension(1:n) :: r4a,r4b
real(8),dimension(1:n) :: r8a,r8b
real(8),parameter :: error=0.0_8

r8a = (/(real(i,kind=8),i=1,n)/)
r8b = (/(real(i,kind=8),i=1,n)/)
r4a = (/(real(i,kind=4),i=1,n)/)
r4b = (/(real(i,kind=4),i=1,n)/)
call fptrans_r4toi4tor4(r4a,r4b,n)
if (abs(real(sum(r4a),kind=8)-real(sum(r4b),kind=8)) .le. error) then
  print *,"ok"
else
  print *,"ng"
endif
call fptrans_r4toi4tor8(r4a,r8b,n)
if (abs(real(sum(r4a),kind=8)-real(sum(r8b),kind=8)) .le. error) then
  print *,"ok"
else
  print *,"ng"
endif
call fptrans_r8toi8tor4(r8a,r4b,n)
if (abs(real(sum(r4a),kind=8)-real(sum(r4b),kind=8)) .le. error) then
  print *,"ok"
else
  print *,"ng"
endif
call fptrans_r8toi8tor8(r8a,r8b,n)
if (abs(real(sum(r8a),kind=8)-real(sum(r8b),kind=8)) .le. error) then
  print *,"ok"
else
  print *,"ng"
endif
end program
