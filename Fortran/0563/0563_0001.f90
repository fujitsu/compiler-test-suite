character(len=3) :: ch1
character(len=:), allocatable :: ch2, ch3
ch1="XYZ"
allocate(ch2, ch3, SOURCE= ch1)
if(ch2.ne.'XYZ')print*,101
if(ch3.ne.'XYZ')print*,102
if(len(ch2).ne.3)print*,103
if(len(ch3).ne.3)print*,104
print*,"pass"
end
