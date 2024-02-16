logical function equal_with_margin(a,b)
  real(8) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-15_8)
end function equal_with_margin

subroutine sub1(a,s,x)
real(8),dimension(1:4,1:2) :: a
real(8),dimension(1:2,1:3) :: s
real(8),dimension(1:4,1:3) :: x
x = matmul(a,s)
end subroutine

subroutine sub2(a,s,x,m,k,n)
real(8),dimension(1:m,1:k) :: a
real(8),dimension(1:k,1:n) :: s
real(8),dimension(1:m,1:n) :: x
x = matmul(a,s)
end subroutine

subroutine check_sum(k,test_no)
real(8) :: k
real(8),dimension(1:2) :: ans  = (/6766.160000000000_8,6766.160000000000_8/)
logical :: equal_with_margin
integer :: test_no
if (equal_with_margin(k,ans(test_no))) then
   print *,"test_no=",test_no,": res=", k,"ans=",ans(test_no)
   print *,k
else
   print *,"ok"
endif
end subroutine

program main
real(8),dimension(1:10,1:10) :: a,b,c
a = reshape((/(real(i,kind=8)*0.3_8,i=1,10*10)/),(/10,10/))
b = reshape((/(real(i,kind=8)*0.7_8,i=1,10*10)/),(/10,10/))
c = reshape((/(real(i,kind=8)*0.2_8,i=1,10*10)/),(/10,10/))
call sub1(a(1:7:2,3:5:2),b(2:5:3,1:7:3),c(2:8:2,1:5:2))
call check_sum(sum(c),1)
a = reshape((/(real(i,kind=8)*0.3_8,i=1,10*10)/),(/10,10/))
b = reshape((/(real(i,kind=8)*0.7_8,i=1,10*10)/),(/10,10/))
c = reshape((/(real(i,kind=8)*0.2_8,i=1,10*10)/),(/10,10/))
call sub2(a(1:7:2,3:5:2),b(2:5:3,1:7:3),c(2:8:2,1:5:2),4,2,3)
call check_sum(sum(c),2)
end program
