interface
subroutine sub5(x)
integer :: x(:)
end subroutine
end interface
integer :: x(2)
x=1
call sub1()
call sub2()
call sub3()
call sub4(x)
call sub5(x)
print *,"pass"
end
function ext()
ext=1
end

module m1
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size(xxx))
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub1()
use m1 
external ext
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
x=1
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(x+1)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/x/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(1+x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(-x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(+x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/1,1/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/(i,i=1,2)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
k=2
y=f1((/(i,i=1,k)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/x(1),x(2)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(int(x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(iii(x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
contains
function iii(xxx) result(ifun)
integer :: xxx(:)
integer :: ifun(size(xxx))
ifun=xxx
end function
end


module m2
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size(xxx))
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub2()
use m2 
external ext
integer,pointer    :: x(:)
integer y(2),a(2)
allocate(x(2))
x=1
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(x+1)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/x/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(1+x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(-x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(+x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/1,1/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/(i,i=1,2)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
k=2
y=f1((/(i,i=1,k)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/x(1),x(2)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(int(x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(iii(x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
contains
function iii(xxx) result(ifun)
integer :: xxx(:)
integer :: ifun(size(xxx))
ifun=xxx
end function
end


module m3
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size(xxx))
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub3()
use m3
external ext
integer :: x(2)
integer y(2),a(2)
x=1
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(x+1)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/x/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(1+x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(-x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(+x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/1,1/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/(i,i=1,2)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
k=2
y=f1((/(i,i=1,k)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/x(1),x(2)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(int(x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(iii(x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
contains
function iii(xxx) result(ifun)
integer :: xxx(:)
integer :: ifun(size(xxx))
ifun=xxx
end function
end


module m4
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size(xxx))
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub4(x)
use m4
external ext
integer :: x(2)
integer y(2),a(2)
x=1
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(x+1)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/x/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(1+x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(-x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(+x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/1,1/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/(i,i=1,2)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
k=2
y=f1((/(i,i=1,k)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/x(1),x(2)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(int(x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(iii(x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
contains
function iii(xxx) result(ifun)
integer :: xxx(:)
integer :: ifun(size(xxx))
ifun=xxx
end function
end


module m5
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size(xxx))
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub5(x)
use m5
external ext
integer :: x(:)
integer y(2),a(2)
x=1
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(x+1)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/x/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(1+x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(-x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(+x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/1,1/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/(i,i=1,2)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
k=2
y=f1((/(i,i=1,k)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1((/x(1),x(2)/))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(int(x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f1(iii(x))
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
contains
function iii(xxx) result(ifun)
integer :: xxx(:)
integer :: ifun(size(xxx))
ifun=xxx
end function
end


