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
integer::x1 = rank(a)        
integer::x2 = rank(arr)        
integer::x3 = rank(arr1)        
integer::x4 = rank(arr2)        
integer::x5 = rank(arr3)        
integer::x6 = rank(a_4)        
integer::x611 = rank(arr_4)        
integer::x7 = rank(arr1_4)        
integer::x8 = rank(arr2_4)        
integer::x9 = rank(arr3_4)        
integer::x10 = rank(arr3_4)        
integer::x11 = rank(a_8)        
integer::x12 = rank(arr_8)        
integer::x13 = rank(arr1_8)        
integer::x14 = rank(arr2_8)        
integer::x15 = rank(arr3_8)        
integer::x16 = rank(re)        
integer::x17= rank(re0)        
integer::x18 = rank(re1)        
integer::x19 = rank(re2)        
integer::x20 = rank(re3)        
integer::x22= rank(re_8)        
integer::x23 = rank(re0_8)        
integer::x24 = rank(re1_8)        
integer::x25 = rank(re2_8)        
integer::x26 = rank(re3_8)        
integer::x27 = rank(re_16)        
integer::x28 = rank(re0_16)        
integer::x29 = rank(re1_16)        
integer::x30 = rank(re2_16)        
integer::x31 = rank(re3_16)        

integer::x32 = rank(cmp_4)        
integer::x33 = rank(cmp0_4)        
integer::x34 = rank(cmp1_4)        
integer::x35 = rank(cmp2_4)        
integer::x36 = rank(cmp3_4)        

integer::x37 = rank(cmp_8)        
integer::x38 = rank(cmp0_8)        
integer::x39 = rank(cmp1_8)        
integer::x40 = rank(cmp2_8)        
integer::x41 = rank(cmp3_8)        

integer::x42 = rank(cmp_16)        
integer::x43 = rank(cmp0_16)        
integer::x44 = rank(cmp1_16)        
integer::x45 = rank(cmp2_16)        
integer::x46 = rank(cmp3_16)        

integer::x47 = rank(logi_1)        
integer::x48= rank(logi0_1)        
integer::x49 = rank(logi1_1)        
integer::x50 = rank(logi2_1)        
integer::x51 = rank(logi3_1)        

integer::x52 = rank(logi_4)        
integer::x53= rank(logi0_4)        
integer::x54 = rank(logi1_4)        
integer::x55 = rank(logi2_4)        
integer::x56 = rank(logi3_4)        

integer::x57 = rank(logi_8)        
integer::x58= rank(logi0_8)        
integer::x59 = rank(logi1_8)        
integer::x60 = rank(logi2_8)        
integer::x61= rank(logi3_8)

integer::x62 = rank(ch_1)        
integer::x63= rank(ch0_1)        
integer::x64 = rank(ch1_1)        
integer::x65 = rank(ch2_1)        
integer::x66 = rank(ch3_1)

if(x1 /= 0) print*,"101"        
if(x2 /= 1) print*,"102"        
if(x3/= 1) print*,"103"        
if(x4/= 2) print*,"104"        
if(x5 /= 3) print*,"105"        

if(x6 /= 0) print*,"106"        
if(x7 /= 1) print*,"107"   
if(x611/=1) print*,"108"
if(x8 /= 2) print*,"108" ,x8      
if(x9 /= 3) print*,"109"  ,x9      
if(x10 /= 3) print*,"110"        

if(X11 /= 0) print*,"111"        
if(x12 /= 1) print*,"112"        
if(x13 /= 1) print*,"113"        
if(x14 /= 2) print*,"114"        
if(x15 /= 3) print*,"115"        

if(x16 /= 0) print*,"116"        
if(x17 /= 1) print*,"117"        
if(x18 /= 1) print*,"118"        
if(x19 /= 2) print*,"119"        
if(x20 /= 3) print*,"120"

if(x22 /= 0) print*,"121"        
if(x23 /= 1) print*,"122"        
if(x24/= 1) print*,"123"        
if(x25 /= 2) print*,"124"        
if(x26 /= 3) print*,"125"

if(x27 /= 0) print*,"126"        
if(x28 /= 1) print*,"127"        
if(x29 /= 1) print*,"128"        
if(x30 /= 2) print*,"129"        
if(x31 /= 3) print*,"130"

if(x32 /= 0) print*,"131"        
if(x33 /= 1) print*,"132"        
if(x34 /= 1) print*,"133"        
if(x35 /= 2) print*,"134"        
if(x36 /= 3) print*,"135"

if(x37 /= 0) print*,"136"        
if(x38 /= 1) print*,"137"        
if(x39 /= 1) print*,"138"        
if(x40 /= 2) print*,"139"        
if(x41 /= 3) print*,"140"

if(x42 /= 0) print*,"141"        
if(x43 /= 1) print*,"142"        
if(x44 /= 1) print*,"143"        
if(x45 /= 2) print*,"144"        
if(x46 /= 3) print*,"145"

if(x47 /= 0) print*,"146"        
if(x48 /= 1) print*,"147"        
if(x49 /= 1) print*,"148"        
if(x50 /= 2) print*,"149"        
if(x51 /= 3) print*,"150"

if(x52 /= 0) print*,"151"        
if(x53 /= 1) print*,"152"        
if(x54 /= 1) print*,"153"        
if(x55 /= 2) print*,"154"        
if(x56 /= 3) print*,"155"

if(x57 /= 0) print*,"156"        
if(x58 /= 1) print*,"157"        
if(x59 /= 1) print*,"158"        
if(x60 /= 2) print*,"159"        
if(x61/= 3) print*,"160"

if(x62 /= 0) print*,"161"        
if(x63 /= 1) print*,"162"        
if(x64/= 1) print*,"163"        
if(x65 /= 2) print*,"164"        
if(x66 /= 3) print*,"165"

print*, "PASS"
end


