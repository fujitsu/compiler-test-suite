call sub1()
call sub2()
print *,"pass"
end
function ext()
ext=1
end

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
if (y(2,2,1).ne.1) write(6,*) "NG"
if (y(2,2,2).ne.2) write(6,*) "NG" ;y=0
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
allocate(x(2))
x=1
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f3(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f4(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f5(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f6(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f7(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f8(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f9(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end

