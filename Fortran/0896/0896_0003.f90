integer, parameter :: a=2,b=3
character(len=a) :: ch1
character(len=b), allocatable :: ch2, ch3
allocate(ch2, ch3, SOURCE= ch1)
print*,len(ch1), len(ch2), len(ch3)
end
