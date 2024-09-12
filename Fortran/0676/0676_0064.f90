real(kind=8) function foo1(a)
real(kind=8) :: q
real(kind=8),dimension(1:10000) :: a
q = 0._8
do j=1,10
  do i=j,j+4
     q = q + a(i)
  enddo
enddo
foo1 = q
end function

real(kind=8) function foo2(a)
real(kind=8) :: q
real(kind=8),dimension(1:10000) :: a
q = 0._8
do j=1,10
  do i=j,j+100
     q = q + a(i)
  enddo
enddo
foo2 = q
end function

program main
real(kind=8),dimension(1:10000) :: a
real(kind=8) :: r, foo1, foo2
integer(kind=8),parameter :: answer1=50
integer(kind=8),parameter :: answer2=1010
a = 1.0_8
r = foo1(a)
if (int(r,kind=4) == answer1) then
  print *,"ok"
else
  print *,"ng",r
endif
r = foo2(a)
if (int(r,kind=4) == answer2) then
  print *,"ok"
else
  print *,"ng",r
endif
end program
