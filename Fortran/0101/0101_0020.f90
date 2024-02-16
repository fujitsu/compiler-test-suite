integer*1,parameter::b(3)=[124_1,127_1,125_1]
integer*1,parameter::c(3)=[-128_1,-127_1,-126_1]
integer*1,parameter::d(3)=[-127_1,-128_1,-126_1]
integer*2,parameter::e(3)=[32767_2,32766_2,32765_2]
integer*2,parameter::f(3)=[32766_2,32767_2,32765_2]
integer*2,parameter::g(3)=[-32768_2,-32767_2,-32765_2]
integer*4,parameter::j(3)=[2147483646_4,2147483647_4,2147483645_4]
integer*4,parameter::k(3)=[-2147483648_4,-2147483647_4,-2147483648_4]
integer*4,parameter::l(3)=[-2147483647_4,-2147483648_4,-2147483648_4]
integer*8,parameter::ii(3)=[9223372036854775807_8,9223372036854775806_8,9223372036854775805_8]
integer*8,parameter::jj(3)=[9223372036854775806_8,9223372036854775807_8,9223372036854775805_8]
integer*8,parameter::kk(3)=[-9223372036854775808_8,-9223372036854775807_8,-9223372036854775806_8]
integer,parameter::constvar1(3)=MERGE_BITS(b,c,d)
integer,parameter::constvar2(3)=MERGE_BITS(e,f,g)
integer,parameter::constvar3(3)=MERGE_BITS(j,k,l)
integer*8,parameter::constvar4(3)=MERGE_BITS(ii,jj,kk)
integer,parameter::constvar5(3)=MERGE_BITS(d,j=b,mask=c)
integer,parameter::constvar6(3)=MERGE_BITS(i=f,j=e,mask=g)
integer,parameter::constvar7(3)=MERGE_BITS(k,j,mask=l)
if(any(constvar1 .ne. [0,1,0]))print*,"100"
if(any(constvar2 .ne. [ 32766,32766,32765]))print*,"101"
if(any(constvar3 .ne. [0,1,0]))print*,"102"
if(any(constvar4 .ne. [ 9223372036854775806_8, 9223372036854775806_8,9223372036854775805_8]))print*,"103"
if(any(constvar5 .ne. [-4,-2,-1]))print*,"104"
if(any(constvar6 .ne. [ 32767,32767,32765]))print*,"105"
if(any(constvar7 .ne. [-2,-1,-3]))print*,"106"
print*,"PASS"
end
