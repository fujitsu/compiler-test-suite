logical,parameter::l2(3,3,3) = .true.
logical,parameter::l3(3,3,2) = .true.
logical,parameter::l4(3,2,3) = .true.
logical,parameter::l5(3,2,2) = .true.
logical,parameter::l12(2,1,1) = .true.
logical,parameter::l13(2,1,2) = .true.
logical,parameter::l14(2,2,1) = .true.
logical,parameter::l15(2,2,2) = .true.
logical,parameter::l20(3,3,3) = .false.
logical,parameter::l21(3,3,2) = .false.
logical,parameter::l22(3,2,3) = .false.
logical,parameter::l23(3,2,2) = .false.
logical,parameter::l24(2,1,1) = .false.
logical,parameter::l25(2,1,2) = .false.
logical,parameter::l26(2,2,1) = .false.
logical,parameter::l27(2,2,2) = .false.
logical,parameter::x5(3,3) = PARITY(l2,1)
logical,parameter::x6(3,3) = PARITY(l2,2)
logical,parameter::x7(3,3) = PARITY(l2,3)
logical,parameter::x8(3,2) = PARITY(l3,1)
logical,parameter::x9(3,2) = PARITY(l3,2)
logical,parameter::x10(3,3) = PARITY(l3,3)
logical,parameter::x17(2,3) = PARITY(l4,1)
logical,parameter::x18(3,3) = PARITY(l4,2)
logical,parameter::x19(3,2) = PARITY(l4,3)
logical,parameter::x27(2,2) = PARITY(l5,1)
logical,parameter::x28(3,2) = PARITY(l5,2)
logical,parameter::x29(3,2) = PARITY(l5,3)
logical,parameter::x25(1,1) = PARITY(l12,1)
logical,parameter::x126(2,1) = PARITY(l12,2)
logical,parameter::x226(2,1) = PARITY(l12,3)
logical,parameter::x127(1,2) = PARITY(l13,1)
logical,parameter::x128(2,2) = PARITY(l13,2)
logical,parameter::x228(2,1) = PARITY(l13,3)
logical,parameter::x217(2,1) = PARITY(l14,1)
logical,parameter::x218(2,1) = PARITY(l14,2)
logical,parameter::x219(2,2) = PARITY(l14,3)
logical,parameter::x227(2,2) = PARITY(l15,1)
logical,parameter::x230(2,2) = PARITY(l15,2)
logical,parameter::x229(2,2) = PARITY(l15,3)
logical,parameter::x51(3,3) = PARITY(l20,1)
logical,parameter::x61(3,3) = PARITY(l20,2)
logical,parameter::x71(3,3) = PARITY(l20,3)
logical,parameter::x81(3,2) = PARITY(l21,1)
logical,parameter::x91(3,2) = PARITY(l21,2)
logical,parameter::x110(3,3) = PARITY(l21,3)
logical,parameter::x171(2,3) = PARITY(l22,1)
logical,parameter::x181(3,3) = PARITY(l22,2)
logical,parameter::x191(3,2) = PARITY(l22,3)
logical,parameter::x271(2,2) = PARITY(l23,1)
logical,parameter::x281(3,2) = PARITY(l23,2)
logical,parameter::x291(3,2) = PARITY(l23,3)
logical,parameter::x251(1,1) = PARITY(l24,1)
logical,parameter::x1261(2,1) = PARITY(l24,2)
logical,parameter::x2261(2,1) = PARITY(l24,3)
logical,parameter::x270(1,2) = PARITY(l25,1)
logical,parameter::x1281(2,2) = PARITY(l25,2)
logical,parameter::x2181(2,1) = PARITY(l25,3)
logical,parameter::x2171(2,1) = PARITY(l26,1)
logical,parameter::x2180(2,1) = PARITY(l26,2)
logical,parameter::x2191(2,2) = PARITY(l26,3)
logical,parameter::x2271(2,2) = PARITY(l27,1)
logical,parameter::x2281(2,2) = PARITY(l27,2)
logical,parameter::x2291(2,2) = PARITY(l27,3)
if(any(x5 .neqv. PARITY(l2,1)))print*,"100"
if(any(x6 .neqv. PARITY(l2,2)))print*,"102"
if(any(x7 .neqv. PARITY(l2,3)))print*,"103"
if(any(x8.neqv.PARITY(l3,1)))print*,"104"
if(any(x9 .neqv.PARITY(l3,2)))print*,"105"
if(any(x10.neqv.PARITY(l3,3)))print*,"106"
if(any(x17 .neqv. PARITY(l4,1)))print*,"107"
if(any(x18 .neqv. PARITY(l4,2)))print*,"108"
if(any(x19 .neqv.PARITY(l4,3)))print*,"109"
if(any(x27 .neqv.PARITY(l5,1)))print*,"110"
if(any(x28 .neqv. PARITY(l5,2)))print*,"111"
if(any(x29 .neqv.PARITY(l5,3)))print*,"112"
if(any(x25 .neqv. PARITY(l12,1)))print*,"113"
if(any(x126 .neqv.PARITY(l12,2)))print*,"114"
if(any(x226 .neqv.PARITY(l12,3)))print*,"115"
if(any(x127 .neqv. PARITY(l13,1)))print*,"116"
if(any(x128 .neqv. PARITY(l13,2)))print*,"117"
if(any(x228 .neqv. PARITY(l13,3)))print*,"118"
if(any(x217 .neqv. PARITY(l14,1)))print*,"119"
if(any(x218 .neqv.PARITY(l14,2)))print*,"120"
if(any(x219.neqv.PARITY(l14,3)))print*,"121"
if(any(x227.neqv. PARITY(l15,1)))print*,"122"
if(any(x230 .neqv. PARITY(l15,2)))print*,"123"
if(any(x229 .neqv. PARITY(l15,3)))print*,"124"
if(any(x51 .neqv.PARITY(l20,1)))print*,"125"
if(any(x61 .neqv.PARITY(l20,2)))print*,"126"
if(any(x71 .neqv.PARITY(l20,3)))print*,"127"
if(any(x81.neqv. PARITY(l21,1)))print*,"128"
if(any(x91 .neqv. PARITY(l21,2)))print*,"130"
if(any(x110 .neqv. PARITY(l21,3)))print*,"131"
if(any(x171 .neqv. PARITY(l22,1)))print*,"132"
if(any(x181 .neqv. PARITY(l22,2)))print*,"133"
if(any(x191 .neqv. PARITY(l22,3)))print*,"134"
if(any(x271 .neqv. PARITY(l23,1)))print*,"135"
if(any(x281 .neqv. PARITY(l23,2)))print*,"136"
if(any(x291 .neqv. PARITY(l23,3)))print*,"137"
if(any(x251 .neqv. PARITY(l24,1)))print*,"138"
if(any(x1261 .neqv. PARITY(l24,2)))print*,"139"
if(any(x2261 .neqv. PARITY(l24,3)))print*,"140"
if(any(x270 .neqv. PARITY(l25,1)))print*,"141"
if(any(x1281 .neqv. PARITY(l25,2)))print*,"142"
if(any(x2181 .neqv. PARITY(l25,3)))print*,"143"
if(any(x2171.neqv. PARITY(l26,1)))print*,"144"
if(any(x2180 .neqv. PARITY(l26,2)))print*,"145"
if(any(x2191 .neqv. PARITY(l26,3)))print*,"146"
if(any(x2271 .neqv. PARITY(l27,1)))print*,"147"
if(any(x2281 .neqv. PARITY(l27,2)))print*,"148"
if(any(x2291 .neqv. PARITY(l27,3)))print*,"149"
print*,"PASS"
end

