Program test
Real*4,parameter::num(4) = 1.17549435E-38
Real*4,parameter::num2(4,3) = 1.17549435E-38
Real*8,parameter::numd(4) =  2.2250738585072014D-308
Real*8,parameter::numd2(4,3) = 2.2250738585072014D-308
Real*16,parameter::numq(4) = 3.362103143112093506262677817321752603Q-4932
Real*16,parameter::numq2(4,3) = 3.362103143112093506262677817321752603Q-4932
Real*4::rf = norm2(num)
Real*4::rf2(3) = norm2(num2,1)
Real*4::rf3(4) = norm2(num2,2)
Real*8::rd = norm2(numd)
Real*8::rd2(3) = norm2(numd2,1)
Real*8::rd3(4) = norm2(numd2,2)
Real*16::rq = norm2(numq)
Real*16::rq2(3) = norm2(numq2,1)
Real*16::rq3(4) = norm2(numq2,2)
if(rf.lt.1.17549435E-38)print*,"101",rf
if(rf2(1).lt.1.17549435E-38)print*,"102",rf2(1)
if(rf2(2).lt.1.17549435E-38)print*,"103",rf2(2)
if(rf2(3).lt.1.17549435E-38)print*,"103",rf2(3)
if(rf3(1).lt.1.17549435E-38)print*,"104",rf3(1)
if(rd.lt.2.2250738585072014D-308)print*,"105",rd
if(rd2(1).lt.2.2250738585072014D-308)print*,"106",rd2(1)
if(rd2(2).lt.2.2250738585072014D-308)print*,"107",rd2(3)
if(rd3(1).lt.2.2250738585072014D-308)print*,"108",rd3(1)
if(rq.lt.3.362103143112093506262677817321752603Q-4932)print*,"109",rq
if(rq2(1).lt.3.362103143112093506262677817321752603Q-4932)print*,"110",rq2(1)
if(rq2(3).lt.3.362103143112093506262677817321752603Q-4932)print*,"111",rq2(3)
if(rq3(1).lt.3.362103143112093506262677817321752603Q-4932)print*,"112",rq3(1)
print*,"pass"
end
