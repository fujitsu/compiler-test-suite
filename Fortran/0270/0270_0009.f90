complex(kind=2)::cc2
cc2=(15.44_2,50.5_2)
d=(123.45_2,456.78_2)
if(real((123.45_2,456.78_2),KIND =4) /= 123.45_2) print*,"101"
if(real((123.45_2,456.78_2),KIND =8) /= 123.45_2) print*,"102"
if(real((123.45_2,456.78_2),KIND =16) /= 123.45_2) print*,"103"
if(real((123.45_2,456.78_2),KIND =2) /= 123.45_2) print*,"104"
if(real((123.45_2,456.78_2)) /= 123.45_2) print*,"105"
if (kind(real((123.45_2,456.78_2),KIND =2))/=2)print *,107
print*,"PASS"
end
