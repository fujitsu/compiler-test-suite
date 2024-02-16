subroutine sub1(a,s,x)
real(8),dimension(1:6,1:5) :: a
real(8),dimension(1:5,1:6) :: s
real(8),dimension(1:6,1:6) :: x
x = matmul(a,s)
end subroutine

subroutine sub2(a,s,x)
real(8),dimension(1:6,1:5) :: a
real(8),dimension(1:5,1:6) :: s
real(8),dimension(1:6,1:6) :: x
real(8) :: tmp
do j=1,6
   do i=1,6
      tmp = 0.0_8
      do k=1,5
         tmp = tmp + a(i,k)*s(k,j)
      enddo
      x(i,j) = tmp
   enddo
enddo
end subroutine

subroutine sub3(a,s,x)
real(8),dimension(1:6,1:5) :: a
real(8),dimension(1:5,1:6) :: s
real(8),dimension(1:6,1:6) :: x
real(8) :: tmp

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,1)
tmp = tmp + a(1,2)*s(2,1)
tmp = tmp + a(1,3)*s(3,1)
tmp = tmp + a(1,4)*s(4,1)
tmp = tmp + a(1,5)*s(5,1)
x(1,1) = tmp

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,1)
tmp = tmp + a(2,2)*s(2,1)
tmp = tmp + a(2,3)*s(3,1)
tmp = tmp + a(2,4)*s(4,1)
tmp = tmp + a(2,5)*s(5,1)
x(2,1) = tmp

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,1)
tmp = tmp + a(3,2)*s(2,1)
tmp = tmp + a(3,3)*s(3,1)
tmp = tmp + a(3,4)*s(4,1)
tmp = tmp + a(3,5)*s(5,1)
x(3,1) = tmp

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,1)
tmp = tmp + a(4,2)*s(2,1)
tmp = tmp + a(4,3)*s(3,1)
tmp = tmp + a(4,4)*s(4,1)
tmp = tmp + a(4,5)*s(5,1)
x(4,1) = tmp

tmp = 0.0_8
tmp = tmp + a(5,1)*s(1,1)
tmp = tmp + a(5,2)*s(2,1)
tmp = tmp + a(5,3)*s(3,1)
tmp = tmp + a(5,4)*s(4,1)
tmp = tmp + a(5,5)*s(5,1)
x(5,1) = tmp

tmp = 0.0_8
tmp = tmp + a(6,1)*s(1,1)
tmp = tmp + a(6,2)*s(2,1)
tmp = tmp + a(6,3)*s(3,1)
tmp = tmp + a(6,4)*s(4,1)
tmp = tmp + a(6,5)*s(5,1)
x(6,1) = tmp

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,2)
tmp = tmp + a(1,2)*s(2,2)
tmp = tmp + a(1,3)*s(3,2)
tmp = tmp + a(1,4)*s(4,2)
tmp = tmp + a(1,5)*s(5,2)
x(1,2) = tmp

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,2)
tmp = tmp + a(2,2)*s(2,2)
tmp = tmp + a(2,3)*s(3,2)
tmp = tmp + a(2,4)*s(4,2)
tmp = tmp + a(2,5)*s(5,2)
x(2,2) = tmp

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,2)
tmp = tmp + a(3,2)*s(2,2)
tmp = tmp + a(3,3)*s(3,2)
tmp = tmp + a(3,4)*s(4,2)
tmp = tmp + a(3,5)*s(5,2)
x(3,2) = tmp

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,2)
tmp = tmp + a(4,2)*s(2,2)
tmp = tmp + a(4,3)*s(3,2)
tmp = tmp + a(4,4)*s(4,2)
tmp = tmp + a(4,5)*s(5,2)
x(4,2) = tmp

tmp = 0.0_8
tmp = tmp + a(5,1)*s(1,2)
tmp = tmp + a(5,2)*s(2,2)
tmp = tmp + a(5,3)*s(3,2)
tmp = tmp + a(5,4)*s(4,2)
tmp = tmp + a(5,5)*s(5,2)
x(5,2) = tmp

tmp = 0.0_8
tmp = tmp + a(6,1)*s(1,2)
tmp = tmp + a(6,2)*s(2,2)
tmp = tmp + a(6,3)*s(3,2)
tmp = tmp + a(6,4)*s(4,2)
tmp = tmp + a(6,5)*s(5,2)
x(6,2) = tmp

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,3)
tmp = tmp + a(1,2)*s(2,3)
tmp = tmp + a(1,3)*s(3,3)
tmp = tmp + a(1,4)*s(4,3)
tmp = tmp + a(1,5)*s(5,3)
x(1,3) = tmp

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,3)
tmp = tmp + a(2,2)*s(2,3)
tmp = tmp + a(2,3)*s(3,3)
tmp = tmp + a(2,4)*s(4,3)
tmp = tmp + a(2,5)*s(5,3)
x(2,3) = tmp

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,3)
tmp = tmp + a(3,2)*s(2,3)
tmp = tmp + a(3,3)*s(3,3)
tmp = tmp + a(3,4)*s(4,3)
tmp = tmp + a(3,5)*s(5,3)
x(3,3) = tmp

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,3)
tmp = tmp + a(4,2)*s(2,3)
tmp = tmp + a(4,3)*s(3,3)
tmp = tmp + a(4,4)*s(4,3)
tmp = tmp + a(4,5)*s(5,3)
x(4,3) = tmp

tmp = 0.0_8
tmp = tmp + a(5,1)*s(1,3)
tmp = tmp + a(5,2)*s(2,3)
tmp = tmp + a(5,3)*s(3,3)
tmp = tmp + a(5,4)*s(4,3)
tmp = tmp + a(5,5)*s(5,3)
x(5,3) = tmp

tmp = 0.0_8
tmp = tmp + a(6,1)*s(1,3)
tmp = tmp + a(6,2)*s(2,3)
tmp = tmp + a(6,3)*s(3,3)
tmp = tmp + a(6,4)*s(4,3)
tmp = tmp + a(6,5)*s(5,3)
x(6,3) = tmp

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,4)
tmp = tmp + a(1,2)*s(2,4)
tmp = tmp + a(1,3)*s(3,4)
tmp = tmp + a(1,4)*s(4,4)
tmp = tmp + a(1,5)*s(5,4)
x(1,4) = tmp

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,4)
tmp = tmp + a(2,2)*s(2,4)
tmp = tmp + a(2,3)*s(3,4)
tmp = tmp + a(2,4)*s(4,4)
tmp = tmp + a(2,5)*s(5,4)
x(2,4) = tmp

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,4)
tmp = tmp + a(3,2)*s(2,4)
tmp = tmp + a(3,3)*s(3,4)
tmp = tmp + a(3,4)*s(4,4)
tmp = tmp + a(3,5)*s(5,4)
x(3,4) = tmp

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,4)
tmp = tmp + a(4,2)*s(2,4)
tmp = tmp + a(4,3)*s(3,4)
tmp = tmp + a(4,4)*s(4,4)
tmp = tmp + a(4,5)*s(5,4)
x(4,4) = tmp

tmp = 0.0_8
tmp = tmp + a(5,1)*s(1,4)
tmp = tmp + a(5,2)*s(2,4)
tmp = tmp + a(5,3)*s(3,4)
tmp = tmp + a(5,4)*s(4,4)
tmp = tmp + a(5,5)*s(5,4)
x(5,4) = tmp

tmp = 0.0_8
tmp = tmp + a(6,1)*s(1,4)
tmp = tmp + a(6,2)*s(2,4)
tmp = tmp + a(6,3)*s(3,4)
tmp = tmp + a(6,4)*s(4,4)
tmp = tmp + a(6,5)*s(5,4)
x(6,4) = tmp

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,5)
tmp = tmp + a(1,2)*s(2,5)
tmp = tmp + a(1,3)*s(3,5)
tmp = tmp + a(1,4)*s(4,5)
tmp = tmp + a(1,5)*s(5,5)
x(1,5) = tmp

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,5)
tmp = tmp + a(2,2)*s(2,5)
tmp = tmp + a(2,3)*s(3,5)
tmp = tmp + a(2,4)*s(4,5)
tmp = tmp + a(2,5)*s(5,5)
x(2,5) = tmp

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,5)
tmp = tmp + a(3,2)*s(2,5)
tmp = tmp + a(3,3)*s(3,5)
tmp = tmp + a(3,4)*s(4,5)
tmp = tmp + a(3,5)*s(5,5)
x(3,5) = tmp

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,5)
tmp = tmp + a(4,2)*s(2,5)
tmp = tmp + a(4,3)*s(3,5)
tmp = tmp + a(4,4)*s(4,5)
tmp = tmp + a(4,5)*s(5,5)
x(4,5) = tmp

tmp = 0.0_8
tmp = tmp + a(5,1)*s(1,5)
tmp = tmp + a(5,2)*s(2,5)
tmp = tmp + a(5,3)*s(3,5)
tmp = tmp + a(5,4)*s(4,5)
tmp = tmp + a(5,5)*s(5,5)
x(5,5) = tmp

tmp = 0.0_8
tmp = tmp + a(6,1)*s(1,5)
tmp = tmp + a(6,2)*s(2,5)
tmp = tmp + a(6,3)*s(3,5)
tmp = tmp + a(6,4)*s(4,5)
tmp = tmp + a(6,5)*s(5,5)
x(6,5) = tmp

tmp = 0.0_8
tmp = tmp + a(1,1)*s(1,6)
tmp = tmp + a(1,2)*s(2,6)
tmp = tmp + a(1,3)*s(3,6)
tmp = tmp + a(1,4)*s(4,6)
tmp = tmp + a(1,5)*s(5,6)
x(1,6) = tmp

tmp = 0.0_8
tmp = tmp + a(2,1)*s(1,6)
tmp = tmp + a(2,2)*s(2,6)
tmp = tmp + a(2,3)*s(3,6)
tmp = tmp + a(2,4)*s(4,6)
tmp = tmp + a(2,5)*s(5,6)
x(2,6) = tmp

tmp = 0.0_8
tmp = tmp + a(3,1)*s(1,6)
tmp = tmp + a(3,2)*s(2,6)
tmp = tmp + a(3,3)*s(3,6)
tmp = tmp + a(3,4)*s(4,6)
tmp = tmp + a(3,5)*s(5,6)
x(3,6) = tmp

tmp = 0.0_8
tmp = tmp + a(4,1)*s(1,6)
tmp = tmp + a(4,2)*s(2,6)
tmp = tmp + a(4,3)*s(3,6)
tmp = tmp + a(4,4)*s(4,6)
tmp = tmp + a(4,5)*s(5,6)
x(4,6) = tmp

tmp = 0.0_8
tmp = tmp + a(5,1)*s(1,6)
tmp = tmp + a(5,2)*s(2,6)
tmp = tmp + a(5,3)*s(3,6)
tmp = tmp + a(5,4)*s(4,6)
tmp = tmp + a(5,5)*s(5,6)
x(5,6) = tmp

tmp = 0.0_8
tmp = tmp + a(6,1)*s(1,6)
tmp = tmp + a(6,2)*s(2,6)
tmp = tmp + a(6,3)*s(3,6)
tmp = tmp + a(6,4)*s(4,6)
tmp = tmp + a(6,5)*s(5,6)
x(6,6) = tmp

end subroutine

subroutine check_x(x,test_no)
real(8),dimension(1:6,1:6) :: x
real(8),dimension(1:6,1:6) :: ans = reshape((/ &
     956.2500000000000_8, 1012.500000000000_8, 1068.750000000000_8, 1125.000000000000_8, &
     1181.250000000000_8, 1237.500000000000_8, 2175.000000000000_8, 2325.000000000000_8, &
     2475.000000000000_8, 2625.000000000000_8, 2775.000000000000_8, 2925.000000000000_8, &
     3393.750000000000_8, 3637.500000000000_8, 3881.250000000000_8, 4125.000000000000_8, &
     4368.750000000000_8, 4612.500000000000_8, 4612.500000000000_8, 4950.000000000000_8, &
     5287.500000000000_8, 5625.000000000000_8, 5962.500000000000_8, 6300.000000000000_8, &
     5831.250000000000_8, 6262.500000000000_8, 6693.750000000000_8, 7125.000000000000_8, &
     7556.250000000000_8, 7987.500000000000_8, 7050.000000000000_8, 7575.000000000000_8, &
     8100.000000000000_8, 8625.000000000000_8, 9150.000000000000_8, 9675.000000000000_8 &
     /),(/6,6/))
real(8),parameter :: error = 0.0_8
integer :: test_no
do j=1,6
   do i=1,6
      if (abs(x(i,j)-ans(i,j)) .gt. error) then
         print *,"test_no=",test_no,", ng: i=",i,": res=", x(i,j),"ans=",ans(i,j),abs(x(i,j)-ans(i,j)),error
         print *,x
         return
      endif
   enddo
enddo
print *,"ok"
end subroutine

program main
real(8),dimension(1:6,1:5) :: a
real(8),dimension(1:5,1:6) :: s
real(8),dimension(1:6,1:6) :: x

a = reshape((/(real(i,kind=8)*1.5_8,i=1,6*5)/),(/6,5/))
s = reshape((/(real(i,kind=8)*2.5_8,i=1,5*6)/),(/5,6/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,6*6)/),(/6,6/))
call sub1(a,s,x)
call check_x(x,1)

a = reshape((/(real(i,kind=8)*1.5_8,i=1,6*5)/),(/6,5/))
s = reshape((/(real(i,kind=8)*2.5_8,i=1,5*6)/),(/5,6/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,6*6)/),(/6,6/))
call sub2(a,s,x)
call check_x(x,2)

a = reshape((/(real(i,kind=8)*1.5_8,i=1,6*5)/),(/6,5/))
s = reshape((/(real(i,kind=8)*2.5_8,i=1,5*6)/),(/5,6/))
x = reshape((/(real(i,kind=8)*0.9_8,i=1,6*6)/),(/6,6/))
call sub3(a,s,x)
call check_x(x,3)

end program
