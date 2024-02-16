integer*4,parameter::a=10
integer*4,parameter::constvar(4)=DSHIFTR(b'1010',[1_4,2_4,78_4,3456_4],bit_size(a))
integer*4,parameter::constvar1(4)=DSHIFTR([1_4,2_4,78_4,3456_4],z'0a',bit_size(a))
if(any(constvar .ne. [10,10,10,10]))print*,"100"
if(any (constvar1 .ne. [1,2,78,3456]))print*,"101"
print*,"PASS"
end
