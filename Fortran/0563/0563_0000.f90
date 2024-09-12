IMPLICIT NONE
character :: ch1
character, allocatable :: ch2, ch3
ch1='H'
allocate(ch2, ch3, SOURCE= ch1)

if(ch2.ne.'H')print*,101
if(ch3.ne.'H')print*,102
if(len(ch2).ne.1)print*,103
if(len(ch3).ne.1)print*,104
print*,"pass"
end
