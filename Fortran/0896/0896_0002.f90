character(len=*),parameter :: ch1="ABC"
character(len=:), allocatable :: ch2
character(len=2), allocatable :: ch3
allocate(ch2, ch3, SOURCE= ch1)
print*,len(ch1), len(ch2), len(ch3)
end
