logical function equal_with_margin(a,b)
  real(4) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-6)
end function equal_with_margin

subroutine sub1(a,s,x,f)
real(4),dimension(1:2,1:4) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: f
x = f*matmul(transpose(a),s)
end subroutine

subroutine sub2(a,s,x,f)
real(4),dimension(1:2,1:4) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: tmp,f
do j=1,3
   do i=1,4
      tmp = 0.0_4
      do k=1,2
         tmp = tmp + a(k,i)*s(k,j)
      enddo
      x(i,j) = f*tmp
   enddo
enddo
end subroutine

subroutine sub3(a,s,x,f)
real(4),dimension(1:2,1:4) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4) :: tmp,f

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(2,1)*s(2,1)
x(1,1) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,2)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
x(2,1) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,3)*s(1,1)
tmp = tmp + a(2,3)*s(2,1)
x(3,1) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,4)*s(1,1)
tmp = tmp + a(2,4)*s(2,1)
x(4,1) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(2,1)*s(2,2)
x(1,2) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,2)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
x(2,2) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,3)*s(1,2)
tmp = tmp + a(2,3)*s(2,2)
x(3,2) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,4)*s(1,2)
tmp = tmp + a(2,4)*s(2,2)
x(4,2) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(2,1)*s(2,3)
x(1,3) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,2)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
x(2,3) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,3)*s(1,3)
tmp = tmp + a(2,3)*s(2,3)
x(3,3) = f*tmp

tmp = 0.0_4
tmp = tmp + a(1,4)*s(1,3)
tmp = tmp + a(2,4)*s(2,3)
x(4,3) = f*tmp
end subroutine

subroutine check_x(x,test_no)
real(4),dimension(1:4,1:3) :: x
real(4),dimension(1:4,1:3) :: ans = reshape((/37.9499969_4, 83.4899979_4, 129.029999_4, 174.570007_4, 83.4899979_4, 189.750000_4, 296.010010_4, 402.269989_4, 129.029999_4, 296.010010_4, 462.989990_4, 629.969971_4/),(/4,3/))
integer :: test_no
logical :: equal_with_margin
do j=1,3
   do i=1,4
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
real(4),dimension(1:2,1:4) :: a
real(4),dimension(1:2,1:3) :: s
real(4),dimension(1:4,1:3) :: x
real(4),parameter :: f=3.0_4

a = reshape((/(real(i,kind=4)*2.3_8,i=1,2*4)/),(/2,4/))
s = reshape((/(real(i,kind=4)*1.1_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub1(a,s,x,f)
call check_x(x,1)

a = reshape((/(real(i,kind=4)*2.3_8,i=1,2*4)/),(/2,4/))
s = reshape((/(real(i,kind=4)*1.1_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub2(a,s,x,f)
call check_x(x,2)

a = reshape((/(real(i,kind=4)*2.3_8,i=1,2*4)/),(/2,4/))
s = reshape((/(real(i,kind=4)*1.1_8,i=1,2*3)/),(/2,3/))
x = reshape((/(real(i,kind=4)*0.9_8,i=1,4*3)/),(/4,3/))
call sub3(a,s,x,f)
call check_x(x,3)

end program
