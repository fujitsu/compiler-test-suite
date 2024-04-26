subroutine sub (i)
  integer i,j
  i = i + 10
  entry subsub (i)
  do j=1,10
     i = i + 1
  enddo
  entry subsubsub (i)
  i = i + 5
end subroutine sub

program main
  integer i
  integer aa, bb, cc
  aa = 0
  bb = 0
  cc = 0
  do i=1,200000
     call sub (aa)
  enddo
  if (aa.ne.5000000) then 
     print *,"NG1"
  endif

  do i=1,500000
     call subsub (bb)
  enddo
  if (bb.ne.7500000) then 
     print *,"NG2"
  endif

  do i=1,2000000
     call subsubsub (cc)
  end do
  if (cc.ne.10000000) then 
     print *,"NG3"
  endif

  print *,"OK"
end program main
