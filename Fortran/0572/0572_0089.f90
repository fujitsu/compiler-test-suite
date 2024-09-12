program pro
implicit none
real(kind=4) :: arr(2)
arr(1)= 10.0
arr(2)= 20.0
print*,ERFC_SCALED(x=arr)
print*,"pass"
end
