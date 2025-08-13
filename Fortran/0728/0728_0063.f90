  open(unit=2,file="work01.dat")
  call s1
  print *,'pass'
  end
  subroutine sub(a,k)
  integer a(:),x(20),y(20),z(20)
  do i=lbound(a,k),ubound(a,k),lbound(a,k)
    a(i)=1
  enddo
    x1=0;x2=0;x3=0;x4=0;x5=0
  if (lbound(a,k)==1.or.lbound(a,k)==2.or.lbound(a,k)==2) x1=1.0
  if (lbound(a,k)==2.or.lbound(a,k)==2.or.lbound(a,k)==1) x2=1.0
  if (lbound(a,k)==1.and.lbound(a,k)/=2.and.lbound(a,k)/=2) x3=1.0
  if (lbound(a,k)==2.and.lbound(a,k)/=2.and.lbound(a,k)/=2) x4=1.0
  if (ubound(a,k)==1) x5=1.0
  write(2,*,err=1)ubound(a,k),lbound(a,k)
  write(2,*)ubound(a,k),lbound(a,k)
  write(ubound(a,k),*,err=1)ubound(a,k),lbound(a,k)
  rewind ubound(a,k)
  read (ubound(a,k),*,end=1,err=1)x(lbound(a,k)),y(lbound(a,k)+1),(z(i),i=lbound(a,k),2),(z(i),i=lbound(a,k)+2,lbound(a,k)+3,lbound(a,k))
  if (x(lbound(a,k))/=2)write(6,*) "NG"
  if (y(lbound(a,k)+lbound(a,k))/=1)write(6,*) "NG"
  if (z(lbound(a,k))/=2)write(6,*) "NG"
  if (1/=z(1+lbound(a,k)))write(6,*) "NG"
  if (z(2+lbound(a,k))/=2)write(6,*) "NG"
  if (1/=z(3+lbound(a,k)))write(6,*) "NG"
  if (x(1)/=2)write(6,*) "NG"
  if (y(2)/=1)write(6,*) "NG"
  if (z(1)/=2)write(6,*) "NG"
  if (z(2)/=1)write(6,*) "NG"
  if (z(3)/=2)write(6,*) "NG"
  if (z(4)/=1)write(6,*) "NG"
  if (x1/=1.0)write(6,*) "NG"
  if (x2/=1.0)write(6,*) "NG"
  if (x3/=1.0)write(6,*) "NG"
  if (x4==1.0)write(6,*) "NG"
  if (x5==1.0)write(6,*) "NG"

  rewind    ubound(a,k)
  read(ubound(a,k),*,end=1,err=1)x(1:4)
  read (ubound(a,k),*,end=2,err=1)x(lbound(a,k)),y(lbound(a,k)+1),(z(i),i=lbound(a,k),2),(z(i),i=lbound(a,k)+2,lbound(a,k)+3,lbound(a,k))
 write(6,*) "NG"
 2 continue
   return
  1 write(6,*) "NG"
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
  rewind 2
  end do
  end
