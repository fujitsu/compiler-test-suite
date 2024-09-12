 use, intrinsic :: ieee_arithmetic
 logical,parameter ::l=ieee_support_rounding(ieee_nearest)
 if(.not. l ) print *, l
 print *, "pass"
 end
