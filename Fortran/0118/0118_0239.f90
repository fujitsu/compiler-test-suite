subroutine sub1(a,s,x)
real(8),dimension(1:6,1:5) :: a
real(8),dimension(1:5) :: s
real(8),dimension(1:6) :: x
x = matmul(a,s)
end subroutine

subroutine sub2(a,s,x)
real(8),dimension(1:6,1:5) :: a
real(8),dimension(1:5) :: s
real(8),dimension(1:6) :: x
real(8) :: tmp
do j=1,6
   tmp = 0.0
   do i=1,5
      tmp = tmp + a(j,i)*s(i)
   enddo
   x(j) = tmp
enddo
end subroutine

subroutine sub3(a,s,x)
real(8),dimension(1:6,1:5) :: a
real(8),dimension(1:5) :: s
real(8),dimension(1:6) :: x
real(8) :: prg1,prg2,prg3,prg4,prg5,prg6

prg1 = 0.0
prg1 = prg1 + a(1,1)*s(1)
prg1 = prg1 + a(1,2)*s(2)
prg1 = prg1 + a(1,3)*s(3)
prg1 = prg1 + a(1,4)*s(4)
prg1 = prg1 + a(1,5)*s(5)
x(1) = prg1

prg2 = 0.0
prg2 = prg2 + a(2,1)*s(1)
prg2 = prg2 + a(2,2)*s(2)
prg2 = prg2 + a(2,3)*s(3)
prg2 = prg2 + a(2,4)*s(4)
prg2 = prg2 + a(2,5)*s(5)
x(2) = prg2

prg3 = 0.0
prg3 = prg3 + a(3,1)*s(1)
prg3 = prg3 + a(3,2)*s(2)
prg3 = prg3 + a(3,3)*s(3)
prg3 = prg3 + a(3,4)*s(4)
prg3 = prg3 + a(3,5)*s(5)
x(3) = prg3

prg4 = 0.0
prg4 = prg4 + a(4,1)*s(1)
prg4 = prg4 + a(4,2)*s(2)
prg4 = prg4 + a(4,3)*s(3)
prg4 = prg4 + a(4,4)*s(4)
prg4 = prg4 + a(4,5)*s(5)
x(4) = prg4

prg5 = 0.0
prg5 = prg5 + a(5,1)*s(1)
prg5 = prg5 + a(5,2)*s(2)
prg5 = prg5 + a(5,3)*s(3)
prg5 = prg5 + a(5,4)*s(4)
prg5 = prg5 + a(5,5)*s(5)
x(5) = prg5

prg6 = 0.0
prg6 = prg6 + a(6,1)*s(1)
prg6 = prg6 + a(6,2)*s(2)
prg6 = prg6 + a(6,3)*s(3)
prg6 = prg6 + a(6,4)*s(4)
prg6 = prg6 + a(6,5)*s(5)
x(6) = prg6
end subroutine

logical function equal_with_margin(a,b)
  real(8) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0D-15)
end function equal_with_margin

subroutine check_x(x,test_no)
real(8),dimension(1:6) :: x
real(8),dimension(1:6) :: ans = (/30.60000000000000_8,32.40000000000001_8,34.20000000000000_8,36.00000000000000_8,37.80000000000000_8,39.60000000000000_8/)
integer :: test_no
logical :: equal_with_margin
do i=1,5
   if (equal_with_margin(x(i),ans(i))) then
      print *,"test_no=",test_no,", ng: i=",i,": ", x(i),ans(i),abs(x(i)-ans(i))
      print *,x
      return
   endif
enddo
print *,"ok"
end subroutine

program main
real(8),dimension(1:6,1:5) :: a
real(8),dimension(1:5) :: s
real(8),dimension(1:6) :: x
a = reshape((/(real(i,kind=8)*0.3_8,i=1,6*5)/),(/6,5/))
s = (/(real(i,kind=8)*0.4_8,i=1,5)/)
x = (/(real(i,kind=8)*1.0_8,i=1,6)/)
call sub1(a,s,x)
call check_x(x,1)
a = reshape((/(real(i,kind=8)*0.3_8,i=1,6*5)/),(/6,5/))
s = (/(real(i,kind=8)*0.4_8,i=1,5)/)
x = (/(real(i,kind=8)*1.0_8,i=1,6)/)
call sub2(a,s,x)
call check_x(x,2)
a = reshape((/(real(i,kind=8)*0.3_8,i=1,6*5)/),(/6,5/))
s = (/(real(i,kind=8)*0.4_8,i=1,5)/)
x = (/(real(i,kind=8)*1.0_8,i=1,6)/)
call sub3(a,s,x)
call check_x(x,3)
end program
