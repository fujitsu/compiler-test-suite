program pro
implicit none
real(16) :: arr(2,2)
real(16) :: x(2,2)
arr(1,1)= 3.0
arr(1,2)= 4.0
arr(2,1)= 3.0
arr(2,2)= 2.8
x=LOG_GAMMA(arr(2,1))
if( .not.(x(2,1)>0.68 .and. x(2,1)<0.70))  print *,101,x
print*,"pass"
end
