  call s1
  print *,'pass'
  end
  subroutine sub(a,k)
  integer a(:)
  x1=0;x2=0;x3=0;x4=0;x5=0
  do while (lbound(a,lbound(a,k))==1.or.lbound(a,lbound(a,k))==2.or.lbound(a,lbound(a,k))==2) ;x1=1.0;exit;end do
  do while (lbound(a,lbound(a,k))==2.or.lbound(a,lbound(a,k))==2.or.lbound(a,lbound(a,k))==1) ;x2=1.0;exit;end do
  do while (lbound(a,lbound(a,k))==1.and.lbound(a,lbound(a,k))/=2.and.lbound(a,lbound(a,k))/=2); x3=1.0;;exit;end do
  do while (lbound(a,lbound(a,k))==2.and.lbound(a,lbound(a,k))/=2.and.lbound(a,lbound(a,k))/=2) ;x4=1.0;exit;end do
  do while (ubound(a,lbound(a,k))==1); x5=1.0;exit;end do
  if (x1/=1.0)write(6,*) "NG"
  if (x2/=1.0)write(6,*) "NG"
  if (x3/=1.0)write(6,*) "NG"
  if (x4==1.0)write(6,*) "NG"
  if (x5==1.0)write(6,*) "NG"
end subroutine
subroutine s1
  interface
  subroutine sub(a,k)
  integer a(:)
 end subroutine
  end interface
  integer a(2)/1,2/
  do i=1,1000
  call sub(a,1)
  end do
  end
