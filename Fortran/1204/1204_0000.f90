module m1
  type y
    integer::y1
  end type
  type,extends(y)::yy
    integer,allocatable::y4(:)
  end type
  type x
    integer::x1
    class(y),allocatable::x3(:)
  end type
  type (x)::var1(3),var2(3)
  integer(8)::p(100,3)
  integer::nn
  integer,parameter::mm=90000,mx=100
  contains
  subroutine s
    var2=var1
  end
  subroutine set(var,np)
    type(x)::var(:)
  do m=2,2
  k=0
  var(m)%x1=1
  if (allocated(var(m)%x3)) then
    deallocate(var(m)%x3)
  endif
  allocate(yy::var(m)%x3(3))
  do n=1,3
  select type(a1=>var(m)%x3)
    type is(yy)
      a1(n)%y1=11
      if (allocated(a1(n)%y4))then
        deallocate(a1(n)%y4)
      endif
      allocate(a1(n)%y4(np    ),source=np)
      if (np==mm)then
        p(nn,n)=loc(a1(n)%y4)
      endif
      k=k+1
  end select
  end do
if (k/=3) print *,1001
  end do
  end
end
subroutine tt
use m1
do nn=1,mx
call set(var1,1    )
call set(var2,mm)
call s
  do m=2,2
k=0
  var1(m)%x1=-1
  do n=1,3
  select type(a1=>var1(m)%x3)
    type is(yy)
      a1(n)%y1=-11
      k=k+1
  end select
  end do
if (k/=3) print *,1002
k=0
  if (var2(m)%x1/=1) print *,2001
  if (.not.allocated(var2(m)%x3)) print *,2003
  do n=1,3
  select type(a1=>var2(m)%x3)
    type is(yy)
      if (   (a1(n)%y1/=11)) print *,2004
      if (any(a1(n)%y4/=1)) print *,2005
      k=k+1
  end select
  end do
if (k/=3) print *,1003
  end do
end do
end
subroutine chk
use m1
integer(8)::base
pointer(base,ny4(mm))
k=0
do n1=1,mx
do n2=1,3
  base=p(n1,n2)
!print '(z16.16,x,i4,x,i4)',base,n1,n2
!print *,base,n1,n2
  if (ny4(1)/=mm) then
     k=1
  print *,n2,n1,ny4(1),ny4(mm)
  end if
end do
end do
if (k==0) print *,'confirm memery leak 7000'
end

 call tt
print *,'sngg724q : pass'
end
