use ieee_arithmetic
logical,parameter::p1 =ieee_support_flag(ieee_all(1))
logical,parameter::p2 =ieee_support_flag(ieee_usual(1))

logical ::res
res=ieee_support_flag(ieee_all(1))
if(res .neqv. p1) print*,"101"

res =ieee_support_flag(ieee_usual(1))
if(res .neqv. p2) print*,"102"

print*,"pass"
end
