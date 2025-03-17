module m1
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
  pure function f2(i1,xxx)
    integer,intent(in) :: xxx(:),i1(:)
    integer f2(size(xxx))
    do i=1,size(xxx)
    f2(i)=i+1
    enddo
  end function
  pure function f3(xxx,i2)
    integer,intent(in) :: xxx(:),i2(:)
    integer f3(size(xxx))
    do i=1,size(xxx)
    f3(i)=i+2
    enddo
  end function
  pure function f4(i1,xxx,i2)
    integer,intent(in) :: xxx(:),i1(:),i2(:)
    integer f4(size(xxx))
    do i=1,size(xxx)
    f4(i)=i+3
    enddo
  end function
end

  pure function ff1(xxx)
    integer,intent(in) :: xxx(:)
    integer ff1(size(xxx))
    do i=1,size(xxx)
    ff1(i)=i
    enddo
  end function
  pure function ff2(i1,xxx)
    integer,intent(in) :: xxx(:),i1(:)
    integer ff2(size(xxx))
    do i=1,size(xxx)
    ff2(i)=i+1
    enddo
  end function
  pure function ff3(xxx,i2)
    integer,intent(in) :: xxx(:),i2(:)
    integer ff3(size(xxx))
    do i=1,size(xxx)
    ff3(i)=i+2
    enddo
  end function
  pure function ff4(i1,xxx,i2)
    integer,intent(in) :: xxx(:),i1(:),i2(:)
    integer ff4(size(xxx))
    do i=1,size(xxx)
    ff4(i)=i+3
    enddo
  end function

use m1
interface
  pure function ff1(xxx)
    integer,intent(in) :: xxx(:)
    integer ff1(size(xxx))
  end function
  pure function ff2(i1,xxx)
    integer,intent(in) :: xxx(:),i1(:)
    integer ff2(size(xxx))
  end function
  pure function ff3(xxx,i2)
    integer,intent(in) :: xxx(:),i2(:)
    integer ff3(size(xxx))
  end function
  pure function ff4(i1,xxx,i2)
    integer,intent(in) :: xxx(:),i1(:),i2(:)
    integer ff4(size(xxx))
  end function
end interface

integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
y=f1(x)
if (any(y.ne.(/1,2/))) print *,"err"
y=f2(x,(x))
if (any(y.ne.(/2,3/))) print *,"err"
y=f3(x,x)
if (any(y.ne.(/3,4/))) print *,"err"
y=f4(x,x,x)
if (any(y.ne.(/1,2/)+3)) print *,"err"
y=ff1(x)
if (any(y.ne.(/1,2/))) print *,"err"
y=ff2(x,(x))
if (any(y.ne.(/2,3/))) print *,"err"
y=ff3(x,x)
if (any(y.ne.(/3,4/))) print *,"err"
y=ff4(x,x,x)
if (any(y.ne.(/1,2/)+3)) print *,"err"
y=fff1(x)
if (any(y.ne.(/1,2/))) print *,"err"
y=fff2(x,(x))
if (any(y.ne.(/2,3/))) print *,"err"
y=fff3(x,x)
if (any(y.ne.(/3,4/))) print *,"err"
y=fff4(x,x,x)
if (any(y.ne.(/1,2/)+3)) print *,"err"
print *,"pass"
contains
  pure function fff1(xxx)
    integer,intent(in) :: xxx(:)
    integer fff1(size(xxx))
    do i=1,size(xxx)
    fff1(i)=i
    enddo
  end function
  pure function fff2(i1,xxx)
    integer,intent(in) :: xxx(:),i1(:)
    integer fff2(size(xxx))
    do i=1,size(xxx)
    fff2(i)=i+1
    enddo
  end function
  pure function fff3(xxx,i2)
    integer,intent(in) :: xxx(:),i2(:)
    integer fff3(size(xxx))
    do i=1,size(xxx)
    fff3(i)=i+2
    enddo
  end function
  function fff4(i1,xxx,i2)
    integer,intent(in) :: xxx(:),i1(:),i2(:)
    integer fff4(size(xxx)) ,y(2)
    do i=1,size(xxx)
    fff4(i)=i+3
    enddo
y=fff1(x)
if (any(y.ne.(/1,2/))) print *,"err"
y=fff2(x,(x))
if (any(y.ne.(/2,3/))) print *,"err"
y=fff3(x,x)
if (any(y.ne.(/3,4/))) print *,"err"
  end function
end
