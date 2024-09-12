  call sss(5)
  print *,'pass'
  contains
  subroutine sss(k)
  use, intrinsic :: ieee_arithmetic
  integer,optional::k
  n=ieee_selected_real_kind(1,radix=k)
  if (n /=-5) print *,101,n
  end subroutine
  end

