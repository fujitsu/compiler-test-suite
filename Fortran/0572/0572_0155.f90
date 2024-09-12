integer(kind = 2) :: a,arr(0),arr1(3),arr2(2,3),arr3(2,3,4)
integer(kind = 4) :: a_4,arr_4(0),arr1_4(3),arr2_4(2,3),arr3_4(2,3,4)
integer(kind = 8) :: a_8,arr_8(0),arr1_8(3),arr2_8(2,3),arr3_8(2,3,4)

real(kind = 4) :: re,re0(0),re1(4),re2(2,4),re3(2,3,4)
real(kind = 8) :: re_8,re0_8(0),re1_8(4),re2_8(2,4),re3_8(2,3,4)
real(kind = 16) :: re_16,re0_16(0),re1_16(4),re2_16(2,4),re3_16(2,3,4)

complex(kind = 4) :: cmp_4, cmp0_4(0), cmp1_4(5),cmp2_4(4,5), cmp3_4(2,3,4)
complex(kind = 8) :: cmp_8, cmp0_8(0), cmp1_8(5),cmp2_8(4,5), cmp3_8(2,3,4)
complex(kind = 16) :: cmp_16, cmp0_16(0), cmp1_16(5),cmp2_16(4,5), cmp3_16(2,3,4)

logical(kind =1) :: logi_1,logi0_1(0),logi1_1(3),logi2_1(1,4),logi3_1(1,2,3)        
logical(kind =4) :: logi_4,logi0_4(0),logi1_4(3),logi2_4(1,4),logi3_4(1,2,3)        
logical(kind =8) :: logi_8,logi0_8(0),logi1_8(3),logi2_8(1,4),logi3_8(1,2,3)        

character(kind = 1) :: ch_1,ch0_1(0),ch1_1(3),ch2_1(4,5),ch3_1(4,5,6)        
        

if(rank(a) /= 0) print*,"101"        
if(rank(arr) /= 1) print*,"102"        
if(rank(arr1) /= 1) print*,"103"        
if(rank(arr2) /= 2) print*,"104"        
if(rank(arr3) /= 3) print*,"105"        

if(rank(a_4) /= 0) print*,"106"        
if(rank(arr_4) /= 1) print*,"107"        
if(rank(arr1_4) /= 1) print*,"108"        
if(rank(arr2_4) /= 2) print*,"109"        
if(rank(arr3_4) /= 3) print*,"110"        

if(rank(a_8) /= 0) print*,"111"        
if(rank(arr_8) /= 1) print*,"112"        
if(rank(arr1_8) /= 1) print*,"113"        
if(rank(arr2_8) /= 2) print*,"114"        
if(rank(arr3_8) /= 3) print*,"115"        

if(rank(re) /= 0) print*,"116"        
if(rank(re0) /= 1) print*,"117"        
if(rank(re1) /= 1) print*,"118"        
if(rank(re2) /= 2) print*,"119"        
if(rank(re3) /= 3) print*,"120"

if(rank(re_8) /= 0) print*,"121"        
if(rank(re0_8) /= 1) print*,"122"        
if(rank(re1_8) /= 1) print*,"123"        
if(rank(re2_8) /= 2) print*,"124"        
if(rank(re3_8) /= 3) print*,"125"

if(rank(re_16) /= 0) print*,"126"        
if(rank(re0_16) /= 1) print*,"127"        
if(rank(re1_16) /= 1) print*,"128"        
if(rank(re2_16) /= 2) print*,"129"        
if(rank(re3_16) /= 3) print*,"130"

if(rank(cmp_4) /= 0) print*,"131"        
if(rank(cmp0_4) /= 1) print*,"132"        
if(rank(cmp1_4) /= 1) print*,"133"        
if(rank(cmp2_4) /= 2) print*,"134"        
if(rank(cmp3_4) /= 3) print*,"135"

if(rank(cmp_8) /= 0) print*,"136"        
if(rank(cmp0_8) /= 1) print*,"137"        
if(rank(cmp1_8) /= 1) print*,"138"        
if(rank(cmp2_8) /= 2) print*,"139"        
if(rank(cmp3_8) /= 3) print*,"140"

if(rank(cmp_16) /= 0) print*,"141"        
if(rank(cmp0_16) /= 1) print*,"142"        
if(rank(cmp1_16) /= 1) print*,"143"        
if(rank(cmp2_16) /= 2) print*,"144"        
if(rank(cmp3_16) /= 3) print*,"145"

if(rank(logi_1) /= 0) print*,"146"        
if(rank(logi0_1) /= 1) print*,"147"        
if(rank(logi1_1) /= 1) print*,"148"        
if(rank(logi2_1) /= 2) print*,"149"        
if(rank(logi3_1) /= 3) print*,"150"

if(rank(logi_4) /= 0) print*,"151"        
if(rank(logi0_4) /= 1) print*,"152"        
if(rank(logi1_4) /= 1) print*,"153"        
if(rank(logi2_4) /= 2) print*,"154"        
if(rank(logi3_4) /= 3) print*,"155"

if(rank(logi_8) /= 0) print*,"156"        
if(rank(logi0_8) /= 1) print*,"157"        
if(rank(logi1_8) /= 1) print*,"158"        
if(rank(logi2_8) /= 2) print*,"159"        
if(rank(logi3_8) /= 3) print*,"160"

if(rank(ch_1) /= 0) print*,"161"        
if(rank(ch0_1) /= 1) print*,"162"        
if(rank(ch1_1) /= 1) print*,"163"        
if(rank(ch2_1) /= 2) print*,"164"        
if(rank(ch3_1) /= 3) print*,"165"

print*, "PASS"
end


