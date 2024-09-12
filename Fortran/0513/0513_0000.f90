 use, intrinsic :: ieee_arithmetic
 integer,parameter ::i=ieee_selected_real_kind(6,30)
 if( i/=4) print *, i
 print *, "pass"
 end
