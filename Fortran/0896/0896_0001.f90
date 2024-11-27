character(len=3) :: ch1
character(len=5), pointer :: ch2, ch3
ch1='abc'
allocate(ch3, ch2, SOURCE= ch1)
print*,ch2
ch2='abcde'
end
