program pro
implicit none
real(kind=4) :: arr(2)
arr(1)= 1.0
arr(2)= 2.0
print*,BESSEL_Y0(x=arr)
print*,"pass"
end
