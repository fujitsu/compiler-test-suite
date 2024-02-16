logical function equal_with_margin(a,b)
  real(4) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-6)
end function equal_with_margin

subroutine sub1(a,s,x,f)
real(4),dimension(1:5,1:2) :: a
real(4),dimension(1:5,1:3) :: s
real(4),dimension(1:2,1:3) :: x
real(4) :: f
x = matmul(transpose(a),s) + f*x
end subroutine

subroutine sub2(a,s,x,f)
real(4),dimension(1:5,1:2) :: a
real(4),dimension(1:5,1:3) :: s
real(4),dimension(1:2,1:3) :: x
real(4) :: tmp,f
do j=1,3
   do i=1,2
      tmp = 0.0_4
      do k=1,5
         tmp = tmp + a(k,i)*s(k,j)
      enddo
      x(i,j) = tmp + f*x(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,f)
real(4),dimension(1:5,1:2) :: a
real(4),dimension(1:5,1:3) :: s
real(4),dimension(1:2,1:3) :: x
real(4) :: tmp,f

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(2,1)*s(2,1)
tmp = tmp + a(3,1)*s(3,1)
tmp = tmp + a(4,1)*s(4,1)
tmp = tmp + a(5,1)*s(5,1)
x(1,1) = tmp + f*x(1,1)

tmp = 0.0_4
tmp = tmp + a(1,2)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
tmp = tmp + a(3,2)*s(3,1)
tmp = tmp + a(4,2)*s(4,1)
tmp = tmp + a(5,2)*s(5,1)
x(2,1) = tmp + f*x(2,1)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(2,1)*s(2,2)
tmp = tmp + a(3,1)*s(3,2)
tmp = tmp + a(4,1)*s(4,2)
tmp = tmp + a(5,1)*s(5,2)
x(1,2) = tmp + f*x(1,2)

tmp = 0.0_4
tmp = tmp + a(1,2)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
tmp = tmp + a(3,2)*s(3,2)
tmp = tmp + a(4,2)*s(4,2)
tmp = tmp + a(5,2)*s(5,2)
x(2,2) = tmp + f*x(2,2)

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(2,1)*s(2,3)
tmp = tmp + a(3,1)*s(3,3)
tmp = tmp + a(4,1)*s(4,3)
tmp = tmp + a(5,1)*s(5,3)
x(1,3) = tmp + f*x(1,3)

tmp = 0.0_4
tmp = tmp + a(1,2)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
tmp = tmp + a(3,2)*s(3,3)
tmp = tmp + a(4,2)*s(4,3)
tmp = tmp + a(5,2)*s(5,3)
x(2,3) = tmp + f*x(2,3)
end subroutine

subroutine check_x(x,test_no)
real(4),dimension(1:2,1:3) :: x
integer test_no
real(4),dimension(1:2,1:3) :: ans = reshape((/11.2200003_4, 25.4399986_4, 28.4099979_4, 61.3800011_4, 45.6000023_4, 97.3200073_4/),(/2,3/))
logical :: equal_with_margin
do j=1,3
   do i=1,2
      if (equal_with_margin(x(i,j),ans(i,j))) then
         print *,"test_no=",test_no,", ng: i=",i,": res=", x(i,j),"ans=",ans(i,j)
         print *,x
         return
      endif
   enddo
enddo
print *,"ok"
end subroutine

program main
real(4),dimension(1:5,1:2) :: a
real(4),dimension(1:5,1:3) :: s
real(4),dimension(1:2,1:3) :: x
real(4),parameter :: f=3.3_4

a = reshape((/(real(i,kind=4)*0.3_8,i=1,5*2)/),(/5,2/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,2*3)/),(/2,3/))
call sub1(a,s,x,f)
call check_x(x,1)

a = reshape((/(real(i,kind=4)*0.3_8,i=1,5*2)/),(/5,2/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,2*3)/),(/2,3/))
call sub2(a,s,x,f)
call check_x(x,2)

a = reshape((/(real(i,kind=4)*0.3_8,i=1,5*2)/),(/5,2/))
s = reshape((/(real(i,kind=4)*0.5_8,i=1,5*3)/),(/5,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,2*3)/),(/2,3/))
call sub3(a,s,x,f)
call check_x(x,3)
end program
