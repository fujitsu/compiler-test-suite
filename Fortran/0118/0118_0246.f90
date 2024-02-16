subroutine sub1(a,s,x)
real(8),dimension(1:3,1:2) :: a
real(8),dimension(1:2) :: s
real(8),dimension(1:3) :: x
real(8) :: alpha
alpha=4.0_8
x = alpha*matmul(a,s)
end subroutine

subroutine sub2(a,s,x)
real(8),dimension(1:3,1:2) :: a
real(8),dimension(1:2) :: s
real(8),dimension(1:3) :: x
real(8) :: alpha
real(8) :: tmp
alpha=4.0_8
do j=1,3
   tmp = 0.0
   do i=1,2
      tmp = tmp + a(j,i)*s(i)
   enddo
   x(j) = tmp*alpha
enddo
end subroutine

subroutine sub3(a,s,x)
real(8),dimension(1:3,1:2) :: a
real(8),dimension(1:2) :: s
real(8),dimension(1:3) :: x
real(8) :: alpha
real(8) :: prg1,prg2,prg3
alpha=4.0_8
prg1 = 0.0
prg1 = prg1 + a(1,1)*s(1)
prg1 = prg1 + a(1,2)*s(2)
x(1) = prg1*alpha

prg2 = 0.0
prg2 = prg2 + a(2,1)*s(1)
prg2 = prg2 + a(2,2)*s(2)
x(2) = prg2*alpha

prg3 = 0.0
prg3 = prg3 + a(3,1)*s(1)
prg3 = prg3 + a(3,2)*s(2)
x(3) = prg3*alpha
end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:3) :: x
real(8),dimension(1:3) :: ans = (/3.240000000000000E-02_8,4.320000000000000E-02_8,5.399999999999999E-02_8/)
real(8),parameter :: error = 7.55999953508378E-02_8
integer :: test_no
do i=1,3
   if (abs(x(i)-ans(i)) .ge. error) then
      print *,"test_no=",test_no,", ng: i=",i,": ", x(i),ans(i),abs(x(i)-ans(i)),error
      print *,x
      return
   endif
enddo
print *,"ok"
end subroutine

program main
real(8),dimension(1:3,1:2) :: a
real(8),dimension(1:2) :: s
real(8),dimension(1:3) :: x
a = reshape((/(real(i,kind=8)*0.03_8,i=1,3*2)/),(/3,2/))
s = (/(real(i,kind=8)*0.03_8,i=1,2)/)
x = (/(real(i,kind=8)*0.03_8,i=4,6)/)
call sub1(a,s,x)
call check_x(x,1)
a = reshape((/(real(i,kind=8)*0.03_8,i=1,3*2)/),(/3,2/))
s = (/(real(i,kind=8)*0.03_8,i=1,2)/)
x = (/(real(i,kind=8)*0.03_8,i=4,6)/)
call sub2(a,s,x)
call check_x(x,2)
a = reshape((/(real(i,kind=8)*0.03_8,i=1,3*2)/),(/3,2/))
s = (/(real(i,kind=8)*0.03_8,i=1,2)/)
x = (/(real(i,kind=8)*0.03_8,i=4,6)/)
call sub3(a,s,x)
call check_x(x,3)
end program
