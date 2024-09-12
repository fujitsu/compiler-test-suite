program pro
implicit none
real :: arr(2:-1)
arr= 3.0
        
if(SIZE(ERFC_SCALED(arr)).ne.0.0) print*,101
print*,"pass"
end
