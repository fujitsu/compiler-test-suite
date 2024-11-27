  call sub1(0)
  call sub2(1)
  end
  subroutine sub(i)
  integer m,n
  equivalence (m,n)
  data n/1/
  entry sub1(i)
  entry sub2(i)
  if(i.eq.0)then
     n=1
     m=1
  else
     write(6,'(z8)') n
     write(6,'(z8)') m
  endif
  end subroutine
