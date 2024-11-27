
  use, intrinsic :: ieee_arithmetic
  real(4)::r,rr(1)
       
  !$omp task default(none)
  !$omp task
      if(IEEE_SUPPORT_FLAG(IEEE_INVALID,r).neqv..true.) print *,"err"
  !$omp end task
  !$omp end task
  end program
