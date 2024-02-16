logical,parameter::l2(21,2010) = .true.
logical,parameter::l3(20,2011) = .true.
logical,parameter::l4(20,2000) = .true.
logical,parameter::l5(21,2001) = .true.
logical,parameter::l12(21,2010) = .false.
logical,parameter::l13(20,2011) = .false.
logical,parameter::l14(20,2000) = .false.
logical,parameter::l15(21,2001) = .false.
logical,parameter::x5(2010) = PARITY(l2,1)
logical,parameter::x6(21) = PARITY(l2,2)
logical,parameter::x7(2011) = PARITY(l3,1)
logical,parameter::x8(20) = PARITY(l3,2)
logical,parameter::x17(2000) = PARITY(l4,1)
logical,parameter::x18(20) = PARITY(l4,2)
logical,parameter::x27(2001) = PARITY(l5,1)
logical,parameter::x28(21) = PARITY(l5,2)
logical,parameter::x25(2010) = PARITY(l12,1)
logical,parameter::x126(21) = PARITY(l12,2)
logical,parameter::x127(2011) = PARITY(l13,1)
logical,parameter::x128(20) = PARITY(l13,2)
logical,parameter::x217(2000) = PARITY(l14,1)
logical,parameter::x218(20) = PARITY(l14,2)
logical,parameter::x227(2001) = PARITY(l15,1)
logical,parameter::x228(21) = PARITY(l15,2)
if(any(PARITY(l2,1).neqv.x5))print*,"101"
if(any(PARITY(l2,2).neqv.x6))print*,"102"
if(any(PARITY(l3,1).neqv.x7))print*,"103"
if(any(PARITY(l3,2).neqv.x8))print*,"104"
if(any(PARITY(l4,1).neqv.x17))print*,"113"
if(any(PARITY(l4,2).neqv.x18))print*,"114"
if(any(PARITY(l5,1).neqv.x27))print*,"113"
if(any(PARITY(l5,2).neqv.x28))print*,"114"
if(any(PARITY(l12,1).neqv.x25))print*,"101"
if(any(PARITY(l12,2).neqv.x126))print*,"102"
if(any(PARITY(l13,1).neqv.x127))print*,"103"
if(any(PARITY(l13,2).neqv.x128))print*,"104"
if(any(PARITY(l14,1).neqv.x217))print*,"113"
if(any(PARITY(l14,2).neqv.x218))print*,"114"
if(any(PARITY(l15,1).neqv.x227))print*,"113"
if(any(PARITY(l15,2).neqv.x228))print*,"114"
print*,"PASS"
end

