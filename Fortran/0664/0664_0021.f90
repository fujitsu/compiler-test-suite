call s1
call s2
print *,'pass'
end
subroutine s1
complex*8 c8
complex*16 c16
complex*32 c32
c8=(1.0,1.0)
c16=(1.0_8,1.0_8)
c32=(1.0_16,1.0_16)
if(c8+(1.0,1.0).ne.(1.0,1.0)+c8) print *,'fail'
if(c16+(1.0,1.0).ne.(1.0,1.0)+c16) print *,'fail'
if(c16+(1.0_8,1.0_8).ne.(1.0_8,1.0_8)+c16) print *,'fail'
if(c32+(1.0,1.0).ne.(1.0,1.0)+c32) print *,'fail'
if(c32+(1.0_8,1.0_8).ne.(1.0_8,1.0_8)+c32) print *,'fail'
if(c32+(1.0_16,1.0_16).ne.(1.0_16,1.0_16)+c32) print *,'fail'

if(c8-(1.0,1.0).ne.(1.0,1.0)-c8) print *,'fail'
if(c16-(1.0,1.0).ne.(1.0,1.0)-c16) print *,'fail'
if(c16-(1.0_8,1.0_8).ne.(1.0_8,1.0_8)-c16) print *,'fail'
if(c32-(1.0,1.0).ne.(1.0,1.0)-c32) print *,'fail'
if(c32-(1.0_8,1.0_8).ne.(1.0_8,1.0_8)-c32) print *,'fail'
if(c32-(1.0_16,1.0_16).ne.(1.0_16,1.0_16)-c32) print *,'fail'

if(c8*(1.0,1.0).ne.(1.0,1.0)*c8) print *,'fail'
if(c16*(1.0,1.0).ne.(1.0,1.0)*c16) print *,'fail'
if(c16*(1.0_8,1.0_8).ne.(1.0_8,1.0_8)*c16) print *,'fail'
if(c32*(1.0,1.0).ne.(1.0,1.0)*c32) print *,'fail'
if(c32*(1.0_8,1.0_8).ne.(1.0_8,1.0_8)*c32) print *,'fail'
if(c32*(1.0_16,1.0_16).ne.(1.0_16,1.0_16)*c32) print *,'fail'

if(c8/(1.0,1.0).ne.(1.0,1.0)/c8) print *,'fail'
if(c16/(1.0,1.0).ne.(1.0,1.0)/c16) print *,'fail'
if(c16/(1.0_8,1.0_8).ne.(1.0_8,1.0_8)/c16) print *,'fail'
if(c32/(1.0,1.0).ne.(1.0,1.0)/c32) print *,'fail'
if(c32/(1.0_8,1.0_8).ne.(1.0_8,1.0_8)/c32) print *,'fail'
if(c32/(1.0_16,1.0_16).ne.(1.0_16,1.0_16)/c32) print *,'fail'
end

subroutine s2
complex*8 c8(2)
complex*16 c16(2)
complex*32 c32(2)
c8=(1.0,1.0)
c16=(1.0_8,1.0_8)
c32=(1.0_16,1.0_16)
if(any(c8+(1.0,1.0)/=(1.0,1.0)+c8)) print *,'fail'
if(any(c16+(1.0,1.0)/=(1.0,1.0)+c16)) print *,'fail'
if(any(c16+(1.0_8,1.0_8)/=(1.0_8,1.0_8)+c16)) print *,'fail'
if(any(c32+(1.0,1.0)/=(1.0,1.0)+c32)) print *,'fail'
if(any(c32+(1.0_8,1.0_8)/=(1.0_8,1.0_8)+c32)) print *,'fail'
if(any(c32+(1.0_16,1.0_16)/=(1.0_16,1.0_16)+c32)) print *,'fail'

if(any(c8-(1.0,1.0)/=(1.0,1.0)-c8)) print *,'fail'
if(any(c16-(1.0,1.0)/=(1.0,1.0)-c16)) print *,'fail'
if(any(c16-(1.0_8,1.0_8)/=(1.0_8,1.0_8)-c16)) print *,'fail'
if(any(c32-(1.0,1.0)/=(1.0,1.0)-c32)) print *,'fail'
if(any(c32-(1.0_8,1.0_8)/=(1.0_8,1.0_8)-c32)) print *,'fail'
if(any(c32-(1.0_16,1.0_16)/=(1.0_16,1.0_16)-c32)) print *,'fail'

if(any(c8*(1.0,1.0)/=(1.0,1.0)*c8)) print *,'fail'
if(any(c16*(1.0,1.0)/=(1.0,1.0)*c16)) print *,'fail'
if(any(c16*(1.0_8,1.0_8)/=(1.0_8,1.0_8)*c16)) print *,'fail'
if(any(c32*(1.0,1.0)/=(1.0,1.0)*c32)) print *,'fail'
if(any(c32*(1.0_8,1.0_8)/=(1.0_8,1.0_8)*c32)) print *,'fail'
if(any(c32*(1.0_16,1.0_16)/=(1.0_16,1.0_16)*c32)) print *,'fail'

if(any(c8/(1.0,1.0)/=(1.0,1.0)/c8)) print *,'fail'
if(any(c16/(1.0,1.0)/=(1.0,1.0)/c16)) print *,'fail'
if(any(c16/(1.0_8,1.0_8)/=(1.0_8,1.0_8)/c16)) print *,'fail'
if(any(c32/(1.0,1.0)/=(1.0,1.0)/c32)) print *,'fail'
if(any(c32/(1.0_8,1.0_8)/=(1.0_8,1.0_8)/c32)) print *,'fail'
if(any(c32/(1.0_16,1.0_16)/=(1.0_16,1.0_16)/c32)) print *,'fail'
end



