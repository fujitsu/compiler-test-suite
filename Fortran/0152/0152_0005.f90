character*32768::ch1
character(*)::ch2*65000
data ch1(:32768) /"1"/
data ch2(:65000) /"1"/
if(len(ch1)/=32768) print *,'err' 
if(len(ch2)/=65000) print *,'err' 
print *,'pass'
end
