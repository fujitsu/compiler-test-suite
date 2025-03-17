module m1
interface
  pure function f2(xxx)
    integer,intent(in) :: xxx(:)
    integer f2(size(xxx))
  end function
end interface
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end

  pure function f2(xxx)
    integer,intent(in) :: xxx(:)
    integer f2(size(xxx))
    do i=1,size(xxx)
    f2(i)=i+1
    enddo
  end function

  pure function f3(xxx)
    integer,intent(in) :: xxx(:)
    integer f3(size(xxx))
    do i=1,size(xxx)
    f3(i)=i+2
    enddo
  end function

use m1 
interface
  pure function f3(xxx)
    integer,intent(in) :: xxx(:)
    integer f3(size(xxx))
  end function
 recursive function ifun(yyy) result(res)
    integer:: yyy(:)
    integer res(size(yyy))
  end function
end interface

integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
y=f1(x)
if (any(y.ne.(/1,2/))) print *,"err"
y=f2(x)
if (any(y.ne.(/2,3/))) print *,"err"
y=f3(x)
if (any(y.ne.(/3,4/))) print *,"err"
y=f4(x)
if (any(y.ne.(/1,2/)+3)) print *,"err"
call sub()
x=1
y=f5(x)
if (any(y.ne.(/1,2/)+4)) print *,"err"
y=ifun(x)
print *,"pass"
contains
  pure function f4(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size(xxx))
    do i=1,size(xxx)
    ff(i)=i+3
    enddo
  end function
  subroutine sub()
  y=f4(x)
  if (any(y.ne.(/1,2/)+3)) print *,"err"
  end subroutine
  recursive  function f5(xxx) result(ff)
    integer :: xxx(:)
    integer ff(size(xxx))
    integer yy(2)
    if (x(1).eq.1) then   
      x=2
      ff= f5(xxx) 
    else 
      do i=1,size(xxx)
      ff(i)=i+4
      enddo
      end if
  end function
end

recursive function ifun(yyy) result(res)
use m1 
interface
  pure function f3(xxx)
    integer,intent(in) :: xxx(:)
    integer f3(size(xxx))
  end function
end interface

integer:: yyy(:)
integer res(size(yyy))
integer,allocatable:: x(:)
integer y(2),a(2)
      do i=1,size(yyy)
      res(i)=i+4
      enddo
allocate(x(2))
y=f1(x)
if (any(y.ne.(/1,2/))) print *,"err"
y=f2(x)
if (any(y.ne.(/2,3/))) print *,"err"
y=f3(x)
if (any(y.ne.(/3,4/))) print *,"err"
y=f4(x)
if (any(y.ne.(/1,2/)+3)) print *,"err"
call sub()
x=1
y=f5(x)
if (any(y.ne.(/1,2/)+4)) print *,"err"
call sub()
contains
  pure function f4(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size(xxx))
    integer i
    do i=1,size(xxx)
    ff(i)=i+3
    enddo
  end function
  subroutine sub()
  y=f4(x)
  if (any(y.ne.(/1,2/)+3)) print *,"err"
  end subroutine
  recursive  function f5(xxx) result(ff)
    integer :: xxx(:)
    integer ff(size(xxx))
    integer yy(2)
    if (x(1).eq.1) then   
      x=2
      ff= f5(xxx) 
    else 
      do i=1,size(xxx)
      ff(i)=i+4
      enddo
      end if
  end function
end
