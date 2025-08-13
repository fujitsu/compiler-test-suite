  call sub1(0)
  call sub2(1)
  print *,'pass'
  end
  subroutine sub(i)
  integer m,n
  equivalence (m1,m2,m3,m,n,n1,n2)
  save    n
  integer ::mm,nn=2
  equivalence (mm4,mm5,mm,nn,mm1,mm2,mm3)
  equivalence (mm2,mm6,mm7,mm8,mm9)
  entry sub1(i)
  entry sub2(i)
  if(i.eq.0)then
     n=1; m=1
     mm=2;nn=2
     m1=1;m2=1;m3=1;n1=1;n2=1
     mm1=2;mm3=2;mm4=2;mm5=2;mm6=2;mm7=2;mm8=2;mm9=2
  else
     write(60,'(z8)') n
     write(60,'(z8)') m
     if (n/=1) write(6,*) "NG"
     if (n1/=1) write(6,*) "NG"
     if (n2/=1) write(6,*) "NG"
     if (m/=1) write(6,*) "NG"
     if (m1/=1) write(6,*) "NG"
     if (m2/=1) write(6,*) "NG"
     if (m3/=1) write(6,*) "NG"
     if (nn/=2) write(6,*) "NG"
     if (mm/=2) write(6,*) "NG"
     if (mm1/=2) write(6,*) "NG"
     if (mm2/=2) write(6,*) "NG"
     if (mm3/=2) write(6,*) "NG"
     if (mm4/=2) write(6,*) "NG"
     if (mm5/=2) write(6,*) "NG"
     if (mm6/=2) write(6,*) "NG"
     if (mm7/=2) write(6,*) "NG"
     if (mm8/=2) write(6,*) "NG"
     if (mm9/=2) write(6,*) "NG"
  endif
  end subroutine
