Program test
Real*4,parameter::num(4) = reshape([1.17549435E-38, 3.40282347E+38 ,3.40282347E+38 , 1.17549435E-38],[4])
Real*4,parameter::num2(4,3) = reshape([1.17549435E-38, 3.40282347E+38,3.40282347E+38 , 1.17549435E-38,1.17549435E-38, 3.40282347E+38,1.17549435E-38, 3.40282347E+38,1.17549435E-38, 3.40282347E+38,1.17549435E-38, 3.40282347E+38],[4,3])
Real*4::result1 = norm2(num)
Real*4::result2(3) = norm2(num2,1)
Real*4::result3(4) = norm2(num2,2)
if(result1<=3.40282347E+38)print*,"101"
if(result2(1)<=3.40282347E+38)print*,"102"
if(result3(1)/=2.03601590E-38)print*,"103"
print*,"pass"
end
