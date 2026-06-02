 call s1
 print *,'pass'
 end
 module m234567890123456789012345678901
 implicit none
 integer,parameter::p=1
 integer,parameter::p1=1,p2=2,p3=3,p4=4,p5=5
 logical(1)::t=.true.,f=.false.
 type dd
  logical   (p)::a1,a2(4)
 end type
 type(dd),pointer:: x1(:),x2(:)
 type(dd)        :: y1(5),y2(5)
 logical   (p),pointer::k1(:),k2(:)
 integer::i,j,ii,jj
   interface sx
     module procedure hh1,hh2
   end interface
   interface sy
     module procedure hh3,hh4
   end interface
 contains
 subroutine hh1(a)
 implicit none
  type(dd)::a(:)
  if (size(a)/=5)print *,'fail'
  do i=1,size(a)
    if (a(i)%a1.neqv.t)print *,'fail'
    if (any(a(i)%a2.neqv.(/f,t,f,t/)))print *,'fail'
    do j=1,size(a(i)%a2)
      if (a(i)%a2(j).neqv.merge(t,f,mod(j,2)==0))print *,'fail'
    end do
    if (a(i)%a2(1).neqv.f)print *,'fail'
    if (a(i)%a2(2).neqv.t)print *,'fail'
    if (a(i)%a2(3).neqv.f)print *,'fail'
    if (a(i)%a2(4).neqv.t)print *,'fail'
  end do
 end subroutine
 subroutine hh2(a)
 implicit none
  logical   (p)::a(:)
  if (size(a)/=5)print *,'fail'
  do i=1,size(a)
    if (any(a.neqv.(/t,f,t,f,t/)))print *,'fail'
    do j=1,size(a)
      if (a(j).neqv.merge(t,f,mod(j,2)==1))print *,'fail'
    end do
    if (a(1).neqv.t)print *,'fail'
    if (a(2).neqv.f)print *,'fail'
    if (a(3).neqv.t)print *,'fail'
    if (a(4).neqv.f)print *,'fail'
    if (a(5).neqv.t)print *,'fail'
  end do
 end subroutine
 subroutine hh3(a)
 implicit none
  type(dd)::a(5)
  if (size(a)/=5)print *,'fail'
  do i=1,size(a)
    if (any(a(i)%a2.neqv.(/f,t,f,t/)))print *,'fail'
    do j=1,size(a(i)%a2)
      if (a(i)%a2(j).neqv.merge(t,f,mod(j,2)==0))print *,'fail'
    end do
    if (a(i)%a1.neqv.t)print *,'fail'
    if (a(i)%a2(1).neqv.f)print *,'fail'
    if (a(i)%a2(2).neqv.t)print *,'fail'
    if (a(i)%a2(3).neqv.f)print *,'fail'
    if (a(i)%a2(4).neqv.t)print *,'fail'
  end do
 end subroutine
 subroutine hh4(a)
 implicit none
  logical   (p)::a(5)
  if (size(a)/=5)print *,'fail'
  do i=1,size(a)
      if (a(j).neqv.merge(t,f,mod(j,2)==1))print *,'fail'
  end do
    if (a(1).neqv.t)print *,'fail'
    if (a(2).neqv.f)print *,'fail'
    if (a(3).neqv.t)print *,'fail'
    if (a(4).neqv.f)print *,'fail'
    if (a(5).neqv.t)print *,'fail'
 end subroutine
 end module
 module n234567890123456789012345678901; use    m234567890123456789012345678901 ;end
 module k234567890123456789012345678901; use    n234567890123456789012345678901 ;end
 subroutine s1
 use    k234567890123456789012345678901
 implicit none
 ii=1;jj=5
 allocate(x1(5),x2(5),k1(5),k2(5))
 x1=dd(t,(/f,t,f,t/));y1=x1;k1=(/t,f,t,f,t/)
 x2=x1
 y2=y1
 k2=k1
 call sx(x1)
 call sx(x2)
 call sx(y1)
 call sx(y2)
 call sx(k1)
 call sx(k2)
 call sy(x1)
 call sy(x2)
 call sy(y1)
 call sy(y2)
 call sy(k1)
 call sy(k2)
 call sx(x1(1:jj:ii))
 call sx(x2(1:jj:ii))
 call sx(y1(1:jj:ii))
 call sx(y2(1:jj:ii))
 call sx(k1(1:jj:ii))
 call sx(k2(1:jj:ii))
 call sy(x1(1:jj:ii))
 call sy(x2(1:jj:ii))
 call sy(y1(1:jj:ii))
 call sy(y2(1:jj:ii))
 call sy(k1(1:jj:ii))
 call sy(k2(1:jj:ii))
 end
