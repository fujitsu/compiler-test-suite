integer,parameter::constvar(3)=DSHIFTL([b'101',b'110',b'001'],[z'0a',z'0b',z'0c'],3)
integer,parameter::constvar1(3)=DSHIFTL([b'101',b'110',b'001'],[z'0a',z'0b',z'0c'],[z'0a',o'07',b'001'])
print*,constvar,constvar1
end
