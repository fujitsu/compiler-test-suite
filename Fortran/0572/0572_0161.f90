character(len = 10) :: ch,ch0(0),ch1(3),ch2(3,4)
character(len = 20) :: ch_20,ch0_20(0),ch1_20(3),ch2_20(3,4)

if(rank(ch) /= 0) print*, "101"        
if(rank(ch0) /= 1) print*, "102"        
if(rank(ch1) /= 1) print*, "103"        
if(rank(ch2) /= 2) print*, "104"        

if(rank(ch_20) /= 0) print*, "105"        
if(rank(ch0_20) /= 1) print*, "106"        
if(rank(ch1_20) /= 1) print*, "107"        
if(rank(ch2_20) /= 2) print*, "108"        

print*,"PASS"
end

        
