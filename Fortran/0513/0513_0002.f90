 use, intrinsic :: ieee_arithmetic
 logical,parameter ::l=ieee_support_halting(IEEE_OVERFLOW)
 if(.not. l ) print *, l
 print *, "pass"
 end
