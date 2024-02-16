program merge_bits1
implicit none
integer::constvar
integer::merge_bits_check
constvar = merge_bits_check()
if(constvar .ne. 24)print*,"100"
print*,"PASS"
end program merge_bits1

function merge_bits_check()
implicit none
integer,parameter::a=10
integer,parameter::b=20
integer,parameter::c=-20
integer::merge_bits_check
integer,parameter::r=MERGE_BITS(a,b,c)
merge_bits_check=r
end function merge_bits_check
