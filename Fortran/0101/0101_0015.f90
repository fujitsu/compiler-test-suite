integer,parameter::k(1:0)=12
integer,parameter::x(0) = merge_bits(k,k,k)
integer,parameter::x1(0) = merge_bits(k,18,48)
if(any(x .ne. merge_bits(k,k,k)))print*,"100"
if(any(x1 .ne. merge_bits(k,18,48)))print*,"101"
print*,"PASS"
end
