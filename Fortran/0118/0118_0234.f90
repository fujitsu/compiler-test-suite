logical function equal_with_margin(a,b)
  real(4) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-6)
end function equal_with_margin

subroutine sub1(a,s,x)
real(4),dimension(1:3,1:3) :: a
real(4),dimension(1:3) :: s,x
x = 3.3_4*matmul(transpose(a),s)
end subroutine

subroutine sub2(a,s,x)
real(4),dimension(1:3,1:3) :: a
real(4),dimension(1:3) :: s,x
real(4) :: tmp
do j=1,3
   tmp = 0.0
   do i=1,3
      tmp = tmp + a(i,j)*s(i)
   enddo
   x(j) = tmp*3.3_4
enddo
end subroutine

subroutine sub3(a,s,x)
real(4),dimension(1:3,1:3) :: a
real(4),dimension(1:3) :: s,x
real(4) :: prg1,prg2,prg3
prg1 = 0.0
prg1 = prg1 + a(1,1)*s(1)
prg1 = prg1 + a(2,1)*s(2)
prg1 = prg1 + a(3,1)*s(3)
x(1) = prg1*3.3_4

prg2 = 0.0
prg2 = prg2 + a(1,2)*s(1)
prg2 = prg2 + a(2,2)*s(2)
prg2 = prg2 + a(3,2)*s(3)
x(2) = prg2*3.3_4

prg3 = 0.0
prg3 = prg3 + a(1,3)*s(1)
prg3 = prg3 + a(2,3)*s(2)
prg3 = prg3 + a(3,3)*s(3)
x(3) = prg3*3.3_4
end subroutine

subroutine check_x(x,test_no)
real(4),dimension(1:3) :: x
real(4),dimension(1:3) :: ans = (/4.15799953E-02_4,9.50399935E-02_4,0.148499995_4/)
integer :: test_no
logical :: equal_with_margin
do i=1,3
   if (equal_with_margin(x(i),ans(i))) then
      print *,"test_no=",test_no,", ng: i=",i,": ", x(i),ans(i)
      print *,x
      return
   endif
enddo
print *,"ok"
end subroutine

program main
real(4),dimension(1:3,1:3) :: a
real(4),dimension(1:3) :: s,x
a = reshape((/(real(i,kind=4)*0.03_4,i=1,3*3)/),(/3,3/))
s = (/(real(i,kind=4)*0.03_4,i=1,3)/)
x = (/(real(i,kind=4)*0.03_4,i=4,6)/)
call sub1(a,s,x)
call check_x(x,1)
a = reshape((/(real(i,kind=4)*0.03_4,i=1,3*3)/),(/3,3/))
s = (/(real(i,kind=4)*0.03_4,i=1,3)/)
x = (/(real(i,kind=4)*0.03_4,i=4,6)/)
call sub2(a,s,x)
call check_x(x,2)
a = reshape((/(real(i,kind=4)*0.03_4,i=1,3*3)/),(/3,3/))
s = (/(real(i,kind=4)*0.03_4,i=1,3)/)
x = (/(real(i,kind=4)*0.03_4,i=4,6)/)
call sub3(a,s,x)
call check_x(x,3)
end program