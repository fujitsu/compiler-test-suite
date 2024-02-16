subroutine sub1(a,s,x)
real(8),dimension(1:5,1:2) :: a
real(8),dimension(1:2) :: s
real(8),dimension(1:5) :: x
x = matmul(a,s)
end subroutine

subroutine sub2(a,s,x)
real(8),dimension(1:5,1:2) :: a
real(8),dimension(1:2) :: s
real(8),dimension(1:5) :: x
real(8) :: tmp
do j=1,5
   tmp = 0.0
   do i=1,2
      tmp = tmp + a(j,i)*s(i)
   enddo
   x(j) = tmp
enddo
end subroutine

subroutine sub3(a,s,x)
real(8),dimension(1:5,1:2) :: a
real(8),dimension(1:2) :: s
real(8),dimension(1:5) :: x
real(8) :: prg1,prg2,prg3,prg4,prg5
prg1 = 0.0
prg1 = prg1 + a(1,1)*s(1)
prg1 = prg1 + a(1,2)*s(2)
x(1) = prg1

prg2 = 0.0
prg2 = prg2 + a(2,1)*s(1)
prg2 = prg2 + a(2,2)*s(2)
x(2) = prg2

prg3 = 0.0
prg3 = prg3 + a(3,1)*s(1)
prg3 = prg3 + a(3,2)*s(2)
x(3) = prg3

prg4 = 0.0
prg4 = prg4 + a(4,1)*s(1)
prg4 = prg4 + a(4,2)*s(2)
x(4) = prg4

prg5 = 0.0
prg5 = prg5 + a(5,1)*s(1)
prg5 = prg5 + a(5,2)*s(2)
x(5) = prg5
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:5) :: x
real(8),dimension(1:5) :: ans = (/1.560000000000000_8,1.920000000000000_8,2.280000000000000_8,2.640000000000000_8,3.000000000000000_8/)
real(8),parameter :: error = 5.72204590376658E-08_8
integer :: test_no
do i=1,5
   if (abs(x(i)-ans(i)) .gt. error) then
      print *,"test_no=",test_no,", ng: i=",i,": ", x(i),ans(i),abs(x(i)-ans(i)),error
      print *,x
      return
   endif
enddo
print *,"ok"
end subroutine

program main
real(8),dimension(1:5,1:2) :: a
real(8),dimension(1:2) :: s
real(8),dimension(1:5) :: x
a = reshape((/(real(i,kind=8)*0.3_8,i=1,5*2)/),(/5,2/))
s = (/(real(i,kind=8)*0.4_8,i=1,2)/)
x = (/(real(i,kind=8)*1.0_8,i=1,5)/)
call sub1(a,s,x)
call check_x(x,1)
a = reshape((/(real(i,kind=8)*0.3_8,i=1,5*2)/),(/5,2/))
s = (/(real(i,kind=8)*0.4_8,i=1,2)/)
x = (/(real(i,kind=8)*1.0_8,i=1,5)/)
call sub2(a,s,x)
call check_x(x,2)
a = reshape((/(real(i,kind=8)*0.3_8,i=1,5*2)/),(/5,2/))
s = (/(real(i,kind=8)*0.4_8,i=1,2)/)
x = (/(real(i,kind=8)*1.0_8,i=1,5)/)
call sub3(a,s,x)
call check_x(x,3)
end program
