character(10),allocatable::ch1,ch2(:)
call sss(ch1,ch2)
print *,'pass'
contains
subroutine sss(ch1,ch2)
namelist /axzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzxxxxxxxxxxxxxxxvvvvvvvvvvyy/ch1,ch2
character(*),allocatable::ch1,ch2(:)
allocate(ch1,ch2(2))

ch1="1234567890"
ch2="0987654321"

write(1,nml=axzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzxxxxxxxxxxxxxxxvvvvvvvvvvyy) 

rewind 1
if(ch1/="1234567890") print *,'err1'
if(any(ch2/=["0987654321","0987654321"])) print *,'err2'
end subroutine 

end
