program pro
implicit none
real :: arr(5)
real :: x(0)
arr= 3.0
x=LOG_GAMMA(arr(3:2))
write(1,*) x
print*,"pass"
end
