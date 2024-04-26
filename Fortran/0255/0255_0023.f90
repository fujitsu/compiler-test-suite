Program test
Real*4,parameter::num(4) =reshape([1.17549435E-40,1.17549435E-39,1.17549435E-39,1.17549435E-41],[4])
Real*4,parameter::num2(4,3) = 1.17549435E-40
Real*4::result1 = norm2(num)
Real*4::result2(3) = norm2(num2,1)
Real*4::result3(4) = norm2(num2,2)
if(result1.gt.1.17549435E-38)print*,"101"
if(result2(1).gt.1.17549435E-39)print*,"102"
if(result3(1).gt.1.17549435E-39)print*,"103"
print*,"pass"
end
