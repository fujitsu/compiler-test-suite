complex(kind=2)::d
d=(123.45_2,456.78_2)
if(real(d,KIND =4) /= 123.45_2) print*,"101"
if(real(d,KIND =8) /= 123.45_2) print*,"102"
if(real(d,KIND =16) /= 123.45_2) print*,"103"
if(real(d,KIND =2) /= 123.45_2) print*,"104"
if(real(d) /= 123.45_2) print*,"105"
if(abs(real((123.45_2,456.78_2),KIND =4) - 123.45)>0.2) print*,"201",real(real((123.45_2,456.78_2)),4)
if(abs(real((123.45_2,456.78_2),KIND =8) - 123.45)>0.2) print*,"202"
if(abs(real((123.45_2,456.78_2),KIND =16) - 123.45)>0.2) print*,"203"
if(abs(real((123.45_2,456.78_2),KIND =2) - 123.45)>0.2) print*,"204"
if(abs(real((123.45_2,456.78_2)) - 123.45)>0.2) print*,"205"
print*,"PASS"
end
