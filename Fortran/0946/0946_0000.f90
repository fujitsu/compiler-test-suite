program main
implicit none
integer,parameter::constvar(3)=SHIFTA([b'101',b'110',b'001'],[z'0a',z'0b',z'0c'])
integer,parameter::constvar1(3)=SHIFTL([b'101',b'110',b'001'],[z'0a',z'0b',z'0c'])
integer,parameter::constvar2(3)=SHIFTR([b'101',b'110',b'001'],[z'0a',z'0b',z'0c'])
print*,constvar
print*,constvar1
print*,constvar2
end program main
