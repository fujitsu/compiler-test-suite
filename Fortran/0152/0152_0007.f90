character*32768::ch1
integer,parameter::ii=32768
data ch1(:ii) /"1"/
if(len(ch1)/=32768) print *,'err'
print *,'pass'
end
