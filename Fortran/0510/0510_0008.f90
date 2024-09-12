character(:),allocatable::ch1
character(:),allocatable::ch2(:)
allocate(ch1,source="xxx")
allocate(ch2(3),mold="abc")
ch1="xyz"
ch2="123"
if(ch1/="xyz") print *,'err1'
if(any(ch2/=["123","123","123"])) print *,'err2'
print *,'pass'
end
