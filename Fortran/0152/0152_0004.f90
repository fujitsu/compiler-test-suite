character*32768::ch1
character(65000)::ch2
data ch1(1:) /"1"/
data ch2(1:) /"1"/
if(len(ch1)/=32768) print *,'err'
if(len(ch2)/=65000) print *,'err'
print *,'pass'
end
