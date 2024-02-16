subroutine sub1(a,s,x,m,k,n)
real(8),dimension(1:m,1:k) :: a
real(8),dimension(1:k,1:n) :: s
real(8),dimension(1:m,1:n) :: x
x = matmul(a,s)
end subroutine

subroutine check_sum(k,test_no)
real(8) :: k
real(8),dimension(1:4) :: ans  = (/552877.4999999999_8,1078.820000000000_8,84.41999999999999_8,84.41999999999999_8/)
real(8),dimension(1:4) :: error = (/1.164154E-10_8,2.273737E-13_8,0.0_8,0.0_8/)
integer :: test_no
if (abs(k-ans(test_no)) .gt. error(test_no)) then
   print *,"test_no=",test_no,", ng: i=",i,": res=", k,"ans=",ans(test_no),abs(k-ans(test_no)),error(test_no)
   print *,k
else
   print *,"ok"
endif
end subroutine

program main
real(8),dimension(1:10,1:10) :: a1
real(8),dimension(1:10,1:10) :: s1
real(8),dimension(1:10,1:10) :: x1
real(8),dimension(1:4,1:2) :: a2
real(8),dimension(1:2,1:3) :: s2
real(8),dimension(1:4,1:3) :: x2

a1 = reshape((/(real(i,kind=8)*0.3_8,i=1,10*10)/),(/10,10/))
s1 = reshape((/(real(i,kind=8)*0.7_8,i=1,10*10)/),(/10,10/))
x1 = reshape((/(real(i,kind=8)*0.2_8,i=1,10*10)/),(/10,10/))
call sub1(a1,s1,x1,10,10,10)
call check_sum(sum(x1),1)

a1 = reshape((/(real(i,kind=8)*0.3_8,i=1,10*10)/),(/10,10/))
s1 = reshape((/(real(i,kind=8)*0.7_8,i=1,10*10)/),(/10,10/))
x1 = reshape((/(real(i,kind=8)*0.2_8,i=1,10*10)/),(/10,10/))
call sub1(a1,s1,x1,4,2,3)
call check_sum(sum(x1),2)

a2 = reshape((/(real(i,kind=8)*0.3_8,i=1,4*2)/),(/4,2/))
s2 = reshape((/(real(i,kind=8)*0.7_8,i=1,2*3)/),(/2,3/))
x2 = reshape((/(real(i,kind=8)*0.2_8,i=1,4*3)/),(/4,3/))
call sub1(a2,s2,x2,4,2,3)
call check_sum(sum(x2),3)

a1 = reshape((/(real(i,kind=8)*0.3_8,i=1,10*10)/),(/10,10/))
s2 = reshape((/(real(i,kind=8)*0.7_8,i=1,2*3)/),(/2,3/))
x2 = reshape((/(real(i,kind=8)*0.2_8,i=1,4*3)/),(/4,3/))
call sub1(a1,s2,x2,4,2,3)
call check_sum(sum(x2),4)

end program
