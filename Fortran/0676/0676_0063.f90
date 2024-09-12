real(kind=8) function foo(a)
real(kind=8) :: q
real(kind=8),dimension(1:50) :: a
q = 0._8
do j=1,10
  do i=j,j+1
     q = q + a(i)
  enddo
enddo
foo = q
end function

program main
real(kind=8),dimension(1:50) :: a
real(kind=8) :: r, foo
integer(kind=8),parameter :: answer=20
a = 1.0_8
r = foo(a)
if (int(r,kind=4) == answer) then
  print *,"ok"
else
  print *,"ng",r
endif
end program
