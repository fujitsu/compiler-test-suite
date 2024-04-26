program pro
implicit none
real(16) :: arr(2,2)
real(16) :: x
arr(1,1)= 2.0
arr(1,2)= 3.0
arr(2,1)= 4.0
arr(2,2)= 5.0
x=NORM2(arr)
if(.not.(x<=7.4 .and. x>=7.2)) print*,101
print*,"pass"
end
