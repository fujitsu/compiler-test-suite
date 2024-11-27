character :: ch1
character, allocatable :: ch2
character(len=3), allocatable :: ch3
ch1='a'
allocate(ch2, ch3, SOURCE= ch1)
end
