  call sub1(0)
  call sub2(1)
  print *,'pass'
  end
  subroutine sub(i)
  integer m,n
  equivalence (m,n)
  save    n
  integer ::mm,nn=2
  equivalence (mm,nn)
  entry sub1(i)
  entry sub2(i)
  if(i.eq.0)then
     n=1
     m=1
     mm=2;nn=2
  else
     write(59,'(z8)') n
     write(59,'(z8)') m
     if (n/=1) write(6,*) "NG"
     if (m/=1) write(6,*) "NG"
     if (nn/=2) write(6,*) "NG"
     if (mm/=2) write(6,*) "NG"
  endif
  end subroutine
