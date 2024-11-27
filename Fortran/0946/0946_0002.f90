program main
implicit none
integer,parameter::constvar(3)=SHIFTR([b'101',b'110',b'001'],[z'0a',z'0b',z'0c'])
print*,constvar
print*,SHIFTR([b'101',b'110',b'001'],[z'0a',z'0b',z'0c'])
end program main
