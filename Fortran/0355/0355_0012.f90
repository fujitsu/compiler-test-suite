subroutine sub (i)
  integer i
  i = i + 10
  entry subsub (i)
  i = i * 2
  entry subsubsub (i)
  i = i + 5
end subroutine sub

program main
  integer aa, bb, cc
  aa = 1
  bb = 1
  cc = 1
  call sub (aa)
  if (aa.ne.27) print *,"NG1"
  call subsub (bb)
  if (bb.ne.7) print *,"NG2"
  call subsubsub (cc)
  if (cc.ne.6) print *,"NG3"
  print *,"OK"
end program main
