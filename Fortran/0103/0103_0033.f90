integer*4,parameter::constvar(4)=DSHIFTR([1_4,-4_4,-1_4,1_4],[0_4,4_4,3_4,-0_4],[1_4,0_4,0_4,32_4])
integer,parameter::constvar1(4)=DSHIFTR([1_2,-4_2,-1_2,1_2],[0_2,4_2,3_2,-0_2],[1_2,0_2,0_2,16_2])
integer,parameter::constvar2(4)=DSHIFTR([1_1,-4_1,-1_1,1_1],[0_1,4_1,3_1,-0_1],[1_1,0_1,0_1,8_1])
integer*8,parameter::constvar3(4)=DSHIFTR([1_8,-4_8,-1_8,1_8],[0_8,4_8,3_8,-0_8],[1_8,0_8,0_8,64_8])
if(any(constvar .ne. [-2147483648_4,4_4,3_4,1_4]))print*,'100'
if(any(constvar1 .ne. [-32768_2 ,4_2, 3_2, 1_2]))print*,'101'
if(any(constvar2 .ne. [-128, 4, 3, 1]))print*,'102'
if(any(constvar3 .ne. [-9223372036854775808_8, 4_8 ,3_8, 1_8]))print*,'103'
print*,"PASS"
end

