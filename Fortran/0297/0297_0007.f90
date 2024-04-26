subroutine fptrans_r4toi1(a,b,x,n)
real(4),dimension(1:n) :: a,b
real(4) x
do i=1,n
  b(i) = a(i)-int(a(i)/3.0_4,kind=1)*x
enddo
end subroutine

subroutine fptrans_r4toi2(a,b,x,n)
real(4),dimension(1:n) :: a,b
real(4) x
do i=1,n
  b(i) = a(i)-int(a(i)/3.0_4,kind=2)*x
enddo
end subroutine

subroutine fptrans_r4toi4(a,b,x,n)
real(4),dimension(1:n) :: a,b
real(4) x
do i=1,n
  b(i) = a(i)-int(a(i)/3.0_4,kind=4)*x
enddo
end subroutine

subroutine fptrans_r4toi8(a,b,x,n)
real(4),dimension(1:n) :: a,b
real(4) x
do i=1,n
  b(i) = a(i)-int(a(i)/3.0_4,kind=8)*x
enddo
end subroutine

subroutine fptrans_r8toi1(a,b,x,n)
real(8),dimension(1:n) :: a,b
real(8) x
do i=1,n
  b(i) = a(i)-int(a(i)/3.0_8,kind=1)*x
enddo
end subroutine

subroutine fptrans_r8toi2(a,b,x,n)
real(8),dimension(1:n) :: a,b
real(8) x
do i=1,n
  b(i) = a(i)-int(a(i)/3.0_8,kind=2)*x
enddo
end subroutine

subroutine fptrans_r8toi4(a,b,x,n)
real(8),dimension(1:n) :: a,b
real(8) x
do i=1,n
  b(i) = a(i)-int(a(i)/3.0_8,kind=4)*x
enddo
end subroutine

subroutine fptrans_r8toi8(a,b,x,n)
real(8),dimension(1:n) :: a,b
real(8) x
do i=1,n
  b(i) = a(i)-int(a(i)/3.0_8,kind=8)*x
enddo
end subroutine

subroutine fptrans_r4()
integer,parameter :: n=100
real(4),dimension(1:n) :: r4a,r4b
real(4),parameter :: ans=1750.0_4, error=0.0_4
real(4) r4x
r4a = (/(real(i,kind=4),i=1,n)/)
r4x = 2.
call fptrans_r4toi1(r4a,r4b,r4x,n)
if (abs(sum(r4b) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(r4b) - ans
endif
call fptrans_r4toi2(r4a,r4b,r4x,n)
if (abs(sum(r4b) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(r4b) - ans
endif
call fptrans_r4toi4(r4a,r4b,r4x,n)
if (abs(sum(r4b) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(r4b) - ans
endif
call fptrans_r4toi8(r4a,r4b,r4x,n)
if (abs(sum(r4b) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(r4b) - ans
endif
end subroutine

subroutine fptrans_r8()
integer,parameter :: n=100
real(8),dimension(1:n) :: r8a,r8b
real(8),parameter :: ans=1750.0_8, error=0.0_8
real(8) r8x
r8a = (/(real(i,kind=8),i=1,n)/)
r8x = 2.
call fptrans_r8toi1(r8a,r8b,r8x,n)
if (abs(sum(r8b) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(r8b) - ans
endif
call fptrans_r8toi2(r8a,r8b,r8x,n)
if (abs(sum(r8b) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(r8b) - ans
endif
call fptrans_r8toi4(r8a,r8b,r8x,n)
if (abs(sum(r8b) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(r8b) - ans
endif
call fptrans_r8toi8(r8a,r8b,r8x,n)
if (abs(sum(r8b) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(r8b) - ans
endif
end subroutine

program main
call fptrans_r4()
call fptrans_r8()
end program
