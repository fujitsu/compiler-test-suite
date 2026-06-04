program main
  implicit none
  real  sin
  sin = 1
  block 
    intrinsic sin
    real :: rr = 0
    rr = sin(rr) + 3
    if (rr .ne. 3 ) print *, "NG1", rr
  end block
  sin = sin + 1
  if (sin .ne. 2 ) print *, "NG2", sin
  print *, "PASS"
end 
