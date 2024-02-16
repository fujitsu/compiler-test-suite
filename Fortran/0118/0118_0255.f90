subroutine sub1(a,s,x)
real(8),dimension(1:3,1:4) :: a
real(8),dimension(1:3) :: s
real(8),dimension(1:4) :: x
x = matmul(transpose(a),s)
end subroutine

subroutine sub2(a,s,x)
real(8),dimension(1:3,1:4) :: a
real(8),dimension(1:3) :: s
real(8),dimension(1:4) :: x
real(8) :: tmp
do j=1,4
   tmp = 0.0
   do i=1,3
      tmp = tmp + a(i,j)*s(i)
   enddo
   x(j) = tmp
enddo
end subroutine

subroutine sub3(a,s,x)
real(8),dimension(1:3,1:4) :: a
real(8),dimension(1:3) :: s
real(8),dimension(1:4) :: x
real(8) :: prg1,prg2,prg3,prg4
prg1 = 0.0
prg1 = prg1 + a(1,1)*s(1)
prg1 = prg1 + a(2,1)*s(2)
prg1 = prg1 + a(3,1)*s(3)
x(1) = prg1

prg2 = 0.0
prg2 = prg2 + a(1,2)*s(1)
prg2 = prg2 + a(2,2)*s(2)
prg2 = prg2 + a(3,2)*s(3)
x(2) = prg2

prg3 = 0.0
prg3 = prg3 + a(1,3)*s(1)
prg3 = prg3 + a(2,3)*s(2)
prg3 = prg3 + a(3,3)*s(3)
x(3) = prg3

prg4 = 0.0
prg4 = prg4 + a(1,4)*s(1)
prg4 = prg4 + a(2,4)*s(2)
prg4 = prg4 + a(3,4)*s(3)
x(4) = prg4
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:4) :: x
real(8),dimension(1:4) :: ans = (/1.260000000000000_8,2.879999999999999_8,4.500000000000000_8,6.119999999999999_8/)
real(8),parameter :: error = 0.000000000000001_8
integer :: test_no
do i=1,4
   if (abs(x(i)-ans(i)) .ge. error) then
      print *,"test_no=",test_no,", ng: i=",i,": ", x(i),ans(i),abs(x(i)-ans(i)),error
      print *,x
      return
   endif
enddo
print *,"ok"
end subroutine

program main
real(8),dimension(1:3,1:4) :: a
real(8),dimension(1:3) :: s
real(8),dimension(1:4) :: x
a = reshape((/(real(i,kind=8)*0.3_8,i=1,3*4)/),(/3,4/))
s = (/(real(i,kind=8)*0.3_8,i=1,3)/)
x = (/(real(i,kind=8)*0.1_8,i=1,4)/)
call sub1(a,s,x)
call check_x(x,1)
a = reshape((/(real(i,kind=8)*0.3_8,i=1,3*4)/),(/3,4/))
s = (/(real(i,kind=8)*0.3_8,i=1,3)/)
x = (/(real(i,kind=8)*0.1_8,i=1,4)/)
call sub2(a,s,x)
call check_x(x,2)
a = reshape((/(real(i,kind=8)*0.3_8,i=1,3*4)/),(/3,4/))
s = (/(real(i,kind=8)*0.3_8,i=1,3)/)
x = (/(real(i,kind=8)*0.1_8,i=1,4)/)
call sub3(a,s,x)
call check_x(x,3)
end program
