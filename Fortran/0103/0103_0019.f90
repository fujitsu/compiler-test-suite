integer*4,parameter::a=10
integer,parameter::constvar(4)=DSHIFTL(b'1010',[1,2,78,3456],bit_size(a)-30)
integer,parameter::constvar1(4)=DSHIFTL([1,2,78,3456],z'0a',bit_size(a)-30)
if(any(constvar .ne. [40,40,40,40]))print*,"100"
if(any (constvar1 .ne. [4 ,8 ,312, 13824]))print*,"101"
print*,"PASS"
end
