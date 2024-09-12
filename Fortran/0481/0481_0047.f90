  use, intrinsic :: ieee_arithmetic
  n=ieee_selected_real_kind(6,30,radix=-2)
  if (n /=-5) print *,101,n
  print *,'pass'
  end

