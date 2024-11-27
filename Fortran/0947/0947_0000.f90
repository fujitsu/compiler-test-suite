program bgecheck
implicit none
logical,parameter::constvar(3)=BGE([b'101',b'110',b'001'],[z'0a',z'0b',z'0c'])
print*,constvar
end program bgecheck
