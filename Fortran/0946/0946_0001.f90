program main
implicit none
integer,parameter::constvar(3)=SHIFTL([b'101',b'110',b'001'],[z'0a',z'0b',z'0c'])
print*,constvar
print*,SHIFTL([b'101',b'110',b'001'],[z'0a',z'0b',z'0c'])
end program main
