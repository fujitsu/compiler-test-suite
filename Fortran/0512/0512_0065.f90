module m1
contains
  function f1(xxx,yyy) result(ff)
    integer,intent(in) :: xxx(:),yyy(10:,2:)
    integer ff(size(xxx),size(yyy),size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(2,2,i)=i
    enddo
  end function
end
subroutine sub1()
use m1
integer,allocatable:: x(:),k(:,:)
integer y(2,10,2),a(2)
allocate(x(2),k(10,1))
x=1
k=1
y=f1(x,k)
if (y(2,2,1).ne.1) print *,'fail'
if (y(2,2,2).ne.2) print *,'fail' ;y=0
end

module m2
integer ,parameter :: i1=1
integer ,parameter :: i2=2
integer ,parameter :: i10=10
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(i1:)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
  function f2(xxx) result(ff)
    integer,intent(in) :: xxx(i10:)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
  function f3(xxx) result(ff)
    integer,intent(in) :: xxx(int(i1):)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
  function f4(xxx) result(ff)
    integer,intent(in) :: xxx(i2)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
  function f5(xxx) result(ff)
    integer,intent(in) :: xxx(+i1:)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
  function f6(xxx) result(ff)
    integer,intent(in) :: xxx((i1):)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
  function f7(xxx) result(ff)
    integer,intent(in) :: xxx(+i2)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
  function f8(xxx) result(ff)
    integer,intent(in) :: xxx(i2-i1:)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
  function f9(xxx) result(ff)
    integer,intent(in) :: xxx(i1+1)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub2()
use m2
integer,allocatable:: x(:)
integer y(2),a(2)
procedure(f1),pointer::pf1
procedure(f2),pointer::pf2 
procedure(f3),pointer::pf3
procedure(f4),pointer::pf4
procedure(f5),pointer::pf5
procedure(f6),pointer::pf6
procedure(f7),pointer::pf7
procedure(f8),pointer::pf8
procedure(f9),pointer::pf9
allocate(x(2))
pf1=>f1
pf2=>f2
pf3=>f3
pf4=>f4
pf5=>f5
pf6=>f6
pf7=>f7
pf8=>f8
pf9=>f9
x=1
y=pf1(x)
if (y(1).ne.1) print *,'fail'
if (y(2).ne.2) print *,'fail' ;y=0
y=pf2(x)
if (y(1).ne.1) print *,'fail'
if (y(2).ne.2) print *,'fail' ;y=0
y=pf3(x)
if (y(1).ne.1) print *,'fail'
if (y(2).ne.2) print *,'fail' ;y=0
y=pf4(x)
if (y(1).ne.1) print *,'fail'
if (y(2).ne.2) print *,'fail' ;y=0
y=pf5(x)
if (y(1).ne.1) print *,'fail'
if (y(2).ne.2) print *,'fail' ;y=0
y=pf6(x)
if (y(1).ne.1) print *,'fail'
if (y(2).ne.2) print *,'fail' ;y=0
y=pf7(x)
if (y(1).ne.1) print *,'fail'
if (y(2).ne.2) print *,'fail' ;y=0
y=pf8(x)
if (y(1).ne.1) print *,'fail'
if (y(2).ne.2) print *,'fail' ;y=0
y=pf9(x)
if (y(1).ne.1) print *,'fail'
if (y(2).ne.2) print *,'fail' ;y=0
end

call sub1()
call sub2()
print *,"pass"
end
function ext()
ext=1
end
