program main
  implicit none
  intrinsic sin
  real  rr
  rr = 0
  rr = sin(rr)
  block 
    intrinsic sin
    rr = sin(rr) + 3
    if (rr .ne. 3 ) print *, "NG1", rr
  end block
  rr = rr + 1
  if (rr .ne. 4 ) print *, "NG2", rr
  print *, "PASS"
end 
