call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
call sub6()
call sub7()
call sub8()
call sub9()
print *,"pass"
end
function ext()
ext=1
end

module m9
contains
  function f1(xxx,yyy) result(ff)
    integer,intent(in) :: xxx(:),yyy(:)
    integer ff(size(xxx),size(yyy),size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(2,2,i)=i
    enddo
  end function
end
subroutine sub9()
use m9
integer,allocatable:: x(:),k(:)
integer y(2,10,2),a(2)
allocate(x(2),k(10))
x=1
k=1
y=f1(x,k)
if (y(2,2,1).ne.1) write(6,*) "NG"
if (y(2,2,2).ne.2) write(6,*) "NG" ;y=0
end

module m8
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size(xxx),10,size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(2,2,i)=i
    enddo
  end function
end
subroutine sub8()
use m8
integer,allocatable:: x(:)
integer y(2,10,2),a(2)
allocate(x(2))
x=1
y=f1(x)
if (y(2,2,1).ne.1) write(6,*) "NG"
if (y(2,2,2).ne.2) write(6,*) "NG" ;y=0
end

module m1
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(10,size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(2,i)=i
    enddo
  end function
end
subroutine sub1()
use m1
integer,allocatable:: x(:)
integer y(10,2),a(2)
allocate(x(2))
x=1
y=f1(x)
if (y(2,1).ne.1) write(6,*) "NG"
if (y(2,2).ne.2) write(6,*) "NG" ;y=0
end

module m2
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(2,10,size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(2,2,i)=i
    enddo
  end function
end
subroutine sub2()
use m2
integer,allocatable:: x(:)
integer y(2,10,2),a(2)
allocate(x(2))
x=1
y=f1(x)
if (y(2,2,1).ne.1) write(6,*) "NG"
if (y(2,2,2).ne.2) write(6,*) "NG" ;y=0
end

module m3
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(2,2,10,size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(2,2,2,i)=i
    enddo
  end function
end
subroutine sub3()
use m3
integer,allocatable:: x(:)
integer y(2,2,10,2),a(2)
allocate(x(2))
x=1
y=f1(x)
if (y(2,2,2,1).ne.1) write(6,*) "NG"
if (y(2,2,2,2).ne.2) write(6,*) "NG" ;y=0
end

module m4
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(2,2,2,10,size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(2,2,2,2,i)=i
    enddo
  end function
end
subroutine sub4()
use m4
integer,allocatable:: x(:)
integer y(2,2,2,10,2),a(2)
allocate(x(2))
x=1
y=f1(x)
if (y(2,2,2,2,1).ne.1) write(6,*) "NG"
if (y(2,2,2,2,2).ne.2) write(6,*) "NG" ;y=0
end

module m5
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(2,2,2,2,10,size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(2,2,2,2,2,i)=i
    enddo
  end function
end
subroutine sub5()
use m5
integer,allocatable:: x(:)
integer y(2,2,2,2,10,2),a(2)
allocate(x(2))
x=1
y=f1(x)
if (y(2,2,2,2,2,1).ne.1) write(6,*) "NG"
if (y(2,2,2,2,2,2).ne.2) write(6,*) "NG" ;y=0
end

module m6
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(1,2,2,2,2,10,size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(1,2,2,2,2,2,i)=i
    enddo
  end function
end
subroutine sub6()
use m6
integer,allocatable:: x(:)
integer y(1,2,2,2,2,10,2),a(2)
allocate(x(2))
x=1
y=f1(x)
if (y(1,2,2,2,2,2,1).ne.1) write(6,*) "NG"
if (y(1,2,2,2,2,2,2).ne.2) write(6,*) "NG" ;y=0
end

module m7
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(1,1,2,2,2,2,10,size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(1,1,2,2,2,2,2,i)=i
    enddo
  end function
end
subroutine sub7()
use m7
integer,allocatable:: x(:)
integer y(1,1,2,2,2,2,10,2),a(2)
allocate(x(2))
x=1
y=f1(x)
if (y(1,1,2,2,2,2,2,1).ne.1) write(6,*) "NG"
if (y(1,1,2,2,2,2,2,2).ne.2) write(6,*) "NG" ;y=0
end

