character*32768::ch1(2)
data ch1(1)(:) /"1"/
data ch1(2)(:) /"2"/
if(len(ch1(1))/=32768) print *,'err' 
if(len(ch1(2))/=32768) print *,'err' 
print *,"pass"
end
